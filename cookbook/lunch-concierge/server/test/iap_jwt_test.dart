import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto_keys/crypto_keys.dart';
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

  group('verifyIapJwt', () {
    const audience = '/projects/123/global/backendServices/456';
    final trusted = KeyPair.generateEc(curves.p256);
    final attacker = KeyPair.generateEc(curves.p256);
    final jwkSet = {
      'keys': [
        {..._publicJwk(trusted), 'kid': 'trusted', 'alg': 'ES256'},
      ],
    };
    Future<Map<String, dynamic>> fetchJwkSet() async => jwkSet;

    Map<String, dynamic> validClaims() => {
      'iss': iapJwtIssuer,
      'aud': audience,
      'exp':
          DateTime.now()
              .add(const Duration(minutes: 5))
              .millisecondsSinceEpoch ~/
          1000,
    };

    test('accepts an ES256 JWT signed by a trusted key', () async {
      final token = _signJwt(trusted, {
        'alg': 'ES256',
        'kid': 'trusted',
      }, validClaims());

      await verifyIapJwt(token, audience, jwkSetFetcher: fetchJwkSet);
    });

    test(
      'rejects an attacker key embedded as the header jwk (GHSA-vm9r-h74p-hg97)',
      () async {
        final token = _signJwt(attacker, {
          'alg': 'ES256',
          'kid': 'trusted',
          'jwk': _publicJwk(attacker),
        }, validClaims());

        await expectLater(
          verifyIapJwt(token, audience, jwkSetFetcher: fetchJwkSet),
          throwsFormatException,
        );
      },
    );

    test('rejects an expired token', () async {
      final claims = validClaims()
        ..['exp'] =
            DateTime.now()
                .subtract(const Duration(minutes: 1))
                .millisecondsSinceEpoch ~/
            1000;
      final token = _signJwt(trusted, {'alg': 'ES256'}, claims);

      await expectLater(
        verifyIapJwt(token, audience, jwkSetFetcher: fetchJwkSet),
        throwsFormatException,
      );
    });

    test('rejects a token from another issuer', () async {
      final claims = validClaims()..['iss'] = 'https://accounts.google.com';
      final token = _signJwt(trusted, {'alg': 'ES256'}, claims);

      await expectLater(
        verifyIapJwt(token, audience, jwkSetFetcher: fetchJwkSet),
        throwsFormatException,
      );
    });

    test('rejects a token for another audience', () async {
      final claims = validClaims()..['aud'] = ['/projects/999/apps/other'];
      final token = _signJwt(trusted, {'alg': 'ES256'}, claims);

      await expectLater(
        verifyIapJwt(token, audience, jwkSetFetcher: fetchJwkSet),
        throwsFormatException,
      );
    });
  });
}

Map<String, dynamic> _publicJwk(KeyPair keyPair) {
  final key = keyPair.publicKey! as EcPublicKey;
  return {
    'kty': 'EC',
    'crv': 'P-256',
    'x': _base64UrlInt(key.xCoordinate),
    'y': _base64UrlInt(key.yCoordinate),
  };
}

String _base64UrlInt(BigInt value) {
  final bytes = Uint8List(32);
  for (var i = 31; i >= 0; i--) {
    bytes[i] = (value & BigInt.from(0xff)).toInt();
    value >>= 8;
  }
  return _base64Url(bytes);
}

String _signJwt(
  KeyPair keyPair,
  Map<String, dynamic> header,
  Map<String, dynamic> claims,
) {
  final signingInput =
      '${_base64Url(utf8.encode(jsonEncode(header)))}.'
      '${_base64Url(utf8.encode(jsonEncode(claims)))}';
  final signature = keyPair
      .createSigner(algorithms.signing.ecdsa.sha256)
      .sign(utf8.encode(signingInput));
  return '$signingInput.${_base64Url(signature.data)}';
}

String _base64Url(List<int> bytes) =>
    base64Url.encode(bytes).replaceAll('=', '');
