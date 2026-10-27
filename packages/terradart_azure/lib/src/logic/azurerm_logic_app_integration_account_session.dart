// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_integration_account_session`.
const Set<String> _azurermLogicAppIntegrationAccountSessionSensitive =
    <String>{};

/// Factory wrapper for `azurerm_logic_app_integration_account_session`.
final class AzurermLogicAppIntegrationAccountSession extends Resource {
  static const String tfType = 'azurerm_logic_app_integration_account_session';

  AzurermLogicAppIntegrationAccountSession(
    super.localName, {
    required TfArg<String> content,
    required TfArg<String> integrationAccountName,
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
           'integration_account_name': integrationAccountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogicAppIntegrationAccountSessionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppIntegrationAccountSession>`.
  RefTo<AzurermLogicAppIntegrationAccountSession> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `integration_account_name` attribute.
  TfRef<String> get integrationAccountName =>
      TfRef.attribute<String>(this, 'integration_account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
