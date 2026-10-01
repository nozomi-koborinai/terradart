// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_public_advertised_prefix`.
const Set<String> _googleComputePublicAdvertisedPrefixSensitive = <String>{};

/// Compute Public Advertised Prefix Ipv6 Access enum for `ipv6_access_type`.
extension type const ComputePublicAdvertisedPrefixIpv6AccessType._(
  TfArg<String> _
) implements TfArg<String> {
  ComputePublicAdvertisedPrefixIpv6AccessType.variable(String name)
    : this._(TfArg.variable(name));
  ComputePublicAdvertisedPrefixIpv6AccessType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputePublicAdvertisedPrefixIpv6AccessType.arg(TfArg<String> arg)
    : this._(arg);

  static const external = ComputePublicAdvertisedPrefixIpv6AccessType._(
    TfArgLiteral('EXTERNAL'),
  );
  static const internal = ComputePublicAdvertisedPrefixIpv6AccessType._(
    TfArgLiteral('INTERNAL'),
  );

  static const List<ComputePublicAdvertisedPrefixIpv6AccessType> values = [
    external,
    internal,
  ];
}

/// Compute Public Advertised Prefix Pdp enum for `pdp_scope`.
extension type const ComputePublicAdvertisedPrefixPdpScope._(TfArg<String> _)
    implements TfArg<String> {
  ComputePublicAdvertisedPrefixPdpScope.variable(String name)
    : this._(TfArg.variable(name));
  ComputePublicAdvertisedPrefixPdpScope.expression(String template)
    : this._(TfArg.expression(template));
  const ComputePublicAdvertisedPrefixPdpScope.arg(TfArg<String> arg)
    : this._(arg);

  static const global = ComputePublicAdvertisedPrefixPdpScope._(
    TfArgLiteral('GLOBAL'),
  );
  static const regional = ComputePublicAdvertisedPrefixPdpScope._(
    TfArgLiteral('REGIONAL'),
  );

  static const List<ComputePublicAdvertisedPrefixPdpScope> values = [
    global,
    regional,
  ];
}

/// Factory wrapper for `google_compute_public_advertised_prefix`.
///
/// Represents a PublicAdvertisedPrefix for use with bring your own IP addresses
/// (BYOIP).
///
/// BYOIP public advertised prefix — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleComputePublicAdvertisedPrefix extends Resource {
  static const String tfType = 'google_compute_public_advertised_prefix';

  GoogleComputePublicAdvertisedPrefix(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? dnsVerificationIp,
    required TfArg<String> ipCidrRange,
    TfArg<String>? ipv6AccessType,
    required TfArg<String> name,
    ComputePublicAdvertisedPrefixPdpScope? pdpScope,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'dns_verification_ip': ?dnsVerificationIp,
           'ip_cidr_range': ipCidrRange,
           'ipv6_access_type': ?ipv6AccessType,
           'name': name,
           'pdp_scope': ?pdpScope,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputePublicAdvertisedPrefixSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputePublicAdvertisedPrefix>`.
  RefTo<GoogleComputePublicAdvertisedPrefix> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `shared_secret` attribute.
  TfRef<String> get sharedSecret =>
      TfRef.attribute<String>(this, 'shared_secret');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dns_verification_ip` attribute.
  TfRef<String> get dnsVerificationIp =>
      TfRef.attribute<String>(this, 'dns_verification_ip');

  /// Reference to `ip_cidr_range` attribute.
  TfRef<String> get ipCidrRange =>
      TfRef.attribute<String>(this, 'ip_cidr_range');

  /// Reference to `ipv6_access_type` attribute.
  TfRef<String> get ipv6AccessType =>
      TfRef.attribute<String>(this, 'ipv6_access_type');

  /// Reference to `pdp_scope` attribute.
  TfRef<String> get pdpScope => TfRef.attribute<String>(this, 'pdp_scope');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
