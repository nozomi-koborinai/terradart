// packages/terradart_codegen/test/codegen/universal_invariants/beta_overlap_test.dart
import 'package:terradart_codegen/src/codegen/universal_invariants/beta_overlap.dart';
import 'package:test/test.dart';

Map<String, dynamic> schemaWith(String providerName, List<String> types) => {
      'format_version': '1.0',
      'provider_schemas': {
        'registry.terraform.io/hashicorp/$providerName': {
          'resource_schemas': {
            for (final t in types)
              t: {'version': 0, 'block': <String, dynamic>{}},
          },
        },
      },
    };

void main() {
  test('disjoint schemas produce no overlap', () {
    expect(
      overlappingResourceTypes(
        gaSchema: schemaWith('google', ['google_a', 'google_b']),
        betaSchema: schemaWith('google-beta', ['google_c']),
      ),
      isEmpty,
    );
  });

  test('promoted types are reported sorted', () {
    expect(
      overlappingResourceTypes(
        gaSchema: schemaWith('google', ['google_z', 'google_a', 'google_m']),
        betaSchema: schemaWith('google-beta', ['google_z', 'google_a']),
      ),
      ['google_a', 'google_z'],
    );
  });

  test('empty or malformed schemas mean no overlap', () {
    expect(
      overlappingResourceTypes(gaSchema: {}, betaSchema: {}),
      isEmpty,
    );
    expect(
      overlappingResourceTypes(
        gaSchema: {'provider_schemas': <String, dynamic>{}},
        betaSchema: schemaWith('google-beta', ['google_a']),
      ),
      isEmpty,
    );
  });
}
