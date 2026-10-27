// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_web_pubsub_custom_domain`.
const Set<String> _azurermWebPubsubCustomDomainSensitive = <String>{};

/// Factory wrapper for `azurerm_web_pubsub_custom_domain`.
final class AzurermWebPubsubCustomDomain extends Resource {
  static const String tfType = 'azurerm_web_pubsub_custom_domain';

  AzurermWebPubsubCustomDomain(
    super.localName, {
    required TfArg<String> domainName,
    required TfArg<String> name,
    required TfArg<String> webPubsubCustomCertificateId,
    required TfArg<String> webPubsubId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'name': name,
           'web_pubsub_custom_certificate_id': webPubsubCustomCertificateId,
           'web_pubsub_id': webPubsubId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermWebPubsubCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWebPubsubCustomDomain>`.
  RefTo<AzurermWebPubsubCustomDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `web_pubsub_custom_certificate_id` attribute.
  TfRef<String> get webPubsubCustomCertificateId =>
      TfRef.attribute<String>(this, 'web_pubsub_custom_certificate_id');

  /// Reference to `web_pubsub_id` attribute.
  TfRef<String> get webPubsubId =>
      TfRef.attribute<String>(this, 'web_pubsub_id');
}
