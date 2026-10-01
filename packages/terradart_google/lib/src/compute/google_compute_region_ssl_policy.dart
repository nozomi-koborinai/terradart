// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_ssl_policy`.
const Set<String> _googleComputeRegionSslPolicySensitive = <String>{};

extension type const RegionSslPolicyProfile._(TfArg<String> _)
    implements TfArg<String> {
  RegionSslPolicyProfile.variable(String name) : this._(TfArg.variable(name));
  RegionSslPolicyProfile.expression(String template)
    : this._(TfArg.expression(template));
  const RegionSslPolicyProfile.arg(TfArg<String> arg) : this._(arg);

  static const compatible = RegionSslPolicyProfile._(
    TfArgLiteral('COMPATIBLE'),
  );
  static const modern = RegionSslPolicyProfile._(TfArgLiteral('MODERN'));
  static const restricted = RegionSslPolicyProfile._(
    TfArgLiteral('RESTRICTED'),
  );
  static const custom = RegionSslPolicyProfile._(TfArgLiteral('CUSTOM'));
  static const fips202205 = RegionSslPolicyProfile._(
    TfArgLiteral('FIPS_202205'),
  );

  static const List<RegionSslPolicyProfile> values = [
    compatible,
    modern,
    restricted,
    custom,
    fips202205,
  ];
}

extension type const RegionSslPolicyMinTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  RegionSslPolicyMinTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  RegionSslPolicyMinTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const RegionSslPolicyMinTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const tls10 = RegionSslPolicyMinTlsVersion._(TfArgLiteral('TLS_1_0'));
  static const tls11 = RegionSslPolicyMinTlsVersion._(TfArgLiteral('TLS_1_1'));
  static const tls12 = RegionSslPolicyMinTlsVersion._(TfArgLiteral('TLS_1_2'));
  static const tls13 = RegionSslPolicyMinTlsVersion._(TfArgLiteral('TLS_1_3'));

  static const List<RegionSslPolicyMinTlsVersion> values = [
    tls10,
    tls11,
    tls12,
    tls13,
  ];
}

/// Factory wrapper for `google_compute_region_ssl_policy`.
///
/// Represents a Regional SSL policy. SSL policies give you the ability to
/// control the features of SSL that your SSL proxy or HTTPS load balancer
/// negotiates.
final class GoogleComputeRegionSslPolicy extends Resource {
  static const String tfType = 'google_compute_region_ssl_policy';

  GoogleComputeRegionSslPolicy(
    super.localName, {
    TfArg<List<String>>? customFeatures,
    TfArg<String>? description,
    RegionSslPolicyMinTlsVersion? minTlsVersion,
    required TfArg<String> name,
    RegionSslPolicyProfile? profile,
    TfArg<String>? project,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_features': ?customFeatures,
           'description': ?description,
           'min_tls_version': ?minTlsVersion,
           'name': name,
           'profile': ?profile,
           'project': ?project,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionSslPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionSslPolicy>`.
  RefTo<GoogleComputeRegionSslPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `enabled_features` attribute.
  TfRef<List<String>> get enabledFeatures =>
      TfRef.attribute<List<String>>(this, 'enabled_features');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `custom_features` attribute.
  TfRef<List<String>> get customFeatures =>
      TfRef.attribute<List<String>>(this, 'custom_features');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `min_tls_version` attribute.
  TfRef<String> get minTlsVersion =>
      TfRef.attribute<String>(this, 'min_tls_version');

  /// Reference to `post_quantum_key_exchange` attribute.
  TfRef<String> get postQuantumKeyExchange =>
      TfRef.attribute<String>(this, 'post_quantum_key_exchange');

  /// Reference to `profile` attribute.
  TfRef<String> get profile => TfRef.attribute<String>(this, 'profile');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
