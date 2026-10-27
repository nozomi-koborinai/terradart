// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_credential`.
const Set<String> _azurermAutomationCredentialSensitive = <String>{'password'};

/// Factory wrapper for `azurerm_automation_credential`.
final class AzurermAutomationCredential extends Resource {
  static const String tfType = 'azurerm_automation_credential';

  AzurermAutomationCredential(
    super.localName, {
    required TfArg<String> automationAccountName,
    TfArg<String>? description,
    required TfArg<String> name,
    required Sensitive<String> password,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> username,
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
           'password': password,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationCredentialSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationCredential>`.
  RefTo<AzurermAutomationCredential> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
