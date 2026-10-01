// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/google_compute_region_target_https_proxy.dart';

/// Sensitive field paths for `google_compute_region_target_https_proxy`.
const Set<String> _googleComputeRegionTargetHttpsProxySensitive = <String>{};

/// Factory wrapper for `google_compute_region_target_https_proxy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRegionTargetHttpsProxy extends Data {
  static const String tfType = 'google_compute_region_target_https_proxy';

  DataGoogleComputeRegionTargetHttpsProxy(
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
  Set<String> get sensitiveFields =>
      _googleComputeRegionTargetHttpsProxySensitive;

  /// A reference to the `google_compute_region_target_https_proxy` this data source reads, for
  /// arguments typed `RefTo<GoogleComputeRegionTargetHttpsProxy>`.
  RefTo<GoogleComputeRegionTargetHttpsProxy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_manager_certificates` attribute.
  TfRef<List<String>> get certificateManagerCertificates =>
      TfRef.attribute<List<String>>(this, 'certificate_manager_certificates');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `http_keep_alive_timeout_sec` attribute.
  TfRef<num> get httpKeepAliveTimeoutSec =>
      TfRef.attribute<num>(this, 'http_keep_alive_timeout_sec');

  /// Reference to `proxy_id` attribute.
  TfRef<num> get proxyId => TfRef.attribute<num>(this, 'proxy_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `server_tls_policy` attribute.
  TfRef<String> get serverTlsPolicy =>
      TfRef.attribute<String>(this, 'server_tls_policy');

  /// Reference to `ssl_certificates` attribute.
  TfRef<List<String>> get sslCertificates =>
      TfRef.attribute<List<String>>(this, 'ssl_certificates');

  /// Reference to `ssl_policy` attribute.
  TfRef<String> get sslPolicy => TfRef.attribute<String>(this, 'ssl_policy');

  /// Reference to `url_map` attribute.
  TfRef<String> get urlMap => TfRef.attribute<String>(this, 'url_map');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
