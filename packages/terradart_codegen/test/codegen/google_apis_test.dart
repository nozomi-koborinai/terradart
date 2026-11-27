import 'package:terradart_codegen/src/codegen/google_apis.dart';
import 'package:terradart_codegen/src/codegen/package_formatter.dart';
import 'package:terradart_codegen/src/codegen/universal_invariants/enum_extractor.dart';
import 'package:test/test.dart';

const _ledger = '''
# Longest matching prefix wins.
apis:
  google_redis_: redis.googleapis.com
  google_compute_: compute.googleapis.com
  google_compute_thing: null
  google_cloud_run_: run.googleapis.com
  google_cloud_run_v2_: run.googleapis.com
''';

void main() {
  group('parseRequiredApis', () {
    test('keeps the rules in ledger order and sorts the distinct APIs', () {
      final ledger = parseRequiredApis(_ledger);
      expect(ledger.rules, {
        'google_redis_': 'redis.googleapis.com',
        'google_compute_': 'compute.googleapis.com',
        'google_compute_thing': null,
        'google_cloud_run_': 'run.googleapis.com',
        'google_cloud_run_v2_': 'run.googleapis.com',
      });
      expect(ledger.rules.keys.first, 'google_redis_');
      expect(ledger.apis, [
        (dartName: 'compute', service: 'compute.googleapis.com'),
        (dartName: 'redis', service: 'redis.googleapis.com'),
        (dartName: 'run', service: 'run.googleapis.com'),
      ]);
    });

    for (final (bad, why) in [
      ('google_x_: compute.example.com', 'not a Google API'),
      ('google_x_: .googleapis.com', 'not a Google API'),
      ('google_x_: Compute.googleapis.com', 'not a Google API'),
      ('google_x_: 1', 'not a Google API'),
      ('aws_x_: compute.googleapis.com', 'not a google_ type prefix'),
      ('google_X_: compute.googleapis.com', 'not a google_ type prefix'),
    ]) {
      test('rejects "$bad"', () {
        expect(
          () => parseRequiredApis('apis:\n  $bad\n'),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              contains(why),
            ),
          ),
        );
      });
    }

    test('rejects a ledger without apis or with another key', () {
      for (final bad in ['[]', 'rules: {}', 'apis: []', 'apis: {}\nextra: 1']) {
        expect(
          () => parseRequiredApis(bad),
          throwsFormatException,
          reason: bad,
        );
      }
    });
  });

  group('googleApiMemberNames', () {
    test('names a constant like an enum member of its label', () {
      expect(
        googleApiMemberNames([
          'compute.googleapis.com',
          'cloud-billing.googleapis.com',
          'eu.foo.googleapis.com',
          '3p.googleapis.com',
          'values.googleapis.com',
          'custom.googleapis.com',
        ]),
        ['compute', 'cloudBilling', 'euFoo', 'v3p', 'valuesCase', 'customCase'],
      );
    });

    test('fails when two services name one constant', () {
      expect(
        () => googleApiMemberNames([
          'custom.googleapis.com',
          'custom-case.googleapis.com',
        ]),
        throwsFormatException,
      );
    });
  });

  group('googleApiSource', () {
    final source = packageFormatter(
      '../terradart_google',
    ).format(googleApiSource(parseRequiredApis(_ledger)));

    test('is an enum the migration manifest reads', () {
      final enums = const EnumExtractor().extract(source);
      expect(enums.single.name, 'GoogleApi');
      expect(enums.single.members, {
        'compute': 'compute.googleapis.com',
        'redis': 'redis.googleapis.com',
        'run': 'run.googleapis.com',
      });
    });

    test('maps each prefix to its constant, in ledger order', () {
      expect(
        source,
        contains(
          "  'google_redis_': GoogleApi.redis,\n"
          "  'google_compute_': GoogleApi.compute,\n"
          "  'google_compute_thing': null,\n"
          "  'google_cloud_run_': GoogleApi.run,\n"
          "  'google_cloud_run_v2_': GoogleApi.run,\n",
        ),
      );
      expect(source, contains('GoogleApi? requiredApiForTerraformType('));
    });

    test('documents each constant with its service', () {
      for (final (name, service) in [
        ('compute', 'compute.googleapis.com'),
        ('run', 'run.googleapis.com'),
      ]) {
        expect(source, contains('  /// `$service`\n  static const $name = '));
      }
    });
  });
}
