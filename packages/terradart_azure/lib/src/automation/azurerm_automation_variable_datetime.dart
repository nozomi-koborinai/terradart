// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_variable_datetime`.
const Set<String> _azurermAutomationVariableDatetimeSensitive = <String>{};

/// Factory wrapper for `azurerm_automation_variable_datetime`.
final class AzurermAutomationVariableDatetime extends Resource {
  static const String tfType = 'azurerm_automation_variable_datetime';

  AzurermAutomationVariableDatetime(
    super.localName, {
    required TfArg<String> automationAccountName,
    TfArg<String>? description,
    TfArg<bool>? encrypted,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'description': ?description,
           'encrypted': ?encrypted,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'value': ?value,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAutomationVariableDatetimeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationVariableDatetime>`.
  RefTo<AzurermAutomationVariableDatetime> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
