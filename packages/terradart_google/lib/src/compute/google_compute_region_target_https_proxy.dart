// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_ssl_certificate.dart'
    show GoogleComputeRegionSslCertificate;
import '../compute/google_compute_region_ssl_policy.dart'
    show GoogleComputeRegionSslPolicy;
import '../compute/google_compute_region_url_map.dart'
    show GoogleComputeRegionUrlMap;
import '../compute/google_compute_ssl_policy.dart' show GoogleComputeSslPolicy;

/// Sensitive field paths for `google_compute_region_target_https_proxy`.
const Set<String> _googleComputeRegionTargetHttpsProxySensitive = <String>{};

/// At most one of `certificate_manager_certificates`, `ssl_certificates` on `google_compute_region_target_https_proxy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.certificateManagerCertificates(...)`.
sealed class ComputeRegionTargetHttpsProxyCertificates {
  const ComputeRegionTargetHttpsProxyCertificates();

  /// Sets `certificate_manager_certificates`.
  const factory ComputeRegionTargetHttpsProxyCertificates.certificateManagerCertificates(
    TfArg<List<String>> certificateManagerCertificates,
  ) = ComputeRegionTargetHttpsProxyCertificateManagerCertificates;

  /// Sets `ssl_certificates`.
  const factory ComputeRegionTargetHttpsProxyCertificates.sslCertificates(
    TfArg<List<RefTo<GoogleComputeRegionSslCertificate>>> sslCertificates,
  ) = ComputeRegionTargetHttpsProxySslCertificates;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeRegionTargetHttpsProxyCertificates.certificateManagerCertificates] choice: sets `certificate_manager_certificates`.
final class ComputeRegionTargetHttpsProxyCertificateManagerCertificates
    extends ComputeRegionTargetHttpsProxyCertificates {
  const ComputeRegionTargetHttpsProxyCertificateManagerCertificates(
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

/// The [ComputeRegionTargetHttpsProxyCertificates.sslCertificates] choice: sets `ssl_certificates`.
final class ComputeRegionTargetHttpsProxySslCertificates
    extends ComputeRegionTargetHttpsProxyCertificates {
  const ComputeRegionTargetHttpsProxySslCertificates(this.sslCertificates);

  final TfArg<List<RefTo<GoogleComputeRegionSslCertificate>>> sslCertificates;

  @override
  String get blockKey => 'ssl_certificates';

  @override
  Map<String, Object?> encode() => {
    'ssl_certificates': sslCertificates.encodeAs('self_link').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ssl_certificates': sslCertificates.encodeAs('self_link'),
  };
}

/// Factory wrapper for `google_compute_region_target_https_proxy`.
///
/// Represents a RegionTargetHttpsProxy resource, which is used by one or more
/// forwarding rules to route incoming HTTPS requests to a URL map.
///
/// A regional HTTPS target proxy — the TLS-terminating node in the GCP
/// regional external or internal HTTP(S) load-balancer chain. The full
/// chain is:
///
/// ```text
/// google_compute_forwarding_rule.target
///   → google_compute_region_target_https_proxy
///     → google_compute_region_target_https_proxy.url_map
///       → google_compute_region_url_map.default_service
///         → google_compute_region_backend_service
/// ```
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_region_target_https_proxy.`).
/// - `name`: GCP target proxy resource name. Pass
///   `TfArg.literal('lb-https-proxy')` or
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
/// TLS material — exactly one of:
/// - `sslCertificates`: list of **regional** SSL certificates
///   (`GoogleComputeRegionSslCertificate`): `cert.ref`, or
///   `.literal('projects/my-proj/regions/us-central1/sslCertificates/my-cert')`
///   for one outside the stack. The classic certificate path; works for EXTERNAL_MANAGED and
///   INTERNAL_MANAGED regional load-balancing schemes.
/// - `certificateManagerCertificates`: list of Certificate Manager
///   certificate URLs (the
///   `//certificatemanager.googleapis.com/projects/{p}/locations/{l}/certificates/{r}`
///   form, or the bare `projects/.../locations/.../certificates/{r}`
///   self-link). The other choice of
///   [certificates].
///
/// Example (classic regional SSL certificate, regional HTTPS LB):
/// ```dart
/// final httpsProxy = GoogleComputeRegionTargetHttpsProxy(
///   localName: 'lb_https',
///   name: TfArg.literal('lb-https-proxy'),
///   urlMap: regionUrlMap.ref,
///   region: TfArg.literal('us-central1'),
///   certificates: .sslCertificates(.literal([cert.ref])),
///   sslPolicy: regionSslPolicy.ref,
/// );
/// ```
///
/// `sslPolicy` is the self-link of a [GoogleComputeRegionSslPolicy] in
/// the same region. The global [GoogleComputeSslPolicy] cannot be used
/// here.
///
/// Note: unlike the global `google_compute_target_https_proxy`, the
/// regional variant does **not** support `quic_override`,
/// `tls_early_data`, `proxy_bind`, or `certificate_map`. The provider
/// schema omits these fields for regional proxies.
///
/// Composition pattern: extends
/// `Resource` for runtime
/// behavior.
final class GoogleComputeRegionTargetHttpsProxy extends Resource {
  static const String tfType = 'google_compute_region_target_https_proxy';

  GoogleComputeRegionTargetHttpsProxy({
    required super.localName,
    required TfArg<String> name,
    required RefTo<GoogleComputeRegionUrlMap> urlMap,
    required TfArg<String> region,
    ComputeRegionTargetHttpsProxyCertificates? certificates,
    RefTo<GoogleComputeRegionSslPolicy>? sslPolicy,
    RefTo<GoogleComputeSslPolicy>? serverTlsPolicy,
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
           ...?certificates?.argMap,
           'ssl_policy': ?sslPolicy?.encodeAs('self_link'),
           'server_tls_policy': ?serverTlsPolicy?.encodeAs('self_link'),
           'http_keep_alive_timeout_sec': ?httpKeepAliveTimeoutSec,
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionTargetHttpsProxySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionTargetHttpsProxy>`.
  RefTo<GoogleComputeRegionTargetHttpsProxy> get ref => RefTo.of(this);

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `proxy_id` attribute.
  TfRef<num> get proxyId => TfRef.attribute<num>(this, 'proxy_id');

  /// Reference to `certificate_manager_certificates` attribute.
  TfRef<List<String>> get certificateManagerCertificatesRef =>
      TfRef.attribute<List<String>>(this, 'certificate_manager_certificates');

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

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `server_tls_policy` attribute.
  TfRef<String> get serverTlsPolicyRef =>
      TfRef.attribute<String>(this, 'server_tls_policy');

  /// Reference to `ssl_certificates` attribute.
  TfRef<List<String>> get sslCertificatesRef =>
      TfRef.attribute<List<String>>(this, 'ssl_certificates');

  /// Reference to `ssl_policy` attribute.
  TfRef<String> get sslPolicyRef => TfRef.attribute<String>(this, 'ssl_policy');

  /// Reference to `url_map` attribute.
  TfRef<String> get urlMapRef => TfRef.attribute<String>(this, 'url_map');

  /// Reference to `name` attribute. Use for interpolations like
  /// `proxy.nameRef` →
  /// `${google_compute_region_target_https_proxy.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/regions/{region}/targetHttpsProxies/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Frequently used as the
  /// `target` param of downstream resources like
  /// `google_compute_forwarding_rule`.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
