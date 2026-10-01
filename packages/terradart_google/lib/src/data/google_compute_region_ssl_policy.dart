// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/google_compute_region_ssl_policy.dart';

/// Sensitive field paths for `google_compute_region_ssl_policy`.
const Set<String> _googleComputeRegionSslPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_region_ssl_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRegionSslPolicy extends Data {
  static const String tfType = 'google_compute_region_ssl_policy';

  DataGoogleComputeRegionSslPolicy(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'project': ?project, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionSslPolicySensitive;

  /// A reference to the `google_compute_region_ssl_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleComputeRegionSslPolicy>`.
  RefTo<GoogleComputeRegionSslPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `custom_features` attribute.
  TfRef<List<String>> get customFeatures =>
      TfRef.attribute<List<String>>(this, 'custom_features');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled_features` attribute.
  TfRef<List<String>> get enabledFeatures =>
      TfRef.attribute<List<String>>(this, 'enabled_features');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `min_tls_version` attribute.
  TfRef<String> get minTlsVersion =>
      TfRef.attribute<String>(this, 'min_tls_version');

  /// Reference to `post_quantum_key_exchange` attribute.
  TfRef<String> get postQuantumKeyExchange =>
      TfRef.attribute<String>(this, 'post_quantum_key_exchange');

  /// Reference to `profile` attribute.
  TfRef<String> get profile => TfRef.attribute<String>(this, 'profile');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
