// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_signalr_service_custom_domain`.
const Set<String> _azurermSignalrServiceCustomDomainSensitive = <String>{};

/// Factory wrapper for `azurerm_signalr_service_custom_domain`.
final class AzurermSignalrServiceCustomDomain extends Resource {
  static const String tfType = 'azurerm_signalr_service_custom_domain';

  AzurermSignalrServiceCustomDomain(
    super.localName, {
    required TfArg<String> domainName,
    required TfArg<String> name,
    required TfArg<String> signalrCustomCertificateId,
    required TfArg<String> signalrServiceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'name': name,
           'signalr_custom_certificate_id': signalrCustomCertificateId,
           'signalr_service_id': signalrServiceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSignalrServiceCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSignalrServiceCustomDomain>`.
  RefTo<AzurermSignalrServiceCustomDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `signalr_custom_certificate_id` attribute.
  TfRef<String> get signalrCustomCertificateId =>
      TfRef.attribute<String>(this, 'signalr_custom_certificate_id');

  /// Reference to `signalr_service_id` attribute.
  TfRef<String> get signalrServiceId =>
      TfRef.attribute<String>(this, 'signalr_service_id');
}
