// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_name': serviceName,
           'openapi_config': ?openapiConfig,
           'grpc_config': ?grpcConfig,
           'protoc_output_base64': ?protocOutputBase64,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEndpointsServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEndpointsService>`.
  RefTo<GoogleEndpointsService> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `grpc_config` attribute.
  TfRef<String> get grpcConfigRef =>
      TfRef.attribute<String>(this, 'grpc_config');

  /// Reference to `openapi_config` attribute.
  TfRef<String> get openapiConfigRef =>
      TfRef.attribute<String>(this, 'openapi_config');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `protoc_output_base64` attribute.
  TfRef<String> get protocOutputBase64Ref =>
      TfRef.attribute<String>(this, 'protoc_output_base64');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceNameRef =>
      TfRef.attribute<String>(this, 'service_name');
}
