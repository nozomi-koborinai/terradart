// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_tls_inspection_policy`.
const Set<String> _googleNetworkSecurityTlsInspectionPolicySensitive =
    <String>{};

/// Network Security Tls Inspection Policy Min Tls enum for `min_tls_version`.
enum NetworkSecurityTlsInspectionPolicyMinTlsVersion implements TerraformEnum {
  tlsVersionUnspecified('TLS_VERSION_UNSPECIFIED'),
  tls10('TLS_1_0'),
  tls11('TLS_1_1'),
  tls12('TLS_1_2'),
  tls13('TLS_1_3');

  const NetworkSecurityTlsInspectionPolicyMinTlsVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Network Security Tls Inspection Policy Tls Feature enum for `tls_feature_profile`.
enum NetworkSecurityTlsInspectionPolicyTlsFeatureProfile
    implements TerraformEnum {
  profileUnspecified('PROFILE_UNSPECIFIED'),
  profileCompatible('PROFILE_COMPATIBLE'),
  profileModern('PROFILE_MODERN'),
  profileRestricted('PROFILE_RESTRICTED'),
  profileCustom('PROFILE_CUSTOM');

  const NetworkSecurityTlsInspectionPolicyTlsFeatureProfile(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_security_tls_inspection_policy`.
///
/// The TlsInspectionPolicy resource contains references to CA pools in
/// Certificate Authority Service and associated metadata.
///
/// Network Security **TLS inspection policy** — CA pool / trust settings
/// for decrypting TLS when Cloud NGFW Enterprise inspects encrypted traffic.
///
/// **Cost / apply:** gcp-cost: Network Security `E749-01A2-AE1F` Cloud NGFW
/// Enterprise Endpoint Uptime SKU `B778-1457-4A22` **$1.75/h** (plus Cloud
/// NGFW Enterprise Data Processing `994B-C7B9-C1F7` **$0.0193/GiBy** when
/// traffic is inspected). billing-behavior: the policy is configuration for
/// NGFW TLS inspection; applying it in a working stack implies NGFW
/// Enterprise endpoint hours + decrypted data processing. Not a cheap
/// standalone smoke resource — debt-only. **Never** wire into apply-smoke.
///
/// Enable `networksecurity.googleapis.com` before apply. [caPool] is
/// required (Certificate Authority Service pool resource name).
final class GoogleNetworkSecurityTlsInspectionPolicy extends Resource {
  static const String tfType = 'google_network_security_tls_inspection_policy';

  GoogleNetworkSecurityTlsInspectionPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> caPool,
    TfArg<String>? location,
    TfArg<String>? description,
    TfArg<String>? trustConfig,
    TfArg<NetworkSecurityTlsInspectionPolicyMinTlsVersion>? minTlsVersion,
    TfArg<NetworkSecurityTlsInspectionPolicyTlsFeatureProfile>?
    tlsFeatureProfile,
    TfArg<List<String>>? customTlsFeatures,
    TfArg<bool>? excludePublicCaSet,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'ca_pool': caPool,
           if (location != null) 'location': location,
           if (description != null) 'description': description,
           if (trustConfig != null) 'trust_config': trustConfig,
           if (minTlsVersion != null) 'min_tls_version': minTlsVersion,
           if (tlsFeatureProfile != null)
             'tls_feature_profile': tlsFeatureProfile,
           if (customTlsFeatures != null)
             'custom_tls_features': customTlsFeatures,
           if (excludePublicCaSet != null)
             'exclude_public_ca_set': excludePublicCaSet,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityTlsInspectionPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
