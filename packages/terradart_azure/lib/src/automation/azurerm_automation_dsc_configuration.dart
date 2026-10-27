// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_dsc_configuration`.
const Set<String> _azurermAutomationDscConfigurationSensitive = <String>{};

/// Factory wrapper for `azurerm_automation_dsc_configuration`.
final class AzurermAutomationDscConfiguration extends Resource {
  static const String tfType = 'azurerm_automation_dsc_configuration';

  AzurermAutomationDscConfiguration(
    super.localName, {
    required TfArg<String> automationAccountName,
    required TfArg<String> contentEmbedded,
    TfArg<String>? description,
    required TfArg<String> location,
    TfArg<bool>? logVerbose,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'content_embedded': contentEmbedded,
           'description': ?description,
           'location': location,
           'log_verbose': ?logVerbose,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAutomationDscConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationDscConfiguration>`.
  RefTo<AzurermAutomationDscConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `content_embedded` attribute.
  TfRef<String> get contentEmbedded =>
      TfRef.attribute<String>(this, 'content_embedded');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_verbose` attribute.
  TfRef<bool> get logVerbose => TfRef.attribute<bool>(this, 'log_verbose');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
