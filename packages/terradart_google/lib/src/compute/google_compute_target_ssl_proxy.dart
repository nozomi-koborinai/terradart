// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_backend_service.dart'
    show GoogleComputeBackendService;
import '../compute/google_compute_ssl_policy.dart' show GoogleComputeSslPolicy;

/// Sensitive field paths for `google_compute_target_ssl_proxy`.
const Set<String> _googleComputeTargetSslProxySensitive = <String>{};

enum TargetSslProxyProxyHeader implements TerraformEnum {
  none('NONE'),
  proxyV1('PROXY_V1');

  const TargetSslProxyProxyHeader(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_target_ssl_proxy`.
///
/// Represents a TargetSslProxy resource, which is used by one or more global
/// forwarding rule to route incoming SSL requests to a backend service.
final class GoogleComputeTargetSslProxy extends Resource {
  static const String tfType = 'google_compute_target_ssl_proxy';

  GoogleComputeTargetSslProxy({
    required super.localName,
    required RefTo<GoogleComputeBackendService> backendService,
    TfArg<String>? certificateMap,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<TargetSslProxyProxyHeader>? proxyHeader,
    TfArg<List<String>>? sslCertificates,
    RefTo<GoogleComputeSslPolicy>? sslPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backend_service': backendService.encodeAs('self_link'),
           'certificate_map': ?certificateMap,
           'description': ?description,
           'name': name,
           'project': ?project,
           'proxy_header': ?proxyHeader,
           'ssl_certificates': ?sslCertificates,
           'ssl_policy': ?sslPolicy?.encodeAs('self_link'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeTargetSslProxySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeTargetSslProxy>`.
  RefTo<GoogleComputeTargetSslProxy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `proxy_id` attribute.
  TfRef<num> get proxyId => TfRef.attribute<num>(this, 'proxy_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `backend_service` attribute.
  TfRef<String> get backendService =>
      TfRef.attribute<String>(this, 'backend_service');

  /// Reference to `certificate_map` attribute.
  TfRef<String> get certificateMap =>
      TfRef.attribute<String>(this, 'certificate_map');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `proxy_header` attribute.
  TfRef<String> get proxyHeader =>
      TfRef.attribute<String>(this, 'proxy_header');

  /// Reference to `ssl_certificates` attribute.
  TfRef<List<String>> get sslCertificates =>
      TfRef.attribute<List<String>>(this, 'ssl_certificates');

  /// Reference to `ssl_policy` attribute.
  TfRef<String> get sslPolicy => TfRef.attribute<String>(this, 'ssl_policy');
}
