// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_url_map.dart' show GoogleComputeUrlMap;

/// Sensitive field paths for `google_compute_target_http_proxy`.
const Set<String> _googleComputeTargetHttpProxySensitive = <String>{};

/// Factory wrapper for `google_compute_target_http_proxy`.
///
/// Represents a TargetHttpProxy resource, which is used by one or more global
/// forwarding rule to route incoming HTTP requests to a URL map.
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
///   urlMap: urlMap.ref,
/// );
/// ```
///
/// Composition pattern: extends `Resource`
/// for runtime behavior.
final class GoogleComputeTargetHttpProxy extends Resource {
  static const String tfType = 'google_compute_target_http_proxy';

  GoogleComputeTargetHttpProxy({
    required super.localName,
    required TfArg<String> name,
    required RefTo<GoogleComputeUrlMap> urlMap,
    TfArg<bool>? proxyBind,
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
           'proxy_bind': ?proxyBind,
           'http_keep_alive_timeout_sec': ?httpKeepAliveTimeoutSec,
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeTargetHttpProxySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeTargetHttpProxy>`.
  RefTo<GoogleComputeTargetHttpProxy> get ref => RefTo.of(this);

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `proxy_id` attribute.
  TfRef<num> get proxyId => TfRef.attribute<num>(this, 'proxy_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `http_keep_alive_timeout_sec` attribute.
  TfRef<num> get httpKeepAliveTimeoutSecRef =>
      TfRef.attribute<num>(this, 'http_keep_alive_timeout_sec');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `proxy_bind` attribute.
  TfRef<bool> get proxyBindRef => TfRef.attribute<bool>(this, 'proxy_bind');

  /// Reference to `url_map` attribute.
  TfRef<String> get urlMapRef => TfRef.attribute<String>(this, 'url_map');

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
}
