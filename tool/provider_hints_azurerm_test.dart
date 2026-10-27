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
    write('internal/services/demo/widget_resource.go', '''
package demo

import (
	"github.com/hashicorp/go-azure-sdk/resource-manager/demo"
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/validation"
)

var modes = []string{"on", "off"}

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
	return map[string]*Schema{
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
  });
}
