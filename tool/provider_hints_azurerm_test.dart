import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'provider_hints_azurerm.dart';

void main() {
  test('scans SDKv2 StringInSlice, vendored enums and relation rules', () {
    final root = Directory.systemTemp.createTempSync('azurerm_hints_');
    addTearDown(() => root.deleteSync(recursive: true));
    void write(String rel, String src) {
      final file = File(p.join(root.path, rel));
      file.parent.createSync(recursive: true);
      file.writeAsStringSync(src);
    }

    write('go.mod', 'module github.com/hashicorp/terraform-provider-azurerm\n');
    write('internal/provider/provider.go', 'package provider\n');
    write(
      'vendor/github.com/hashicorp/go-azure-sdk/resource-manager/demo/constants.go',
      '''
package demo

type WidgetKind string

const (
	WidgetKindA WidgetKind = "a"
	WidgetKindB WidgetKind = "b"
)

func PossibleValuesForWidgetKind() []string {
	return []string{
		string(WidgetKindA),
		string(WidgetKindB),
	}
}

type Encoding string

const EncodingUTFEight Encoding = "UTF8"

func PossibleValuesForEncoding() []string {
	return []string{
		string(EncodingUTFEight),
	}
}
''',
    );
    write('internal/services/demo/registration.go', '''
package demo

func (r Registration) SupportedDataSources() map[string]*Resource {
	return map[string]*Resource{
		"azurerm_widget": dataSourceWidget(),
	}
}

func (r Registration) SupportedResources() map[string]*Resource {
	return map[string]*Resource{
		"azurerm_widget": resourceWidget(),
		"azurerm_typed":  resourceTyped(),
	}
}
''');
    write('internal/services/demo/helpers/auth_schema.go', '''
package helpers

import (
	"github.com/hashicorp/go-azure-sdk/resource-manager/demo"
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/validation"
)

func AuthSchema() *Schema {
	return &Schema{
		Type: TypeList,
		Elem: &Resource{
			Schema: map[string]*Schema{
				"convention": {
					Type: TypeString,
					ValidateFunc: validation.StringInSlice(demo.PossibleValuesForWidgetKind(), false),
					Description: "Possible values include `WidgetKindA`, `WidgetKindB`.",
				},
			},
		},
	}
}
''');
    write('internal/services/demo/widget_resource.go', '''
package demo

import (
	"github.com/hashicorp/go-azure-sdk/resource-manager/demo"
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/validation"
	"github.com/hashicorp/terraform-provider-azurerm/internal/services/demo/helpers"
)

var modes = []string{"on", "off"}

const (
	ShapeRound  = "round"
	ShapeSquare = "square"
)

func dataSourceWidget() *Resource {
	return &Resource{
		Schema: map[string]*Schema{
			"kind": {
				Type: TypeString,
				ValidateFunc: validation.StringInSlice([]string{"data", "only"}, false),
			},
		},
	}
}

func resourceWidget() *Resource {
	return &Resource{
		Schema: resourceWidgetSchema(),
	}
}

func resourceWidgetSchema() map[string]*Schema {
	allowedMethods := []string{"GET", "PUT"}
	return map[string]*Schema{
			"auth_mode": {
				Type: TypeString,
				ValidateFunc: validation.StringInSlice([]string{
					string(demo.WidgetKindA),
					string(demo.WidgetKindB),
				}, false),
			},
			"encoding": {
				Type: TypeString,
				ValidateFunc: validation.StringInSlice(demo.PossibleValuesForEncoding(), false),
			},
			"shape": {
				Type: TypeString,
				ValidateFunc: validation.StringInSlice([]string{ShapeRound, ShapeSquare}, false),
			},
			"method": {
				Type: TypeString,
				ValidateFunc: validation.StringInSlice(allowedMethods, false),
			},
			"computed": {
				Type: TypeString,
				ValidateFunc: validation.StringInSlice(append(modes, "auto"), false),
			},
			"kind": {
				Type: TypeString,
				ValidateFunc: validation.StringInSlice(demo.PossibleValuesForWidgetKind(), false),
			},
			"mode": {
				Type: TypeString,
				ValidateFunc: validation.StringInSlice(modes, true),
			},
			"owner": {
				Type: TypeString,
				ValidateFunc: validation.Any(
					validation.IsUUID,
					validation.StringInSlice([]string{"super", "user"}, false),
				),
			},
			"address_space": {
				Type: TypeList,
				ExactlyOneOf: []string{"address_space", "ip_address_pool"},
			},
			"ip_address_pool": {
				Type: TypeList,
				ExactlyOneOf: []string{"address_space", "ip_address_pool"},
			},
			"name": {
				Type: TypeString,
				ConflictsWith: []string{"name_prefix"},
			},
			"name_prefix": {
				Type: TypeString,
				ConflictsWith: []string{"name"},
			},
			"encryption": {
				Type: TypeList,
				Elem: &Resource{
					Schema: encryptionSchema(),
				},
			},
			"auth": helpers.AuthSchema(),
			"auth_slot": helpers.AuthSchema(),
			"retention": retentionSchema(),
			"circuit_breaker_rule": {
				Type: TypeList,
				Elem: &Resource{
					Schema: map[string]*Schema{
						"failure_condition": {
							Type: TypeList,
							Elem: &Resource{
								Schema: map[string]*Schema{
									"count": {
										Type: TypeInt,
										ExactlyOneOf: []string{"circuit_breaker_rule.0.failure_condition.0.count", "circuit_breaker_rule.0.failure_condition.0.percentage"},
									},
									"percentage": {
										Type: TypeInt,
										ExactlyOneOf: []string{"circuit_breaker_rule.0.failure_condition.0.count", "circuit_breaker_rule.0.failure_condition.0.percentage"},
									},
								},
							},
						},
					},
				},
			},
		}
}

func retentionSchema() *Schema {
	return &Schema{
		Type: TypeList,
		Elem: &Resource{
			Schema: map[string]*Schema{
				"unit": {
					Type: TypeString,
					ValidateFunc: validation.StringInSlice([]string{"Day", "Hour"}, false),
				},
			},
		},
	}
}

func encryptionSchema() map[string]*Schema {
	return map[string]*Schema{
		"enforcement": {
			Type: TypeString,
			ValidateFunc: validation.StringInSlice([]string{"allow", "drop"}, false),
		},
	}
}
''');
    write('internal/services/demo/widget_data_source.go', '''
package demo

import "github.com/hashicorp/terraform-plugin-sdk/v2/helper/validation"

type WidgetDataSource struct{}

func (r WidgetDataSource) ResourceType() string { return "azurerm_widget" }

func (r WidgetDataSource) Arguments() map[string]*Schema {
	return map[string]*Schema{
		"kind": {
			Type: TypeString,
			ValidateFunc: validation.StringInSlice([]string{"data", "only"}, false),
		},
	}
}
''');
    write('internal/services/demo/typed_resource.go', '''
package demo

import "github.com/hashicorp/terraform-plugin-sdk/v2/helper/validation"

type TypedResource struct{}

func (r TypedResource) ResourceType() string { return "azurerm_typed" }

func (r TypedResource) Arguments() map[string]*Schema {
	return map[string]*Schema{
		"sku": {
			Type: TypeString,
			ValidateFunc: validation.StringInSlice([]string{"basic", "standard"}, false),
		},
	}
}

func resourceTyped() *Resource { return nil }
''');

    expect(isAzurermProviderSource(root), isTrue);
    final scan = scanAzurermProvider(root);
    final widget = scan.byType['azurerm_widget']!;
    final hints = {for (final h in widget.hints) h.dotted: h};

    expect(hints.keys, containsAll(['kind', 'mode', 'encryption.enforcement']));
    expect(hints.containsKey('owner'), isFalse);
    expect(hints['kind']!.values, ['a', 'b']);
    expect(hints['kind']!.caseInsensitive, isFalse);
    expect(hints['mode']!.values, ['on', 'off']);
    expect(hints['mode']!.caseInsensitive, isTrue);
    expect(hints['encryption.enforcement']!.values, ['allow', 'drop']);
    // Qualified and bare constants, a one-value set and a local slice.
    expect(hints['auth_mode']!.values, ['a', 'b']);
    expect(hints['encoding']!.values, ['UTF8']);
    expect(hints['shape']!.values, ['round', 'square']);
    expect(hints['method']!.values, ['GET', 'PUT']);
    expect(hints.containsKey('computed'), isFalse);
    expect(scan.unresolvedSites, ['azurerm_widget computed']);
    // A schema-map value that calls a schema function, in this package or an
    // imported one, is scanned at its key's path: the validated set wins over
    // a description that names Go constants.
    expect(hints['auth.convention']!.values, ['a', 'b']);
    expect(hints['auth_slot.convention']!.values, ['a', 'b']);
    expect(hints['retention.unit']!.values, ['Day', 'Hour']);
    expect(
      widget.groups.map((g) => g.map((m) => m.join('.')).toList()),
      unorderedEquals([
        ['address_space', 'ip_address_pool'],
        [
          'circuit_breaker_rule.failure_condition.count',
          'circuit_breaker_rule.failure_condition.percentage',
        ],
      ]),
    );
    expect(widget.atMostOne.map((g) => g.map((m) => m.join('.')).toList()), [
      ['name', 'name_prefix'],
    ]);

    final typed = scan.byType['azurerm_typed']!;
    expect(typed.hints.single.values, ['basic', 'standard']);
    expect(typed.sourcePath, endsWith('typed_resource.go'));
    expect(scan.byType.containsKey('azurerm_widget'), isTrue);
    expect(
      scan.byType['azurerm_widget']!.sourcePath,
      endsWith('widget_resource.go'),
    );

    expect(scan.dataSourcesByType.keys, ['azurerm_widget']);
    final widgetData = scan.dataSourcesByType['azurerm_widget']!;
    expect(widgetData.sourcePath, endsWith('widget_data_source.go'));
    expect(widgetData.hints.single.dotted, 'kind');
    expect(widgetData.hints.single.values, ['data', 'only']);
  });

  test('scans pkg.RegisterResource and pkg.RegisterDataSource registrations', () {
    final root = Directory.systemTemp.createTempSync('azurerm_hints_sel_');
    addTearDown(() => root.deleteSync(recursive: true));
    void write(String rel, String src) {
      final file = File(p.join(root.path, rel));
      file.parent.createSync(recursive: true);
      file.writeAsStringSync(src);
    }

    write('go.mod', 'module github.com/hashicorp/terraform-provider-azurerm\n');
    write('internal/provider/provider.go', 'package provider\n');
    write(
      'vendor/github.com/hashicorp/go-azure-sdk/resource-manager/demo/constants.go',
      'package demo\n',
    );
    write('internal/services/demo/registration.go', '''
package demo

import (
	ra "github.com/hashicorp/terraform-provider-azurerm/internal/services/demo/resources/role"
)

func (r Registration) SupportedDataSources() map[string]*Resource {
	return map[string]*Resource{
		"azurerm_client_config": ra.RegisterDataSource(),
		"azurerm_shared":        ra.RegisterDataSource(),
	}
}

func (r Registration) SupportedResources() map[string]*Resource {
	return map[string]*Resource{
		"azurerm_role_assignment": ra.RegisterResource(),
		"azurerm_shared":          ra.RegisterResource(),
	}
}
''');
    write('internal/services/demo/resources/role/resource.go', '''
package role

import "github.com/hashicorp/terraform-plugin-sdk/v2/helper/validation"

func RegisterResource() *Resource {
	return &Resource{
		Schema: roleSchema(),
	}
}

func roleSchema() map[string]*Schema {
	return map[string]*Schema{
		"principal_type": {
			Type: TypeString,
			ValidateFunc: validation.StringInSlice([]string{"User", "Group"}, false),
		},
		"name": {
			Type: TypeString,
			ConflictsWith: []string{"name_prefix"},
		},
		"name_prefix": {
			Type: TypeString,
			ConflictsWith: []string{"name"},
		},
	}
}
''');
    write('internal/services/demo/resources/role/data_source.go', '''
package role

import "github.com/hashicorp/terraform-plugin-sdk/v2/helper/validation"

func RegisterDataSource() *Resource {
	return &Resource{
		Schema: map[string]*Schema{
			"tenant_mode": {
				Type: TypeString,
				ValidateFunc: validation.StringInSlice([]string{"single", "multi"}, false),
			},
		},
	}
}
''');
    write('internal/services/demo/named_resource.go', '''
package demo

import "github.com/hashicorp/terraform-plugin-sdk/v2/helper/validation"

var namedType = "azurerm_named"

type NamedResource struct{}

func (r NamedResource) ResourceType() string { return namedType }

func (r NamedResource) Arguments() map[string]*Schema {
	return map[string]*Schema{
		"sku": {
			Type: TypeString,
			ValidateFunc: validation.StringInSlice([]string{"basic", "standard"}, false),
		},
	}
}
''');

    final scan = scanAzurermProvider(root);
    final role = scan.byType['azurerm_role_assignment'];
    expect(role, isNotNull);
    expect(role!.sourcePath, endsWith('resources/role/resource.go'));
    expect(role.hints.single.dotted, 'principal_type');
    expect(role.hints.single.values, ['User', 'Group']);
    expect(role.atMostOne.map((g) => g.map((m) => m.join('.')).toList()), [
      ['name', 'name_prefix'],
    ]);

    final client = scan.dataSourcesByType['azurerm_client_config'];
    expect(client, isNotNull);
    expect(client!.sourcePath, endsWith('resources/role/data_source.go'));
    expect(client.hints.single.dotted, 'tenant_mode');
    expect(client.hints.single.values, ['single', 'multi']);

    final shared = scan.byType['azurerm_shared'];
    expect(shared, isNotNull);
    expect(shared!.hints.single.dotted, 'principal_type');
    final sharedData = scan.dataSourcesByType['azurerm_shared'];
    expect(sharedData, isNotNull);
    expect(sharedData!.hints.single.dotted, 'tenant_mode');
    expect(sharedData.atMostOne, isEmpty);

    final named = scan.byType['azurerm_named'];
    expect(named, isNotNull);
    expect(named!.hints.single.values, ['basic', 'standard']);

    expect(scan.byType.keys, [
      'azurerm_named',
      'azurerm_role_assignment',
      'azurerm_shared',
    ]);
    expect(scan.dataSourcesByType.keys, [
      'azurerm_client_config',
      'azurerm_shared',
    ]);
  });
}
