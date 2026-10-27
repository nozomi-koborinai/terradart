// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_integration_account_schema`.
const Set<String> _azurermLogicAppIntegrationAccountSchemaSensitive =
    <String>{};

/// Factory wrapper for `azurerm_logic_app_integration_account_schema`.
final class AzurermLogicAppIntegrationAccountSchema extends Resource {
  static const String tfType = 'azurerm_logic_app_integration_account_schema';

  AzurermLogicAppIntegrationAccountSchema(
    super.localName, {
    required TfArg<String> content,
    TfArg<String>? fileName,
    required TfArg<String> integrationAccountName,
    TfArg<String>? metadata,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content': content,
           'file_name': ?fileName,
           'integration_account_name': integrationAccountName,
           'metadata': ?metadata,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogicAppIntegrationAccountSchemaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppIntegrationAccountSchema>`.
  RefTo<AzurermLogicAppIntegrationAccountSchema> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `file_name` attribute.
  TfRef<String> get fileName => TfRef.attribute<String>(this, 'file_name');

  /// Reference to `integration_account_name` attribute.
  TfRef<String> get integrationAccountName =>
      TfRef.attribute<String>(this, 'integration_account_name');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
