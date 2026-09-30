// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_ssl_policy`.
const Set<String> _googleComputeRegionSslPolicySensitive = <String>{};

enum RegionSslPolicyProfile implements TerraformEnum {
  compatible('COMPATIBLE'),
  modern('MODERN'),
  restricted('RESTRICTED'),
  custom('CUSTOM'),
  fips202205('FIPS_202205');

  const RegionSslPolicyProfile(this.terraformValue);
  @override
  final String terraformValue;
}

enum RegionSslPolicyMinTlsVersion implements TerraformEnum {
  tls10('TLS_1_0'),
  tls11('TLS_1_1'),
  tls12('TLS_1_2'),
  tls13('TLS_1_3');

  const RegionSslPolicyMinTlsVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_region_ssl_policy`.
///
/// Represents a Regional SSL policy. SSL policies give you the ability to
/// control the features of SSL that your SSL proxy or HTTPS load balancer
/// negotiates.
final class GoogleComputeRegionSslPolicy extends Resource {
  static const String tfType = 'google_compute_region_ssl_policy';

  GoogleComputeRegionSslPolicy({
    required super.localName,
    TfArg<List<String>>? customFeatures,
    TfArg<String>? description,
    TfArg<RegionSslPolicyMinTlsVersion>? minTlsVersion,
    required TfArg<String> name,
    TfArg<RegionSslPolicyProfile>? profile,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
  TfRef<List<String>> get customFeaturesRef =>
      TfRef.attribute<List<String>>(this, 'custom_features');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `min_tls_version` attribute.
  TfRef<String> get minTlsVersionRef =>
      TfRef.attribute<String>(this, 'min_tls_version');

  /// Reference to `post_quantum_key_exchange` attribute.
  TfRef<String> get postQuantumKeyExchangeRef =>
      TfRef.attribute<String>(this, 'post_quantum_key_exchange');

  /// Reference to `profile` attribute.
  TfRef<String> get profileRef => TfRef.attribute<String>(this, 'profile');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
