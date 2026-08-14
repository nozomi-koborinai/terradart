// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_endpoints_service`.
const Set<String> _googleEndpointsServiceSensitive = <String>{};

/// Factory wrapper for `google_endpoints_service`.
///
/// Cloud Endpoints **service** — OpenAPI or gRPC service-config metadata
/// in Service Management. Creating the service does **not** deploy an
/// ESP/ESPv2 proxy or send Service Control operations (those SKUs fire
/// only when traffic hits a deployed proxy).
///
/// Prefer a thin smoke stack: [serviceName]
/// `$name.endpoints.$projectId.cloud.goog` plus inline [openapiConfig]
/// (Swagger 2.0 `host` must match [serviceName]). Omit [grpcConfig] /
/// [protocOutputBase64] unless you have a compiled descriptor. Set
/// [deletionPolicy] to `DELETE` so destroy removes the unused service.
///
/// Enable `servicemanagement.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleEndpointsService(
///   localName: 'echo',
///   serviceName: TfArg.literal('terradart.endpoints.$projectId.cloud.goog'),
///   openapiConfig: TfArg.literal(openapiYaml),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleEndpointsService extends Resource {
  static const String tfType = 'google_endpoints_service';

  GoogleEndpointsService({
    required super.localName,
    required TfArg<String> serviceName,
    TfArg<String>? openapiConfig,
    TfArg<String>? grpcConfig,
    TfArg<String>? protocOutputBase64,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_name': serviceName,
           if (openapiConfig != null) 'openapi_config': openapiConfig,
           if (grpcConfig != null) 'grpc_config': grpcConfig,
           if (protocOutputBase64 != null)
             'protoc_output_base64': protocOutputBase64,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEndpointsServiceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `apis` attribute.
  TfRef<List<Map<String, Object?>>> get apis =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'apis');

  /// Reference to `config_id` attribute.
  TfRef<String> get configId => TfRef.attribute<String>(this, 'config_id');

  /// Reference to `dns_address` attribute.
  TfRef<String> get dnsAddress => TfRef.attribute<String>(this, 'dns_address');

  /// Reference to `endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get endpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoints');
}
