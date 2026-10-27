// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_connection_certificate`.
const Set<String> _azurermAutomationConnectionCertificateSensitive = <String>{};

/// Factory wrapper for `azurerm_automation_connection_certificate`.
final class AzurermAutomationConnectionCertificate extends Resource {
  static const String tfType = 'azurerm_automation_connection_certificate';

  AzurermAutomationConnectionCertificate(
    super.localName, {
    required TfArg<String> automationAccountName,
    required TfArg<String> automationCertificateName,
    TfArg<String>? description,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> subscriptionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'automation_certificate_name': automationCertificateName,
           'description': ?description,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subscription_id': subscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAutomationConnectionCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationConnectionCertificate>`.
  RefTo<AzurermAutomationConnectionCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `automation_certificate_name` attribute.
  TfRef<String> get automationCertificateName =>
      TfRef.attribute<String>(this, 'automation_certificate_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
