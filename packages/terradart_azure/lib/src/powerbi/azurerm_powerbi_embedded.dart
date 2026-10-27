// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_powerbi_embedded`.
const Set<String> _azurermPowerbiEmbeddedSensitive = <String>{};

/// Powerbi Embedded enum for `mode`.
extension type const PowerbiEmbeddedMode._(TfArg<String> _)
    implements TfArg<String> {
  PowerbiEmbeddedMode.variable(String name) : this._(TfArg.variable(name));
  PowerbiEmbeddedMode.expression(String template)
    : this._(TfArg.expression(template));
  const PowerbiEmbeddedMode.arg(TfArg<String> arg) : this._(arg);

  static const gen1 = PowerbiEmbeddedMode._(TfArgLiteral('Gen1'));
  static const gen2 = PowerbiEmbeddedMode._(TfArgLiteral('Gen2'));

  static const List<PowerbiEmbeddedMode> values = [gen1, gen2];
}

/// Powerbi Embedded Sku enum for `sku_name`.
extension type const PowerbiEmbeddedSkuName._(TfArg<String> _)
    implements TfArg<String> {
  PowerbiEmbeddedSkuName.variable(String name) : this._(TfArg.variable(name));
  PowerbiEmbeddedSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const PowerbiEmbeddedSkuName.arg(TfArg<String> arg) : this._(arg);

  static const a1 = PowerbiEmbeddedSkuName._(TfArgLiteral('A1'));
  static const a2 = PowerbiEmbeddedSkuName._(TfArgLiteral('A2'));
  static const a3 = PowerbiEmbeddedSkuName._(TfArgLiteral('A3'));
  static const a4 = PowerbiEmbeddedSkuName._(TfArgLiteral('A4'));
  static const a5 = PowerbiEmbeddedSkuName._(TfArgLiteral('A5'));
  static const a6 = PowerbiEmbeddedSkuName._(TfArgLiteral('A6'));
  static const a7 = PowerbiEmbeddedSkuName._(TfArgLiteral('A7'));
  static const a8 = PowerbiEmbeddedSkuName._(TfArgLiteral('A8'));

  static const List<PowerbiEmbeddedSkuName> values = [
    a1,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    a8,
  ];
}

/// Factory wrapper for `azurerm_powerbi_embedded`.
final class AzurermPowerbiEmbedded extends Resource {
  static const String tfType = 'azurerm_powerbi_embedded';

  AzurermPowerbiEmbedded(
    super.localName, {
    required TfArg<List<String>> administrators,
    required TfArg<String> location,
    PowerbiEmbeddedMode? mode,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required PowerbiEmbeddedSkuName skuName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'administrators': administrators,
           'location': location,
           'mode': ?mode,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPowerbiEmbeddedSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPowerbiEmbedded>`.
  RefTo<AzurermPowerbiEmbedded> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `administrators` attribute.
  TfRef<List<String>> get administrators =>
      TfRef.attribute<List<String>>(this, 'administrators');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
