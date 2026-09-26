import 'package:test/test.dart';

import 'extract_schema_subset.dart';

void main() {
  final full = <String, dynamic>{
    'format_version': '1.0',
    'provider_schemas': {
      'registry.terraform.io/hashicorp/google-beta': {
        'provider': {'version': 0},
        'resource_schemas': {
          'google_project_service_identity': {
            'version': 0,
            'block': {
              'attributes': {
                'service': {'type': 'string', 'required': true},
              },
            },
          },
          'google_compute_instance': {
            'version': 6,
            'block': {'attributes': <String, dynamic>{}},
          },
        },
        'data_source_schemas': {
          'google_project': {
            'version': 0,
            'block': {'attributes': <String, dynamic>{}},
          },
        },
      },
    },
  };

  test('keeps only the requested resources under the provider key', () {
    final out = filterSchemaSubset(
      full,
      providerSource: 'hashicorp/google-beta',
      resources: ['google_project_service_identity'],
    );
    expect(out['format_version'], '1.0');
    final schemas = (out['provider_schemas']
        as Map)['registry.terraform.io/hashicorp/google-beta'] as Map;
    final resources = schemas['resource_schemas'] as Map;
    expect(resources.keys, ['google_project_service_identity']);
    expect(
      ((resources['google_project_service_identity'] as Map)['block']
          as Map)['attributes'],
      isNotEmpty,
    );
    // Data sources stay omitted until explicitly requested — not copied
    // wholesale (the fixture stays exactly as small as the catalog).
    expect(schemas.containsKey('data_source_schemas'), isFalse);
  });

  test('includes only the requested data sources when asked', () {
    final out = filterSchemaSubset(
      full,
      providerSource: 'hashicorp/google-beta',
      resources: ['google_project_service_identity'],
      dataSources: ['google_project'],
    );
    final schemas = (out['provider_schemas']
        as Map)['registry.terraform.io/hashicorp/google-beta'] as Map;
    expect((schemas['data_source_schemas'] as Map).keys, ['google_project']);
    expect((schemas['resource_schemas'] as Map).keys, [
      'google_project_service_identity',
    ]);
  });

  test('fails closed when a requested data source is absent', () {
    expect(
      () => filterSchemaSubset(
        full,
        providerSource: 'hashicorp/google-beta',
        resources: ['google_project_service_identity'],
        dataSources: ['google_nope'],
      ),
      throwsA(
        isA<StateError>().having(
          (e) => e.message,
          'message',
          contains('google_nope'),
        ),
      ),
    );
  });

  test('fails closed when a requested resource is absent from the schema', () {
    expect(
      () => filterSchemaSubset(
        full,
        providerSource: 'hashicorp/google-beta',
        resources: ['google_project_service_identity', 'google_nope'],
      ),
      throwsA(
        isA<StateError>().having(
          (e) => e.message,
          'message',
          contains('google_nope'),
        ),
      ),
    );
  });

  test('fails closed when the provider key itself is absent', () {
    expect(
      () => filterSchemaSubset(
        full,
        providerSource: 'hashicorp/cloudflare',
        resources: ['whatever'],
      ),
      throwsA(isA<StateError>()),
    );
  });

  group('coversFullCatalog', () {
    bool covers(List<String> resources, List<String> dataSources) =>
        coversFullCatalog(
          full,
          providerSource: 'hashicorp/google-beta',
          resources: resources,
          dataSources: dataSources,
        );

    test('is true when every resource and data source is kept', () {
      expect(
        covers(
          ['google_compute_instance', 'google_project_service_identity'],
          ['google_project'],
        ),
        isTrue,
      );
    });

    test('is false when a resource is left out', () {
      expect(
        covers(['google_project_service_identity'], ['google_project']),
        isFalse,
      );
    });

    test('is false when the data sources are left out', () {
      expect(
        covers(
          ['google_compute_instance', 'google_project_service_identity'],
          const [],
        ),
        isFalse,
      );
    });

    test('is false for a provider the schema does not declare', () {
      expect(
        coversFullCatalog(
          full,
          providerSource: 'hashicorp/cloudflare',
          resources: const ['google_compute_instance'],
          dataSources: const [],
        ),
        isFalse,
      );
    });
  });

  group('fixtureReadme', () {
    const dir = 'packages/terradart_codegen/test/fixtures/wrap/source_x';

    test('a full-catalog fixture names the pin and never says curated', () {
      final readme = fixtureReadme(
        provider: 'hashicorp/aws',
        version: '6.66.0',
        fixtureDir: dir,
        fullCatalog: true,
      );
      expect(
        readme,
        startsWith(
          '# Schema fixture — hashicorp/aws\n\n'
          'Full catalog at the current pin (`6.66.0`): every resource and '
          'data source.\nThe keys of `schema.json` are the single source '
          'of truth for the set, and\n`provider_version.txt` records',
        ),
      );
      expect(readme, isNot(contains('Filtered')));
      expect(readme, isNot(contains('ONLY the curated')));
    });

    test('a full-catalog fixture without --version omits the pin', () {
      expect(
        fixtureReadme(
          provider: 'hashicorp/aws',
          version: null,
          fixtureDir: dir,
          fullCatalog: true,
        ),
        contains('Full catalog at the current pin: every resource'),
      );
    });

    test('a curated subset keeps the filtered wording', () {
      final readme = fixtureReadme(
        provider: 'hashicorp/google-beta',
        version: '7.44.0',
        fixtureDir: dir,
        fullCatalog: false,
      );
      expect(
        readme,
        startsWith(
          '# Filtered schema fixture — hashicorp/google-beta\n\n'
          'Machine-extracted subset containing ONLY the curated resources. '
          'The keys of\n`schema.json` are the single source of truth for the '
          'set, and\n`provider_version.txt` records',
        ),
      );
      expect(readme, contains('--resources-from=$dir/schema.json \\\n'));
    });
  });

  group('resourceNamesFromFixture', () {
    test('returns the sorted resource keys of the fixture', () {
      expect(
        resourceNamesFromFixture(full),
        ['google_compute_instance', 'google_project_service_identity'],
      );
    });

    test('ignores data sources', () {
      expect(
        resourceNamesFromFixture(full),
        isNot(contains('google_project')),
      );
    });

    test('dataSourceNamesFromFixture returns sorted data-source keys', () {
      expect(dataSourceNamesFromFixture(full), ['google_project']);
    });

    test('dataSourceNamesFromFixture is empty on a resource-only fixture', () {
      expect(
        dataSourceNamesFromFixture({
          'provider_schemas': {
            'registry.terraform.io/hashicorp/google-beta': {
              'resource_schemas': {
                'google_compute_instance': {'version': 6},
              },
            },
          },
        }),
        isEmpty,
      );
    });

    test('throws StateError on a fixture with no resources', () {
      expect(
        () => resourceNamesFromFixture({
          'provider_schemas': {
            'registry.terraform.io/hashicorp/google-beta': {
              'resource_schemas': <String, dynamic>{},
            },
          },
        }),
        throwsStateError,
      );
      expect(() => resourceNamesFromFixture({}), throwsStateError);
    });
  });
}
