// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_target_https_proxy`.
const Set<String> _googleComputeTargetHttpsProxySensitive = <String>{};

// Phase 4.5.1: dartTypeOverrides re-enabled. Callers pass enum values
// directly; TfArg detects `.terraformValue` getter.

/// QUIC negotiation policy for the HTTPS target proxy. When set to
/// [none] (the default), Google manages whether QUIC is offered to
/// clients; [enable] always offers QUIC; [disable] never offers it.
enum QuicOverride {
  none('NONE'),
  enable('ENABLE'),
  disable('DISABLE');

  const QuicOverride(this.terraformValue);
  final String terraformValue;
}

/// TLS 1.3 0-RTT ("Early Data") acceptance policy. Early Data lets a
/// TLS resumption handshake carry the initial application payload
/// alongside the handshake itself, eliminating the extra round trip at
/// the cost of replay risk.
///
/// - [strict]: accept Early Data only for safe-by-spec HTTP methods
///   (GET / HEAD / OPTIONS / TRACE) without bodies.
/// - [permissive]: accept Early Data for the same safe methods, but
///   also when those requests carry a body.
/// - [unrestricted]: accept Early Data on any request. The caller is
///   responsible for handling replay risk.
/// - [disabled]: never accept Early Data (0-RTT off).
enum TlsEarlyData {
  strict('STRICT'),
  permissive('PERMISSIVE'),
  unrestricted('UNRESTRICTED'),
  disabled('DISABLED');

  const TlsEarlyData(this.terraformValue);
  final String terraformValue;
}

/// Factory wrapper for `google_compute_target_https_proxy` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A global HTTPS target proxy — the TLS-terminating node in the GCP
/// external HTTP(S) load-balancer chain. The full chain is:
///
/// ```
/// google_compute_global_forwarding_rule.target
///   → google_compute_target_https_proxy
///     → google_compute_target_https_proxy.url_map
///       → google_compute_url_map.default_service
///         → google_compute_backend_service
/// ```
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_target_https_proxy.`).
/// - `name`: GCP target proxy resource name. Pass
///   `TfArg.literal('lb-https-proxy')` or
///   `TfArg.ref(otherProxy.nameRef)`.
/// - `urlMap`: self-link of the upstream
///   [GoogleComputeUrlMap]. Pass `TfArg.ref(urlMap.selfLink)` so the
///   value resolves to
///   `${google_compute_url_map.<localName>.self_link}`.
///
/// TLS material — exactly one of:
/// - `sslCertificates`: list of self-links to
///   [GoogleComputeSslCertificate] or
///   [GoogleComputeManagedSslCertificate] resources. Up to 15 entries.
///   The classic certificate path; works for EXTERNAL and
///   EXTERNAL_MANAGED load-balancing schemes.
/// - `certificateManagerCertificates`: list of Certificate Manager
///   certificate URLs (the
///   `//certificatemanager.googleapis.com/projects/{p}/locations/{l}/certificates/{r}`
///   form, or the bare `projects/.../certificates/{r}` self-link).
///   Only valid when the load-balancing scheme is INTERNAL_MANAGED.
///   Mutually exclusive with `sslCertificates`.
///
/// Example (classic SSL certificate, external HTTPS LB):
/// ```dart
/// final httpsProxy = GoogleComputeTargetHttpsProxy(
///   localName: 'lb_https',
///   name: TfArg.literal('lb-https-proxy'),
///   urlMap: TfArg.ref(urlMap.selfLink),
///   sslCertificates: TfArg.literal(const [
///     'projects/my-proj/global/sslCertificates/my-cert',
///   ]),
///   sslPolicy: TfArg.ref(var.ssl_policy_id),
///   quicOverride: TfArg.literal(QuicOverride.enable),
/// );
/// ```
///
/// `sslPolicy` is the self-link of a [GoogleComputeSslPolicy] (Batch 4 in
/// the curation roadmap). When passed via input variable use
/// `TfArg.ref(var.ssl_policy_id)`.
///
/// Composition pattern: extends `Resource<$GoogleComputeTargetHttpsProxy>`
/// for runtime behavior.
final class GoogleComputeTargetHttpsProxy extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_target_https_proxy';

  GoogleComputeTargetHttpsProxy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> urlMap,
    TfArg<List<String>>? sslCertificates,
    TfArg<List<String>>? certificateManagerCertificates,
    TfArg<String>? certificateMap,
    TfArg<String>? sslPolicy,
    TfArg<String>? serverTlsPolicy,
    TfArg<QuicOverride>? quicOverride,
    TfArg<TlsEarlyData>? tlsEarlyData,
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
           if (sslCertificates != null) 'ssl_certificates': sslCertificates,
           if (certificateManagerCertificates != null)
             'certificate_manager_certificates': certificateManagerCertificates,
           if (certificateMap != null) 'certificate_map': certificateMap,
           if (sslPolicy != null) 'ssl_policy': sslPolicy,
           if (serverTlsPolicy != null) 'server_tls_policy': serverTlsPolicy,
           if (quicOverride != null) 'quic_override': quicOverride,
           if (tlsEarlyData != null) 'tls_early_data': tlsEarlyData,
           if (proxyBind != null) 'proxy_bind': proxyBind,
           if (httpKeepAliveTimeoutSec != null)
             'http_keep_alive_timeout_sec': httpKeepAliveTimeoutSec,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleComputeTargetHttpsProxySensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `proxy.nameRef` →
  /// `${google_compute_target_https_proxy.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/targetHttpsProxies/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Frequently used as the `target`
  /// param of downstream resources like
  /// `google_compute_global_forwarding_rule`.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to the computed `proxy_id` attribute — the numeric GCP
  /// resource identifier. Available after apply.
  TfRef<num> get proxyIdRef => TfRef.attribute<num>(this, 'proxy_id');
}
