import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import 'extract_provider_hints.dart';
import 'provider_hints_aws.dart';

const _fixtures = [
  'packages/terradart_codegen/test/fixtures/wrap/source_cloudflare',
  'packages/terradart_codegen/test/fixtures/wrap/source_appwrite',
  'packages/terradart_codegen/test/fixtures/wrap/source_aws',
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

  group('scanAwsProvider', () {
    late Directory root;
    late String sdkDir;
    setUp(() {
      root = Directory.systemTemp.createTempSync('hints_aws_');
      sdkDir = p.join(root.path, 'sdk');
    });
    tearDown(() => root.deleteSync(recursive: true));

    void write(String path, String src) => File(p.join(root.path, path))
      ..parent.createSync(recursive: true)
      ..writeAsStringSync(src);

    void writeProvider() {
      write('go.mod', '''
module github.com/hashicorp/terraform-provider-aws

require (
	github.com/aws/aws-sdk-go-v2/service/widget v1.2.3
)
''');
      write('names/attr.go', '''
package names

const (
	AttrName = "name"
	AttrType = "type"
)
''');
      write('sdk/service/widget/types/enums.go', '''
package types

type Mode string

const (
	ModeFast Mode = "FAST"
	ModeSlow Mode = "SLOW"
)

func (Mode) Values() []Mode {
	return []Mode{
		"FAST",
		"SLOW",
	}
}
''');
      write('internal/service/widget/widget.go', '''
package widget

import (
	awstypes "github.com/aws/aws-sdk-go-v2/service/widget/types"
	"github.com/hashicorp/terraform-provider-aws/internal/enum"
	"github.com/hashicorp/terraform-provider-aws/names"
)

const (
	colorRed  = "red"
	colorBlue = "blue"
)

func color_Values() []string {
	return []string{colorRed, colorBlue}
}

// @SDKResource("aws_widget", name="Widget")
func resourceWidget() *schema.Resource {
	return &schema.Resource{
		Schema: map[string]*schema.Schema{
			names.AttrType: {
				Type:             schema.TypeString,
				ValidateDiagFunc: enum.Validate[awstypes.Mode](),
				ExactlyOneOf:     []string{"color", names.AttrType},
			},
			"color": {
				Type:         schema.TypeString,
				ValidateFunc: validation.StringInSlice(color_Values(), true),
				ExactlyOneOf: []string{"color", names.AttrType},
			},
			"settings": {
				Type: schema.TypeList,
				Elem: settingsSchema(),
			},
			"opaque": {
				Type:         schema.TypeString,
				ValidateFunc: validation.StringInSlice(unknownValues(), false),
				ExactlyOneOf: unknownKeys(),
			},
			"role_arn": {
				Type: schema.TypeString,
				ValidateFunc: validation.Any(
					validation.StringInSlice([]string{""}, false),
					verify.ValidARN,
				),
			},
		},
	}
}

func settingsSchema() *schema.Resource {
	return &schema.Resource{
		Schema: map[string]*schema.Schema{
			"level": {
				Type:         schema.TypeString,
				ValidateFunc: validation.StringInSlice([]string{"low", "high"}, false),
				ExactlyOneOf: []string{"settings.0.level", "settings.0.depth"},
			},
		},
	}
}
''');
      write('internal/service/widget/gadget.go', '''
package widget

import (
	awstypes "github.com/aws/aws-sdk-go-v2/service/widget/types"
	fwtypes "github.com/hashicorp/terraform-provider-aws/internal/framework/types"
	"github.com/hashicorp/terraform-provider-aws/names"
)

// @FrameworkResource("aws_widget_gadget", name="Gadget")
func newGadgetResource(context.Context) (resource.ResourceWithConfigure, error) {
	return &gadgetResource{}, nil
}

func (r *gadgetResource) Schema(ctx context.Context, req resource.SchemaRequest, resp *resource.SchemaResponse) {
	resp.Schema = schema.Schema{
		Attributes: map[string]schema.Attribute{
			"mode": schema.StringAttribute{
				CustomType: fwtypes.StringEnumType[awstypes.Mode](),
			},
			names.AttrName: schema.StringAttribute{
				Validators: []validator.String{
					stringvalidator.OneOf("a", "b"),
					stringvalidator.ExactlyOneOf(path.MatchRelative().AtParent().AtName("mode")),
				},
			},
		},
	}
}

func (r *gadgetResource) ConfigValidators(context.Context) []resource.ConfigValidator {
	return []resource.ConfigValidator{
		resourcevalidator.ExactlyOneOf(
			path.MatchRoot("left"),
			path.MatchRoot("right"),
		),
	}
}
''');
    }

    test('reads the SDK types modules the provider imports', () {
      writeProvider();
      expect(awsSdkTypesModules(root), {
        'github.com/aws/aws-sdk-go-v2/service/widget/types': (
          module: 'github.com/aws/aws-sdk-go-v2/service/widget',
          version: 'v1.2.3',
        ),
      });
      expect(
        sdkEnumsFile(
          sdkDir,
          'github.com/aws/aws-sdk-go-v2/service/widget/types',
        ),
        p.join(sdkDir, 'service', 'widget', 'types', 'enums.go'),
      );
    });

    test('resolves SDK enums, constants, helpers and nested schemas', () {
      writeProvider();
      final scan = scanAwsProvider(root, sdkDir: sdkDir);
      expect(scan.byType.keys, {'aws_widget', 'aws_widget_gadget'});
      Map<String, String> hints(String type) => {
            for (final h in scan.byType[type]!.hints)
              h.path.join('.'):
                  '${h.values.join('|')}${h.caseInsensitive ? ' (ci)' : ''}',
          };
      expect(
        scan.byType['aws_widget']!.sourcePath,
        p.join('internal', 'service', 'widget', 'widget.go'),
      );
      expect(hints('aws_widget'), {
        'type': 'FAST|SLOW',
        'color': 'red|blue (ci)',
        'settings.level': 'low|high',
      });
      expect(hints('aws_widget_gadget'), {
        'mode': 'FAST|SLOW',
        'name': 'a|b',
      });
      expect(scan.validators, 6);
      expect(scan.unresolved, 1, reason: 'unknownValues() is not evaluable');
      expect(scan.openSets, 1, reason: '"" is one alternative beside an ARN');
    });

    test('reads SDKv2 and framework exactly-one groups', () {
      writeProvider();
      final scan = scanAwsProvider(root, sdkDir: sdkDir);
      Set<String> groups(String type) => {
            for (final g in scan.byType[type]!.groups)
              g.map((m) => m.join('.')).join(','),
          };
      expect(groups('aws_widget'), {
        'color,type',
        'settings.depth,settings.level',
      });
      expect(groups('aws_widget_gadget'), {'mode,name', 'left,right'});
      expect(scan.groupValidators, 6);
      expect(
        scan.unresolvedGroups,
        1,
        reason: 'unknownKeys() is not evaluable',
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

  test('renderHintsYaml writes exactly-one groups, with or without enums', () {
    final yaml = renderHintsYaml(
      repo: 'hashicorp/terraform-provider-aws',
      version: '1.0.0',
      sourcePath: 'internal/service/thing/thing.go',
      hints: const [],
      groups: const [
        [
          ['a'],
          ['b'],
        ],
        [
          ['settings', 'x'],
          ['settings', 'y'],
        ],
      ],
    );
    final doc = loadYaml(yaml) as YamlMap;
    expect(doc.containsKey('properties'), isFalse);
    expect(doc['exactly_one_of_groups'], [
      ['a', 'b'],
      ['settings.x', 'settings.y'],
    ]);
  });

  test('groupSkipReason keeps sibling inputs that schema.json declares', () {
    final block = {
      'attributes': {
        'a': {'type': 'string', 'optional': true},
        'b': {'type': 'string', 'optional': true},
        'id': {'type': 'string', 'computed': true},
      },
      'block_types': {
        'settings': {
          'block': {
            'attributes': {
              'x': {'type': 'string', 'optional': true},
            },
          },
        },
      },
    };
    expect(
      groupSkipReason(block, [
        ['a'],
        ['b'],
      ]),
      isNull,
    );
    expect(
      groupSkipReason(block, [
        ['a'],
        ['settings', 'x'],
      ]),
      'members in different blocks',
    );
    expect(
      groupSkipReason(block, [
        ['a'],
        ['gone'],
      ]),
      'gone is not in schema.json',
    );
    expect(
      groupSkipReason(block, [
        ['a'],
        ['id'],
      ]),
      'id is computed-only',
    );
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
