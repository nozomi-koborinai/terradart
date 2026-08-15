// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_public_advertised_prefix`.
const Set<String> _googleComputePublicAdvertisedPrefixSensitive = <String>{};

/// Compute Public Advertised Prefix Ipv6 Access enum for `ipv6_access_type`.
enum ComputePublicAdvertisedPrefixIpv6AccessType implements TerraformEnum {
  external('EXTERNAL'),
  internal('INTERNAL');

  const ComputePublicAdvertisedPrefixIpv6AccessType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Public Advertised Prefix Pdp enum for `pdp_scope`.
enum ComputePublicAdvertisedPrefixPdpScope implements TerraformEnum {
  global('GLOBAL'),
  regional('REGIONAL');

  const ComputePublicAdvertisedPrefixPdpScope(this.terraformValue);
  @override
  final String terraformValue;
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

  GoogleComputePublicAdvertisedPrefix({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? dnsVerificationIp,
    required TfArg<String> ipCidrRange,
    TfArg<String>? ipv6AccessType,
    required TfArg<String> name,
    TfArg<ComputePublicAdvertisedPrefixPdpScope>? pdpScope,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (dnsVerificationIp != null)
             'dns_verification_ip': dnsVerificationIp,
           'ip_cidr_range': ipCidrRange,
           if (ipv6AccessType != null) 'ipv6_access_type': ipv6AccessType,
           'name': name,
           if (pdpScope != null) 'pdp_scope': pdpScope,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputePublicAdvertisedPrefixSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `shared_secret` attribute.
  TfRef<String> get sharedSecret =>
      TfRef.attribute<String>(this, 'shared_secret');
}
