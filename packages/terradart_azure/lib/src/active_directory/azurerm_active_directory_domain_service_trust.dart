// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_active_directory_domain_service_trust`.
const Set<String> _azurermActiveDirectoryDomainServiceTrustSensitive = <String>{
  'password',
};

/// Factory wrapper for `azurerm_active_directory_domain_service_trust`.
final class AzurermActiveDirectoryDomainServiceTrust extends Resource {
  static const String tfType = 'azurerm_active_directory_domain_service_trust';

  AzurermActiveDirectoryDomainServiceTrust(
    super.localName, {
    required TfArg<String> domainServiceId,
    required TfArg<String> name,
    required Sensitive<String> password,
    required TfArg<List<String>> trustedDomainDnsIps,
    required TfArg<String> trustedDomainFqdn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_service_id': domainServiceId,
           'name': name,
           'password': password,
           'trusted_domain_dns_ips': trustedDomainDnsIps,
           'trusted_domain_fqdn': trustedDomainFqdn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermActiveDirectoryDomainServiceTrustSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermActiveDirectoryDomainServiceTrust>`.
  RefTo<AzurermActiveDirectoryDomainServiceTrust> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_service_id` attribute.
  TfRef<String> get domainServiceId =>
      TfRef.attribute<String>(this, 'domain_service_id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `trusted_domain_dns_ips` attribute.
  TfRef<List<String>> get trustedDomainDnsIps =>
      TfRef.attribute<List<String>>(this, 'trusted_domain_dns_ips');

  /// Reference to `trusted_domain_fqdn` attribute.
  TfRef<String> get trustedDomainFqdn =>
      TfRef.attribute<String>(this, 'trusted_domain_fqdn');
}
