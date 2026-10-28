// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_healthbot`.
const Set<String> _azurermHealthbotSensitive = <String>{};

/// Healthbot Sku enum for `sku_name`.
extension type const HealthbotSkuName._(TfArg<String> _)
    implements TfArg<String> {
  HealthbotSkuName.variable(String name) : this._(TfArg.variable(name));
  HealthbotSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const HealthbotSkuName.arg(TfArg<String> arg) : this._(arg);

  static const c1 = HealthbotSkuName._(TfArgLiteral('C1'));
  static const c0 = HealthbotSkuName._(TfArgLiteral('C0'));
  static const f0 = HealthbotSkuName._(TfArgLiteral('F0'));
  static const pes = HealthbotSkuName._(TfArgLiteral('PES'));
  static const s1 = HealthbotSkuName._(TfArgLiteral('S1'));

  static const List<HealthbotSkuName> values = [c1, c0, f0, pes, s1];
}

/// Factory wrapper for `azurerm_healthbot`.
final class AzurermHealthbot extends Resource {
  static const String tfType = 'azurerm_healthbot';

  AzurermHealthbot(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required HealthbotSkuName skuName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermHealthbotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermHealthbot>`.
  RefTo<AzurermHealthbot> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_management_portal_url` attribute.
  TfRef<String> get botManagementPortalUrl =>
      TfRef.attribute<String>(this, 'bot_management_portal_url');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
