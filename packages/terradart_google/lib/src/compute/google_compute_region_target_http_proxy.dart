// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_target_http_proxy`.
const Set<String> _googleComputeRegionTargetHttpProxySensitive = <String>{};

/// Factory wrapper for `google_compute_region_target_http_proxy`
/// (provider `hashicorp/google ~> 7.0`).
///
/// A regional HTTP target proxy — one node in the GCP regional external
/// or internal HTTP(S) load-balancer chain. The full chain is:
///
/// ```
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
///   `TfArg.ref(otherProxy.nameRef)`.
/// - `urlMap`: self-link of the upstream
///   [GoogleComputeRegionUrlMap] (the *regional* URL map — not the
///   global [GoogleComputeUrlMap]). Pass `TfArg.ref(urlMap.selfLink)`
///   so the value resolves to
///   `${google_compute_region_url_map.<localName>.self_link}`.
/// - `region`: GCP region for the proxy. Although the provider schema
///   marks `region` as optional (falling back to the provider-level
///   region), this wrapper requires it so that regional resources stay
///   explicit in module call sites. Pass
///   `TfArg.literal('us-central1')` or `TfArg.ref(var.region)`.
///
/// Example:
/// ```dart
/// final httpProxy = GoogleComputeRegionTargetHttpProxy(
///   localName: 'lb_http',
///   name: TfArg.literal('lb-http-proxy'),
///   urlMap: TfArg.ref(regionUrlMap.selfLink),
///   region: TfArg.literal('us-central1'),
/// );
/// ```
///
/// Composition pattern: extends
/// `Resource<$GoogleComputeRegionTargetHttpProxy>` for runtime
/// behavior.
final class GoogleComputeRegionTargetHttpProxy extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_region_target_http_proxy';

  GoogleComputeRegionTargetHttpProxy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> urlMap,
    required TfArg<String> region,
    TfArg<num>? httpKeepAliveTimeoutSec,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            'url_map': urlMap,
            'region': region,
            if (httpKeepAliveTimeoutSec != null)
              'http_keep_alive_timeout_sec': httpKeepAliveTimeoutSec,
            if (description != null) 'description': description,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleComputeRegionTargetHttpProxySensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `proxy.nameRef` →
  /// `${google_compute_region_target_http_proxy.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/regions/{region}/targetHttpProxies/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Frequently used as the
  /// `target` param of downstream resources like
  /// `google_compute_forwarding_rule`.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to the computed `proxy_id` attribute — the numeric GCP
  /// resource identifier. Available after apply.
  TfRef<num> get proxyIdRef => TfRef.attribute<num>(this, 'proxy_id');
}
