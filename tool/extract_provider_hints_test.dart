import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import 'extract_provider_hints.dart';

const _fixtures = [
  'packages/terradart_codegen/test/fixtures/wrap/source_cloudflare',
  'packages/terradart_codegen/test/fixtures/wrap/source_appwrite',
];

void main() {
  group('scanSchemaGo', () {
    test('records OneOf validators under their attribute path', () {
      const src = '''
func ResourceSchema(ctx context.Context) schema.Schema {
  return schema.Schema{
    Attributes: map[string]schema.Attribute{
      "mode": schema.StringAttribute{
        // "ignored", "in", "comments"
        Optional: true,
        Validators: []validator.String{
          stringvalidator.OneOfCaseInsensitive("fast", "slow"),
        },
      },
      "settings": schema.SingleNestedAttribute{
        Attributes: map[string]schema.Attribute{
          "level": schema.StringAttribute{
            Validators: []validator.String{
              stringvalidator.OneOf("low", "high"),
            },
          },
          "size": schema.Int64Attribute{Optional: true},
        },
      },
      "tags": schema.ListAttribute{
        ElementType: types.StringType,
        Validators: []validator.List{
          listvalidator.ValueStringsAre(stringvalidator.OneOfCaseInsensitive("a", "b")),
        },
      },
    },
  }
}
''';
      final hints = {for (final h in scanSchemaGo(src)) h.dotted: h};
      expect(hints.keys, unorderedEquals(['mode', 'settings.level', 'tags']));
      expect(hints['mode']!.values, ['fast', 'slow']);
      expect(hints['mode']!.caseInsensitive, isTrue);
      expect(hints['settings.level']!.values, ['low', 'high']);
      expect(hints['settings.level']!.caseInsensitive, isFalse);
      expect(hints['tags']!.values, ['a', 'b']);
    });
  });

  test('scanSchemaGo skips rune literals in hand-written resource code', () {
    const src = '''
func (r *thing) Schema(_ context.Context, _ resource.SchemaRequest, resp *resource.SchemaResponse) {
  resp.Schema = schema.Schema{
    Attributes: map[string]schema.Attribute{
      "mode": schema.StringAttribute{
        Validators: []validator.String{stringvalidator.OneOf("a", "b")},
      },
    },
  }
}

func split(s string) []string { return strings.FieldsFunc(s, func(r rune) bool { return r == '{' || r == '\\'' }) }
''';
    expect([for (final h in scanSchemaGo(src)) h.dotted], ['mode']);
  });

  test('resourceTypeNames expands a fmt.Sprintf variant pattern', () {
    const go = 'resp.TypeName = fmt.Sprintf("%s_%s_database", '
        'req.ProviderTypeName, r.engine)';
    expect(
      resourceTypeNames(
        go,
        provider: 'appwrite',
        knownTypes: const [
          'appwrite_mysql_database',
          'appwrite_mongo_database',
          'appwrite_mongo_database_status',
          'appwrite_tablesdb',
        ],
      ),
      ['appwrite_mongo_database', 'appwrite_mysql_database'],
    );
    expect(
      resourceTypeNames(
        'resp.TypeName = req.ProviderTypeName + "_proxy_rule"',
        provider: 'appwrite',
        knownTypes: const [],
      ),
      ['appwrite_proxy_rule'],
    );
  });

  group('resourceSources', () {
    late Directory dir;
    setUp(() => dir = Directory.systemTemp.createTempSync('hints_src_'));
    tearDown(() => dir.deleteSync(recursive: true));

    void touch(String name) => File(p.join(dir.path, name)).createSync();

    test('pairs a Stainless schema.go with its resource.go', () {
      for (final f in ['schema.go', 'resource.go', 'x_resource.go']) {
        touch(f);
      }
      final sources = resourceSources(dir);
      expect(sources, hasLength(1));
      expect(p.basename(sources.single.schema.path), 'schema.go');
      expect(p.basename(sources.single.typeName.path), 'resource.go');
    });

    test('reads every hand-written resource file otherwise', () {
      for (final f in [
        'resource.go',
        'pooler_resource.go',
        'resource_test.go',
        'data_source.go',
        'helpers.go',
      ]) {
        touch(f);
      }
      expect(
        [for (final s in resourceSources(dir)) p.basename(s.schema.path)],
        ['pooler_resource.go', 'resource.go'],
      );
    });
  });

  test('resourceTypeName reads the TypeName suffix', () {
    expect(
      resourceTypeName(
        'resp.TypeName = req.ProviderTypeName + "_dns_record"',
        provider: 'cloudflare',
      ),
      'cloudflare_dns_record',
    );
    expect(resourceTypeName('package x', provider: 'cloudflare'), isNull);
  });

  test('resolveHint follows nested_type and block_types', () {
    final block = {
      'attributes': {
        'mode': {'type': 'string'},
        'count': {'type': 'number'},
        'tags': {
          'type': ['list', 'string'],
        },
        'settings': {
          'nested_type': {
            'attributes': {
              'level': {'type': 'string'},
            },
          },
        },
      },
    };
    expect(resolveHint(block, ['mode']), HintResolution.string);
    expect(resolveHint(block, ['tags']), HintResolution.string);
    expect(resolveHint(block, ['settings', 'level']), HintResolution.string);
    expect(resolveHint(block, ['count']), HintResolution.notString);
    expect(resolveHint(block, ['gone']), HintResolution.missing);
  });

  test('renderHintsYaml round-trips through MmYamlParser', () {
    final yaml = renderHintsYaml(
      repo: 'example/x',
      version: '1.0.0',
      sourcePath: 'internal/services/thing/schema.go',
      hints: const [
        GoEnumHint(
          path: ['settings', 'level'],
          values: ['low', 'high'],
          caseInsensitive: true,
        ),
        GoEnumHint(
          path: ['mode'],
          values: ['a.b', r'$x'],
          caseInsensitive: true,
        ),
      ],
    );
    expect((loadYaml(yaml) as YamlMap)['provider_version'], '1.0.0');
    final parsed = const MmYamlParser().parseString(yaml).fieldOverrides;
    expect(parsed['mode']!.enumValues, ['a.b', r'$x']);
    expect(parsed['settings.level']!.enumValues, ['low', 'high']);
  });

  for (final fixture in _fixtures) {
    group('the committed ${p.basename(fixture)} hints', () {
      final hintsDir = Directory(p.join(fixture, 'hints'));
      final version = File(p.join(fixture, 'provider_version.txt'))
          .readAsStringSync()
          .trim();
      final schema = jsonDecode(
        File(p.join(fixture, 'schema.json')).readAsStringSync(),
      ) as Map<String, dynamic>;
      final provider = (schema['provider_schemas'] as Map).values.single as Map;
      final resources = provider['resource_schemas'] as Map<String, dynamic>;
      final files = hintsDir
          .listSync()
          .whereType<File>()
          .where((f) => f.path.endsWith('.yaml'))
          .toList();

      test('exist', () => expect(files, isNotEmpty));

      test('are at the fixture version and resolve to string inputs', () {
        for (final file in files) {
          final src = file.readAsStringSync();
          final type = p.basenameWithoutExtension(file.path);
          expect(
            (loadYaml(src) as YamlMap)['provider_version'],
            version,
            reason: file.path,
          );
          final block = (resources[type] as Map?)?['block'];
          expect(block, isNotNull, reason: '$type is not in schema.json');
          final parsed = const MmYamlParser().parseString(src).fieldOverrides;
          for (final MapEntry(:key, :value) in parsed.entries) {
            if (value.enumValues == null) continue;
            expect(
              resolveHint(
                (block as Map).cast<String, dynamic>(),
                key.split('.'),
              ),
              HintResolution.string,
              reason: '$type.$key',
            );
          }
        }
      });
    });
  }
}
