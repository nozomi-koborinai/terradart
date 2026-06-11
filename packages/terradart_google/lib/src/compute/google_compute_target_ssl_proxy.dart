// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
final class GoogleComputeTargetSslProxy extends Resource {
  static const String tfType = 'google_compute_target_ssl_proxy';

  GoogleComputeTargetSslProxy({
    required super.localName,
    required TfArg<String> backendService,
    TfArg<String>? certificateMap,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<TargetSslProxyProxyHeader>? proxyHeader,
    TfArg<List<String>>? sslCertificates,
    TfArg<String>? sslPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backend_service': backendService,
           if (certificateMap != null) 'certificate_map': certificateMap,
           if (description != null) 'description': description,
           'name': name,
           if (project != null) 'project': project,
           if (proxyHeader != null) 'proxy_header': proxyHeader,
           if (sslCertificates != null) 'ssl_certificates': sslCertificates,
           if (sslPolicy != null) 'ssl_policy': sslPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeTargetSslProxySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `proxy_id` attribute.
  TfRef<num> get proxyId => TfRef.attribute<num>(this, 'proxy_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
