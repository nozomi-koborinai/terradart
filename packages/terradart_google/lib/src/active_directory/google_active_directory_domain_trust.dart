// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_active_directory_domain_trust`.
const Set<String> _googleActiveDirectoryDomainTrustSensitive = <String>{
  'trust_handshake_secret',
};

/// Active Directory Domain Trust enum for `trust_direction`.
extension type const ActiveDirectoryDomainTrustDirection._(TfArg<String> _)
    implements TfArg<String> {
  ActiveDirectoryDomainTrustDirection.variable(String name)
    : this._(TfArg.variable(name));
  ActiveDirectoryDomainTrustDirection.expression(String template)
    : this._(TfArg.expression(template));
  const ActiveDirectoryDomainTrustDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const inbound = ActiveDirectoryDomainTrustDirection._(
    TfArgLiteral('INBOUND'),
  );
  static const outbound = ActiveDirectoryDomainTrustDirection._(
    TfArgLiteral('OUTBOUND'),
  );
  static const bidirectional = ActiveDirectoryDomainTrustDirection._(
    TfArgLiteral('BIDIRECTIONAL'),
  );

  static const List<ActiveDirectoryDomainTrustDirection> values = [
    inbound,
    outbound,
    bidirectional,
  ];
}

/// Active Directory Domain Trust enum for `trust_type`.
extension type const ActiveDirectoryDomainTrustType._(TfArg<String> _)
    implements TfArg<String> {
  ActiveDirectoryDomainTrustType.variable(String name)
    : this._(TfArg.variable(name));
  ActiveDirectoryDomainTrustType.expression(String template)
    : this._(TfArg.expression(template));
  const ActiveDirectoryDomainTrustType.arg(TfArg<String> arg) : this._(arg);

  static const forest = ActiveDirectoryDomainTrustType._(
    TfArgLiteral('FOREST'),
  );
  static const external = ActiveDirectoryDomainTrustType._(
    TfArgLiteral('EXTERNAL'),
  );

  static const List<ActiveDirectoryDomainTrustType> values = [forest, external];
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

  GoogleActiveDirectoryDomainTrust(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> domain,
    TfArg<String>? project,
    TfArg<bool>? selectiveAuthentication,
    required TfArg<List<String>> targetDnsIpAddresses,
    required TfArg<String> targetDomainName,
    required ActiveDirectoryDomainTrustDirection trustDirection,
    required TfArg<String> trustHandshakeSecret,
    required ActiveDirectoryDomainTrustType trustType,
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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `selective_authentication` attribute.
  TfRef<bool> get selectiveAuthentication =>
      TfRef.attribute<bool>(this, 'selective_authentication');

  /// Reference to `target_dns_ip_addresses` attribute.
  TfRef<List<String>> get targetDnsIpAddresses =>
      TfRef.attribute<List<String>>(this, 'target_dns_ip_addresses');

  /// Reference to `target_domain_name` attribute.
  TfRef<String> get targetDomainName =>
      TfRef.attribute<String>(this, 'target_domain_name');

  /// Reference to `trust_direction` attribute.
  TfRef<String> get trustDirection =>
      TfRef.attribute<String>(this, 'trust_direction');

  /// Reference to `trust_handshake_secret` attribute.
  TfRef<String> get trustHandshakeSecret =>
      TfRef.attribute<String>(this, 'trust_handshake_secret');

  /// Reference to `trust_type` attribute.
  TfRef<String> get trustType => TfRef.attribute<String>(this, 'trust_type');
}
