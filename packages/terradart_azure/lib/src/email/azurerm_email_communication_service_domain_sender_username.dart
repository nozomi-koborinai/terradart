// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_email_communication_service_domain_sender_username`.
const Set<String>
_azurermEmailCommunicationServiceDomainSenderUsernameSensitive = <String>{};

/// Factory wrapper for `azurerm_email_communication_service_domain_sender_username`.
final class AzurermEmailCommunicationServiceDomainSenderUsername
    extends Resource {
  static const String tfType =
      'azurerm_email_communication_service_domain_sender_username';

  AzurermEmailCommunicationServiceDomainSenderUsername(
    super.localName, {
    TfArg<String>? displayName,
    required TfArg<String> emailServiceDomainId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': ?displayName,
           'email_service_domain_id': emailServiceDomainId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermEmailCommunicationServiceDomainSenderUsernameSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEmailCommunicationServiceDomainSenderUsername>`.
  RefTo<AzurermEmailCommunicationServiceDomainSenderUsername> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `email_service_domain_id` attribute.
  TfRef<String> get emailServiceDomainId =>
      TfRef.attribute<String>(this, 'email_service_domain_id');
}
