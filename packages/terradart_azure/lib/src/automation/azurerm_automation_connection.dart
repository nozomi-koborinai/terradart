// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_connection`.
const Set<String> _azurermAutomationConnectionSensitive = <String>{};

/// Factory wrapper for `azurerm_automation_connection`.
final class AzurermAutomationConnection extends Resource {
  static const String tfType = 'azurerm_automation_connection';

  AzurermAutomationConnection(
    super.localName, {
    required TfArg<String> automationAccountName,
    TfArg<String>? description,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> type,
    required TfArg<Map<String, String>> values,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'description': ?description,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'type': type,
           'values': values,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationConnection>`.
  RefTo<AzurermAutomationConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `values` attribute.
  TfRef<Map<String, String>> get values =>
      TfRef.attribute<Map<String, String>>(this, 'values');
}
