// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_active_directory_domain_trust`.
const Set<String> _googleActiveDirectoryDomainTrustSensitive = <String>{
  'trust_handshake_secret',
};

/// Active Directory Domain Trust enum for `trust_direction`.
enum ActiveDirectoryDomainTrustDirection implements TerraformEnum {
  inbound('INBOUND'),
  outbound('OUTBOUND'),
  bidirectional('BIDIRECTIONAL');

  const ActiveDirectoryDomainTrustDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Active Directory Domain Trust enum for `trust_type`.
enum ActiveDirectoryDomainTrustType implements TerraformEnum {
  forest('FOREST'),
  external('EXTERNAL');

  const ActiveDirectoryDomainTrustType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_active_directory_domain_trust`.
///
/// Adds a trust between Active Directory domains
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleActiveDirectoryDomainTrust extends Resource {
  static const String tfType = 'google_active_directory_domain_trust';

  GoogleActiveDirectoryDomainTrust({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> domain,
    TfArg<String>? project,
    TfArg<bool>? selectiveAuthentication,
    required TfArg<List<String>> targetDnsIpAddresses,
    required TfArg<String> targetDomainName,
    required TfArg<ActiveDirectoryDomainTrustDirection> trustDirection,
    required TfArg<String> trustHandshakeSecret,
    required TfArg<ActiveDirectoryDomainTrustType> trustType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'domain': domain,
           'project': ?project,
           'selective_authentication': ?selectiveAuthentication,
           'target_dns_ip_addresses': targetDnsIpAddresses,
           'target_domain_name': targetDomainName,
           'trust_direction': trustDirection,
           'trust_handshake_secret': trustHandshakeSecret,
           'trust_type': trustType,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleActiveDirectoryDomainTrustSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleActiveDirectoryDomainTrust>`.
  RefTo<GoogleActiveDirectoryDomainTrust> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `domain` attribute.
  TfRef<String> get domainRef => TfRef.attribute<String>(this, 'domain');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `selective_authentication` attribute.
  TfRef<bool> get selectiveAuthenticationRef =>
      TfRef.attribute<bool>(this, 'selective_authentication');

  /// Reference to `target_dns_ip_addresses` attribute.
  TfRef<List<String>> get targetDnsIpAddressesRef =>
      TfRef.attribute<List<String>>(this, 'target_dns_ip_addresses');

  /// Reference to `target_domain_name` attribute.
  TfRef<String> get targetDomainNameRef =>
      TfRef.attribute<String>(this, 'target_domain_name');

  /// Reference to `trust_direction` attribute.
  TfRef<String> get trustDirectionRef =>
      TfRef.attribute<String>(this, 'trust_direction');

  /// Reference to `trust_handshake_secret` attribute.
  TfRef<String> get trustHandshakeSecretRef =>
      TfRef.attribute<String>(this, 'trust_handshake_secret');

  /// Reference to `trust_type` attribute.
  TfRef<String> get trustTypeRef => TfRef.attribute<String>(this, 'trust_type');
}
