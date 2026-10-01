// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_tls_inspection_policy`.
const Set<String> _googleNetworkSecurityTlsInspectionPolicySensitive =
    <String>{};

/// Network Security Tls Inspection Policy Min Tls enum for `min_tls_version`.
extension type const NetworkSecurityTlsInspectionPolicyMinTlsVersion._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkSecurityTlsInspectionPolicyMinTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityTlsInspectionPolicyMinTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecurityTlsInspectionPolicyMinTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const tlsVersionUnspecified =
      NetworkSecurityTlsInspectionPolicyMinTlsVersion._(
        TfArgLiteral('TLS_VERSION_UNSPECIFIED'),
      );
  static const tls10 = NetworkSecurityTlsInspectionPolicyMinTlsVersion._(
    TfArgLiteral('TLS_1_0'),
  );
  static const tls11 = NetworkSecurityTlsInspectionPolicyMinTlsVersion._(
    TfArgLiteral('TLS_1_1'),
  );
  static const tls12 = NetworkSecurityTlsInspectionPolicyMinTlsVersion._(
    TfArgLiteral('TLS_1_2'),
  );
  static const tls13 = NetworkSecurityTlsInspectionPolicyMinTlsVersion._(
    TfArgLiteral('TLS_1_3'),
  );

  static const List<NetworkSecurityTlsInspectionPolicyMinTlsVersion> values = [
    tlsVersionUnspecified,
    tls10,
    tls11,
    tls12,
    tls13,
  ];
}

/// Network Security Tls Inspection Policy Tls Feature enum for `tls_feature_profile`.
extension type const NetworkSecurityTlsInspectionPolicyTlsFeatureProfile._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkSecurityTlsInspectionPolicyTlsFeatureProfile.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityTlsInspectionPolicyTlsFeatureProfile.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkSecurityTlsInspectionPolicyTlsFeatureProfile.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const profileUnspecified =
      NetworkSecurityTlsInspectionPolicyTlsFeatureProfile._(
        TfArgLiteral('PROFILE_UNSPECIFIED'),
      );
  static const profileCompatible =
      NetworkSecurityTlsInspectionPolicyTlsFeatureProfile._(
        TfArgLiteral('PROFILE_COMPATIBLE'),
      );
  static const profileModern =
      NetworkSecurityTlsInspectionPolicyTlsFeatureProfile._(
        TfArgLiteral('PROFILE_MODERN'),
      );
  static const profileRestricted =
      NetworkSecurityTlsInspectionPolicyTlsFeatureProfile._(
        TfArgLiteral('PROFILE_RESTRICTED'),
      );
  static const profileCustom =
      NetworkSecurityTlsInspectionPolicyTlsFeatureProfile._(
        TfArgLiteral('PROFILE_CUSTOM'),
      );

  static const List<NetworkSecurityTlsInspectionPolicyTlsFeatureProfile>
  values = [
    profileUnspecified,
    profileCompatible,
    profileModern,
    profileRestricted,
    profileCustom,
  ];
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

  GoogleNetworkSecurityTlsInspectionPolicy(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> caPool,
    TfArg<String>? location,
    TfArg<String>? description,
    TfArg<String>? trustConfig,
    NetworkSecurityTlsInspectionPolicyMinTlsVersion? minTlsVersion,
    NetworkSecurityTlsInspectionPolicyTlsFeatureProfile? tlsFeatureProfile,
    TfArg<List<String>>? customTlsFeatures,
    TfArg<bool>? excludePublicCaSet,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'ca_pool': caPool,
           'location': ?location,
           'description': ?description,
           'trust_config': ?trustConfig,
           'min_tls_version': ?minTlsVersion,
           'tls_feature_profile': ?tlsFeatureProfile,
           'custom_tls_features': ?customTlsFeatures,
           'exclude_public_ca_set': ?excludePublicCaSet,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityTlsInspectionPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityTlsInspectionPolicy>`.
  RefTo<GoogleNetworkSecurityTlsInspectionPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `ca_pool` attribute.
  TfRef<String> get caPool => TfRef.attribute<String>(this, 'ca_pool');

  /// Reference to `custom_tls_features` attribute.
  TfRef<List<String>> get customTlsFeatures =>
      TfRef.attribute<List<String>>(this, 'custom_tls_features');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `exclude_public_ca_set` attribute.
  TfRef<bool> get excludePublicCaSet =>
      TfRef.attribute<bool>(this, 'exclude_public_ca_set');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `min_tls_version` attribute.
  TfRef<String> get minTlsVersion =>
      TfRef.attribute<String>(this, 'min_tls_version');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `tls_feature_profile` attribute.
  TfRef<String> get tlsFeatureProfile =>
      TfRef.attribute<String>(this, 'tls_feature_profile');

  /// Reference to `trust_config` attribute.
  TfRef<String> get trustConfig =>
      TfRef.attribute<String>(this, 'trust_config');
}
