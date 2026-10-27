// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_dsc_nodeconfiguration`.
const Set<String> _azurermAutomationDscNodeconfigurationSensitive = <String>{};

/// Factory wrapper for `azurerm_automation_dsc_nodeconfiguration`.
final class AzurermAutomationDscNodeconfiguration extends Resource {
  static const String tfType = 'azurerm_automation_dsc_nodeconfiguration';

  AzurermAutomationDscNodeconfiguration(
    super.localName, {
    required TfArg<String> automationAccountName,
    required TfArg<String> contentEmbedded,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'content_embedded': contentEmbedded,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAutomationDscNodeconfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationDscNodeconfiguration>`.
  RefTo<AzurermAutomationDscNodeconfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_name` attribute.
  TfRef<String> get configurationName =>
      TfRef.attribute<String>(this, 'configuration_name');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `content_embedded` attribute.
  TfRef<String> get contentEmbedded =>
      TfRef.attribute<String>(this, 'content_embedded');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
