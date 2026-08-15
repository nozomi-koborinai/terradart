// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_active_directory_domain_trust`.
const Set<String> _googleActiveDirectoryDomainTrustSensitive = <String>{
  'trust_handshake_secret',
};

/// Active Directory Domain Trust Trust enum for `trust_direction`.
enum ActiveDirectoryDomainTrustTrustDirection implements TerraformEnum {
  inbound('INBOUND'),
  outbound('OUTBOUND'),
  bidirectional('BIDIRECTIONAL');

  const ActiveDirectoryDomainTrustTrustDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Active Directory Domain Trust Trust enum for `trust_type`.
enum ActiveDirectoryDomainTrustTrustType implements TerraformEnum {
  forest('FOREST'),
  external('EXTERNAL');

  const ActiveDirectoryDomainTrustTrustType(this.terraformValue);
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
    required TfArg<ActiveDirectoryDomainTrustTrustDirection> trustDirection,
    required TfArg<String> trustHandshakeSecret,
    required TfArg<ActiveDirectoryDomainTrustTrustType> trustType,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'domain': domain,
           if (project != null) 'project': project,
           if (selectiveAuthentication != null)
             'selective_authentication': selectiveAuthentication,
           'target_dns_ip_addresses': targetDnsIpAddresses,
           'target_domain_name': targetDomainName,
           'trust_direction': trustDirection,
           'trust_handshake_secret': trustHandshakeSecret,
           'trust_type': trustType,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleActiveDirectoryDomainTrustSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
