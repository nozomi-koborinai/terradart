// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_connection_service_principal`.
const Set<String> _azurermAutomationConnectionServicePrincipalSensitive =
    <String>{};

/// Factory wrapper for `azurerm_automation_connection_service_principal`.
final class AzurermAutomationConnectionServicePrincipal extends Resource {
  static const String tfType =
      'azurerm_automation_connection_service_principal';

  AzurermAutomationConnectionServicePrincipal(
    super.localName, {
    required TfArg<String> applicationId,
    required TfArg<String> automationAccountName,
    required TfArg<String> certificateThumbprint,
    TfArg<String>? description,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> subscriptionId,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'automation_account_name': automationAccountName,
           'certificate_thumbprint': certificateThumbprint,
           'description': ?description,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subscription_id': subscriptionId,
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAutomationConnectionServicePrincipalSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationConnectionServicePrincipal>`.
  RefTo<AzurermAutomationConnectionServicePrincipal> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `certificate_thumbprint` attribute.
  TfRef<String> get certificateThumbprint =>
      TfRef.attribute<String>(this, 'certificate_thumbprint');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
