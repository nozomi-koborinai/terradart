// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_ssl_policy.dart' show GoogleComputeSslPolicy;
import '../compute/google_compute_url_map.dart' show GoogleComputeUrlMap;

/// Sensitive field paths for `google_compute_target_https_proxy`.
const Set<String> _googleComputeTargetHttpsProxySensitive = <String>{};

// Phase 4.5.1: dartTypeOverrides re-enabled. Callers pass enum values
// directly; TfArg detects `.terraformValue` getter.

/// QUIC negotiation policy for the HTTPS target proxy. When set to
/// [none] (the default), Google manages whether QUIC is offered to
/// clients; [enable] always offers QUIC; [disable] never offers it.
enum QuicOverride implements TerraformEnum {
  none('NONE'),
  enable('ENABLE'),
  disable('DISABLE');

  const QuicOverride(this.terraformValue);
  @override
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
enum TlsEarlyData implements TerraformEnum {
  strict('STRICT'),
  permissive('PERMISSIVE'),
  unrestricted('UNRESTRICTED'),
  disabled('DISABLED');

  const TlsEarlyData(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `certificate_manager_certificates`, `ssl_certificates` on `google_compute_target_https_proxy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.certificateManagerCertificates(...)`.
sealed class ComputeTargetHttpsProxyCertificates {
  const ComputeTargetHttpsProxyCertificates();

  /// Sets `certificate_manager_certificates`.
  const factory ComputeTargetHttpsProxyCertificates.certificateManagerCertificates(
    TfArg<List<String>> certificateManagerCertificates,
  ) = ComputeTargetHttpsProxyCertificateManagerCertificates;

  /// Sets `ssl_certificates`.
  const factory ComputeTargetHttpsProxyCertificates.sslCertificates(
    TfArg<List<String>> sslCertificates,
  ) = ComputeTargetHttpsProxySslCertificates;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeTargetHttpsProxyCertificates.certificateManagerCertificates] choice: sets `certificate_manager_certificates`.
final class ComputeTargetHttpsProxyCertificateManagerCertificates
    extends ComputeTargetHttpsProxyCertificates {
  const ComputeTargetHttpsProxyCertificateManagerCertificates(
    this.certificateManagerCertificates,
  );

  final TfArg<List<String>> certificateManagerCertificates;

  @override
  String get blockKey => 'certificate_manager_certificates';

  @override
  Map<String, Object?> encode() => {
    'certificate_manager_certificates': certificateManagerCertificates
        .toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'certificate_manager_certificates': certificateManagerCertificates,
  };
}

/// The [ComputeTargetHttpsProxyCertificates.sslCertificates] choice: sets `ssl_certificates`.
final class ComputeTargetHttpsProxySslCertificates
    extends ComputeTargetHttpsProxyCertificates {
  const ComputeTargetHttpsProxySslCertificates(this.sslCertificates);

  final TfArg<List<String>> sslCertificates;

  @override
  String get blockKey => 'ssl_certificates';

  @override
  Map<String, Object?> encode() => {
    'ssl_certificates': sslCertificates.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ssl_certificates': sslCertificates,
  };
}

/// Factory wrapper for `google_compute_target_https_proxy`.
///
/// Represents a TargetHttpsProxy resource, which is used by one or more global
/// forwarding rule to route incoming HTTPS requests to a URL map.
///
/// A global HTTPS target proxy — the TLS-terminating node in the GCP
/// external HTTP(S) load-balancer chain. The full chain is:
///
/// ```text
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
///   `otherProxy.name`.
/// - `urlMap`: self-link of the upstream
///   [GoogleComputeUrlMap]. Pass `urlMap.selfLink` so the
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
///   The other choice of [certificates].
///
/// Example (classic SSL certificate, external HTTPS LB):
/// ```dart
/// final httpsProxy = GoogleComputeTargetHttpsProxy(
///   'lb_https',
///   name: TfArg.literal('lb-https-proxy'),
///   urlMap: urlMap.ref,
///   certificates: .sslCertificates(
///     TfArg.literal(const ['projects/my-proj/global/sslCertificates/my-cert']),
///   ),
///   sslPolicy: sslPolicy.ref,
///   quicOverride: TfArg.literal(QuicOverride.enable),
/// );
/// ```
///
/// `sslPolicy` is the self-link of a [GoogleComputeSslPolicy].
///
/// Composition pattern: extends `Resource`
/// for runtime behavior.
final class GoogleComputeTargetHttpsProxy extends Resource {
  static const String tfType = 'google_compute_target_https_proxy';

  GoogleComputeTargetHttpsProxy(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleComputeUrlMap> urlMap,
    ComputeTargetHttpsProxyCertificates? certificates,
    TfArg<String>? certificateMap,
    RefTo<GoogleComputeSslPolicy>? sslPolicy,
    TfArg<String>? serverTlsPolicy,
    TfArg<QuicOverride>? quicOverride,
    TfArg<TlsEarlyData>? tlsEarlyData,
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
           ...?certificates?.argMap,
           'certificate_map': ?certificateMap,
           'ssl_policy': ?sslPolicy?.encodeAs('self_link'),
           'server_tls_policy': ?serverTlsPolicy,
           'quic_override': ?quicOverride,
           'tls_early_data': ?tlsEarlyData,
           'proxy_bind': ?proxyBind,
           'http_keep_alive_timeout_sec': ?httpKeepAliveTimeoutSec,
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeTargetHttpsProxySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeTargetHttpsProxy>`.
  RefTo<GoogleComputeTargetHttpsProxy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `proxy_id` attribute.
  TfRef<num> get proxyId => TfRef.attribute<num>(this, 'proxy_id');

  /// Reference to `certificate_manager_certificates` attribute.
  TfRef<List<String>> get certificateManagerCertificates =>
      TfRef.attribute<List<String>>(this, 'certificate_manager_certificates');

  /// Reference to `certificate_map` attribute.
  TfRef<String> get certificateMap =>
      TfRef.attribute<String>(this, 'certificate_map');

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

  /// Reference to `proxy_bind` attribute.
  TfRef<bool> get proxyBind => TfRef.attribute<bool>(this, 'proxy_bind');

  /// Reference to `quic_override` attribute.
  TfRef<String> get quicOverride =>
      TfRef.attribute<String>(this, 'quic_override');

  /// Reference to `server_tls_policy` attribute.
  TfRef<String> get serverTlsPolicy =>
      TfRef.attribute<String>(this, 'server_tls_policy');

  /// Reference to `ssl_certificates` attribute.
  TfRef<List<String>> get sslCertificates =>
      TfRef.attribute<List<String>>(this, 'ssl_certificates');

  /// Reference to `ssl_policy` attribute.
  TfRef<String> get sslPolicy => TfRef.attribute<String>(this, 'ssl_policy');

  /// Reference to `tls_early_data` attribute.
  TfRef<String> get tlsEarlyData =>
      TfRef.attribute<String>(this, 'tls_early_data');

  /// Reference to `url_map` attribute.
  TfRef<String> get urlMap => TfRef.attribute<String>(this, 'url_map');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/targetHttpsProxies/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Frequently used as the `target`
  /// param of downstream resources like
  /// `google_compute_global_forwarding_rule`.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
