import 'package:lunch_concierge_server/iap_jwt.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';

void main() {
  group('iapJwtMiddleware', () {
    test('skips verification when audience is null', () async {
      final handler = const Pipeline()
          .addMiddleware(iapJwtMiddleware(audience: null))
          .addHandler((_) => Response.ok('ok'));

      final response = await handler(
        Request('POST', Uri.parse('http://localhost/api/lunch')),
      );
      expect(response.statusCode, 200);
      expect(await response.readAsString(), 'ok');
    });

    test('skips verification when audience is empty', () async {
      final handler = const Pipeline()
          .addMiddleware(iapJwtMiddleware(audience: '  '))
          .addHandler((_) => Response.ok('ok'));

      final response = await handler(
        Request('POST', Uri.parse('http://localhost/api/lunch')),
      );
      expect(response.statusCode, 200);
    });

    test('allows non-API paths without a JWT when audience is set', () async {
      final handler = const Pipeline()
          .addMiddleware(
            iapJwtMiddleware(audience: 'client-id.apps.googleusercontent.com'),
          )
          .addHandler((_) => Response.ok('ok'));

      final response = await handler(
        Request('GET', Uri.parse('http://localhost/health')),
      );
      expect(response.statusCode, 200);
    });

    test('rejects API requests missing the JWT when audience is set', () async {
      final handler = const Pipeline()
          .addMiddleware(
            iapJwtMiddleware(audience: 'client-id.apps.googleusercontent.com'),
          )
          .addHandler((_) => Response.ok('ok'));

      final response = await handler(
        Request('POST', Uri.parse('http://localhost/api/lunch')),
      );
      expect(response.statusCode, 401);
      expect(await response.readAsString(), contains('Missing IAP JWT'));
    });

    test(
      'rejects API requests with a broken JWT when audience is set',
      () async {
        var called = false;
        final handler = Pipeline()
            .addMiddleware(
              iapJwtMiddleware(
                audience: 'client-id.apps.googleusercontent.com',
                verifier: (token, audience) async {
                  called = true;
                  throw FormatException('bad token');
                },
              ),
            )
            .addHandler((_) => Response.ok('ok'));

        final response = await handler(
          Request(
            'POST',
            Uri.parse('http://localhost/api/lunch'),
            headers: {iapJwtAssertionHeader: 'not.a.jwt'},
          ),
        );
        expect(called, isTrue);
        expect(response.statusCode, 401);
        expect(await response.readAsString(), contains('Invalid IAP JWT'));
      },
    );

    test('forwards API requests when the injected verifier accepts', () async {
      final handler = Pipeline()
          .addMiddleware(
            iapJwtMiddleware(
              audience: 'client-id.apps.googleusercontent.com',
              verifier: (token, audience) async {
                expect(token, 'good.token');
                expect(audience, 'client-id.apps.googleusercontent.com');
              },
            ),
          )
          .addHandler((_) => Response.ok('ok'));

      final response = await handler(
        Request(
          'POST',
          Uri.parse('http://localhost/api/lunch'),
          headers: {iapJwtAssertionHeader: 'good.token'},
        ),
      );
      expect(response.statusCode, 200);
    });
  });
}
