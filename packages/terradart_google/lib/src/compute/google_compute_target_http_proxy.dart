// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_target_http_proxy`.
const Set<String> _googleComputeTargetHttpProxySensitive = <String>{};

/// Factory wrapper for `google_compute_target_http_proxy` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A global HTTP target proxy — one node in the GCP external HTTP(S)
/// load-balancer chain. The full chain is:
///
/// ```
/// google_compute_global_forwarding_rule.target
///   → google_compute_target_http_proxy
///     → google_compute_target_http_proxy.url_map
///       → google_compute_url_map.default_service
///         → google_compute_backend_service
/// ```
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_target_http_proxy.`).
/// - `name`: GCP target proxy resource name. Pass
///   `TfArg.literal('lb-http-proxy')` or
///   `TfArg.ref(otherProxy.nameRef)`.
/// - `urlMap`: self-link of the upstream
///   [GoogleComputeUrlMap]. Pass `TfArg.ref(urlMap.selfLink)` so the
///   value resolves to `${google_compute_url_map.<localName>.self_link}`.
///
/// Example:
/// ```dart
/// final httpProxy = GoogleComputeTargetHttpProxy(
///   localName: 'lb_http',
///   name: TfArg.literal('lb-http-proxy'),
///   urlMap: TfArg.ref(urlMap.selfLink),
/// );
/// ```
///
/// Composition pattern: extends `Resource<$GoogleComputeTargetHttpProxy>`
/// for runtime behavior.
final class GoogleComputeTargetHttpProxy extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_target_http_proxy';

  GoogleComputeTargetHttpProxy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> urlMap,
    TfArg<bool>? proxyBind,
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
            if (proxyBind != null) 'proxy_bind': proxyBind,
            if (httpKeepAliveTimeoutSec != null)
              'http_keep_alive_timeout_sec': httpKeepAliveTimeoutSec,
            if (description != null) 'description': description,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleComputeTargetHttpProxySensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `proxy.nameRef` →
  /// `${google_compute_target_http_proxy.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/targetHttpProxies/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Frequently used as the `target`
  /// param of downstream resources like
  /// `google_compute_global_forwarding_rule`.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to the computed `proxy_id` attribute — the numeric GCP
  /// resource identifier. Available after apply.
  TfRef<num> get proxyIdRef => TfRef.attribute<num>(this, 'proxy_id');
}
