// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_communication_service_email_domain_association`.
const Set<String> _azurermCommunicationServiceEmailDomainAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_communication_service_email_domain_association`.
final class AzurermCommunicationServiceEmailDomainAssociation extends Resource {
  static const String tfType =
      'azurerm_communication_service_email_domain_association';

  AzurermCommunicationServiceEmailDomainAssociation(
    super.localName, {
    required TfArg<String> communicationServiceId,
    required TfArg<String> emailServiceDomainId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'communication_service_id': communicationServiceId,
           'email_service_domain_id': emailServiceDomainId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCommunicationServiceEmailDomainAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCommunicationServiceEmailDomainAssociation>`.
  RefTo<AzurermCommunicationServiceEmailDomainAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `communication_service_id` attribute.
  TfRef<String> get communicationServiceId =>
      TfRef.attribute<String>(this, 'communication_service_id');

  /// Reference to `email_service_domain_id` attribute.
  TfRef<String> get emailServiceDomainId =>
      TfRef.attribute<String>(this, 'email_service_domain_id');
}
