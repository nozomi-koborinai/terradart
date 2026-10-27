// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_integration_account`.
const Set<String> _azurermLogicAppIntegrationAccountSensitive = <String>{};

/// Factory wrapper for `azurerm_logic_app_integration_account`.
final class AzurermLogicAppIntegrationAccount extends Resource {
  static const String tfType = 'azurerm_logic_app_integration_account';

  AzurermLogicAppIntegrationAccount(
    super.localName, {
    TfArg<String>? integrationServiceEnvironmentId,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'integration_service_environment_id':
               ?integrationServiceEnvironmentId,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogicAppIntegrationAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppIntegrationAccount>`.
  RefTo<AzurermLogicAppIntegrationAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `integration_service_environment_id` attribute.
  TfRef<String> get integrationServiceEnvironmentId =>
      TfRef.attribute<String>(this, 'integration_service_environment_id');

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
