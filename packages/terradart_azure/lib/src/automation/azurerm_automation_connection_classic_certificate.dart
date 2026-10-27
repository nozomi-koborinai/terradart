// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_connection_classic_certificate`.
const Set<String> _azurermAutomationConnectionClassicCertificateSensitive =
    <String>{};

/// Factory wrapper for `azurerm_automation_connection_classic_certificate`.
final class AzurermAutomationConnectionClassicCertificate extends Resource {
  static const String tfType =
      'azurerm_automation_connection_classic_certificate';

  AzurermAutomationConnectionClassicCertificate(
    super.localName, {
    required TfArg<String> automationAccountName,
    required TfArg<String> certificateAssetName,
    TfArg<String>? description,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> subscriptionId,
    required TfArg<String> subscriptionName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'certificate_asset_name': certificateAssetName,
           'description': ?description,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subscription_id': subscriptionId,
           'subscription_name': subscriptionName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAutomationConnectionClassicCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationConnectionClassicCertificate>`.
  RefTo<AzurermAutomationConnectionClassicCertificate> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `certificate_asset_name` attribute.
  TfRef<String> get certificateAssetName =>
      TfRef.attribute<String>(this, 'certificate_asset_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');

  /// Reference to `subscription_name` attribute.
  TfRef<String> get subscriptionName =>
      TfRef.attribute<String>(this, 'subscription_name');
}
