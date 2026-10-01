// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_url_map.dart'
    show GoogleComputeRegionUrlMap;

/// Sensitive field paths for `google_compute_region_target_http_proxy`.
const Set<String> _googleComputeRegionTargetHttpProxySensitive = <String>{};

/// Factory wrapper for `google_compute_region_target_http_proxy`.
///
/// Represents a RegionTargetHttpProxy resource, which is used by one or more
/// forwarding rules to route incoming HTTP requests to a URL map.
///
/// A regional HTTP target proxy — one node in the GCP regional external
/// or internal HTTP(S) load-balancer chain. The full chain is:
///
/// ```text
/// google_compute_forwarding_rule.target
///   → google_compute_region_target_http_proxy
///     → google_compute_region_target_http_proxy.url_map
///       → google_compute_region_url_map.default_service
///         → google_compute_region_backend_service
/// ```
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_region_target_http_proxy.`).
/// - `name`: GCP target proxy resource name. Pass
///   `TfArg.literal('lb-http-proxy')` or
///   `otherProxy.name`.
/// - `urlMap`: self-link of the upstream
///   [GoogleComputeRegionUrlMap] (the *regional* URL map — not the
///   global [GoogleComputeUrlMap]). Pass `urlMap.selfLink`
///   so the value resolves to
///   `${google_compute_region_url_map.<localName>.self_link}`.
/// - `region`: GCP region for the proxy. Although the provider schema
///   marks `region` as optional (falling back to the provider-level
///   region), this wrapper requires it so that regional resources stay
///   explicit in module call sites. Pass
///   `TfArg.literal('us-central1')` or `var.region`.
///
/// Example:
/// ```dart
/// final httpProxy = GoogleComputeRegionTargetHttpProxy(
///   'lb_http',
///   name: TfArg.literal('lb-http-proxy'),
///   urlMap: regionUrlMap.ref,
///   region: TfArg.literal('us-central1'),
/// );
/// ```
///
/// Composition pattern: extends
/// `Resource` for runtime
/// behavior.
final class GoogleComputeRegionTargetHttpProxy extends Resource {
  static const String tfType = 'google_compute_region_target_http_proxy';

  GoogleComputeRegionTargetHttpProxy(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleComputeRegionUrlMap> urlMap,
    required TfArg<String> region,
    TfArg<num>? httpKeepAliveTimeoutSec,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'url_map': urlMap.encodeAs('self_link'),
           'region': region,
           'http_keep_alive_timeout_sec': ?httpKeepAliveTimeoutSec,
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionTargetHttpProxySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionTargetHttpProxy>`.
  RefTo<GoogleComputeRegionTargetHttpProxy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `proxy_id` attribute.
  TfRef<num> get proxyId => TfRef.attribute<num>(this, 'proxy_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `http_keep_alive_timeout_sec` attribute.
  TfRef<num> get httpKeepAliveTimeoutSec =>
      TfRef.attribute<num>(this, 'http_keep_alive_timeout_sec');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `url_map` attribute.
  TfRef<String> get urlMap => TfRef.attribute<String>(this, 'url_map');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/regions/{region}/targetHttpProxies/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Frequently used as the
  /// `target` param of downstream resources like
  /// `google_compute_forwarding_rule`.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
