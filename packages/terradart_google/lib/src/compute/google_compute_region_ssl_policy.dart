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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customFeatures != null) 'custom_features': customFeatures,
           if (description != null) 'description': description,
           if (minTlsVersion != null) 'min_tls_version': minTlsVersion,
           'name': name,
           if (profile != null) 'profile': profile,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionSslPolicySensitive;

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
}
