// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_email_communication_service_domain`.
const Set<String> _azurermEmailCommunicationServiceDomainSensitive = <String>{};

/// Email Communication Service Domain enum for `domain_management`.
extension type const EmailCommunicationServiceDomainManagement._(
  TfArg<String> _
) implements TfArg<String> {
  EmailCommunicationServiceDomainManagement.variable(String name)
    : this._(TfArg.variable(name));
  EmailCommunicationServiceDomainManagement.expression(String template)
    : this._(TfArg.expression(template));
  const EmailCommunicationServiceDomainManagement.arg(TfArg<String> arg)
    : this._(arg);

  static const azuremanaged = EmailCommunicationServiceDomainManagement._(
    TfArgLiteral('AzureManaged'),
  );
  static const customermanaged = EmailCommunicationServiceDomainManagement._(
    TfArgLiteral('CustomerManaged'),
  );
  static const customermanagedinexchangeonline =
      EmailCommunicationServiceDomainManagement._(
        TfArgLiteral('CustomerManagedInExchangeOnline'),
      );

  static const List<EmailCommunicationServiceDomainManagement> values = [
    azuremanaged,
    customermanaged,
    customermanagedinexchangeonline,
  ];
}

/// Factory wrapper for `azurerm_email_communication_service_domain`.
final class AzurermEmailCommunicationServiceDomain extends Resource {
  static const String tfType = 'azurerm_email_communication_service_domain';

  AzurermEmailCommunicationServiceDomain(
    super.localName, {
    required EmailCommunicationServiceDomainManagement domainManagement,
    required TfArg<String> emailServiceId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? userEngagementTrackingEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_management': domainManagement,
           'email_service_id': emailServiceId,
           'name': name,
           'tags': ?tags,
           'user_engagement_tracking_enabled': ?userEngagementTrackingEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermEmailCommunicationServiceDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEmailCommunicationServiceDomain>`.
  RefTo<AzurermEmailCommunicationServiceDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `from_sender_domain` attribute.
  TfRef<String> get fromSenderDomain =>
      TfRef.attribute<String>(this, 'from_sender_domain');

  /// Reference to `mail_from_sender_domain` attribute.
  TfRef<String> get mailFromSenderDomain =>
      TfRef.attribute<String>(this, 'mail_from_sender_domain');

  /// Reference to `verification_records` attribute.
  TfRef<List<Map<String, Object?>>> get verificationRecords =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'verification_records');

  /// Reference to `domain_management` attribute.
  TfRef<String> get domainManagement =>
      TfRef.attribute<String>(this, 'domain_management');

  /// Reference to `email_service_id` attribute.
  TfRef<String> get emailServiceId =>
      TfRef.attribute<String>(this, 'email_service_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_engagement_tracking_enabled` attribute.
  TfRef<bool> get userEngagementTrackingEnabled =>
      TfRef.attribute<bool>(this, 'user_engagement_tracking_enabled');
}
