// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_api_config`.
const Set<String> _googleApiGatewayApiConfigSensitive = <String>{};

/// Exactly one of `openapi_documents`, `grpc_services` on `google_api_gateway_api_config`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.openapiDocuments(...)`.
sealed class ApiGatewayApiConfigSpec {
  const ApiGatewayApiConfigSpec();

  /// Sets `openapi_documents`.
  const factory ApiGatewayApiConfigSpec.openapiDocuments(
    List<ApiGatewayApiConfigOpenapiDocuments> openapiDocuments,
  ) = ApiGatewayApiConfigSpecOpenapiDocuments;

  /// Sets `grpc_services`.
  const factory ApiGatewayApiConfigSpec.grpcServices(
    List<ApiGatewayApiConfigGrpcServices> grpcServices,
  ) = ApiGatewayApiConfigSpecGrpcServices;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ApiGatewayApiConfigSpec.openapiDocuments] choice: sets `openapi_documents`.
final class ApiGatewayApiConfigSpecOpenapiDocuments
    extends ApiGatewayApiConfigSpec {
  const ApiGatewayApiConfigSpecOpenapiDocuments(this.openapiDocuments);

  final List<ApiGatewayApiConfigOpenapiDocuments> openapiDocuments;

  @override
  String get blockKey => 'openapi_documents';

  @override
  Map<String, Object?> encode() => {
    'openapi_documents': [for (final e in openapiDocuments) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'openapi_documents': TfArg.literal([
      for (final e in openapiDocuments) e.encode(),
    ]),
  };
}

/// The [ApiGatewayApiConfigSpec.grpcServices] choice: sets `grpc_services`.
final class ApiGatewayApiConfigSpecGrpcServices
    extends ApiGatewayApiConfigSpec {
  const ApiGatewayApiConfigSpecGrpcServices(this.grpcServices);

  final List<ApiGatewayApiConfigGrpcServices> grpcServices;

  @override
  String get blockKey => 'grpc_services';

  @override
  Map<String, Object?> encode() => {
    'grpc_services': [for (final e in grpcServices) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'grpc_services': TfArg.literal([for (final e in grpcServices) e.encode()]),
  };
}

/// Typed helper for the `gateway_config` block of
/// `google_api_gateway_api_config` (derived from provider schema).
@immutable
final class ApiGatewayApiConfigGatewayConfig {
  const ApiGatewayApiConfigGatewayConfig({required this.backendConfig});

  final ApiGatewayApiConfigGatewayConfigBackendConfig backendConfig;

  Map<String, Object?> encode() => {'backend_config': backendConfig.encode()};
}

/// Typed helper for the `gateway_config.backend_config` block of
/// `google_api_gateway_api_config` (derived from provider schema).
@immutable
final class ApiGatewayApiConfigGatewayConfigBackendConfig {
  const ApiGatewayApiConfigGatewayConfigBackendConfig({
    required this.googleServiceAccount,
  });

  final TfArg<String> googleServiceAccount;

  Map<String, Object?> encode() => {
    'google_service_account': googleServiceAccount.toTfJson(),
  };
}

/// Typed helper for the `grpc_services` block of
/// `google_api_gateway_api_config` (derived from provider schema).
@immutable
final class ApiGatewayApiConfigGrpcServices {
  const ApiGatewayApiConfigGrpcServices({
    required this.fileDescriptorSet,
    this.source,
  });

  final ApiGatewayApiConfigGrpcServicesFileDescriptorSet fileDescriptorSet;

  final List<ApiGatewayApiConfigGrpcServicesSource>? source;

  Map<String, Object?> encode() => {
    'file_descriptor_set': fileDescriptorSet.encode(),
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `grpc_services.file_descriptor_set` block of
/// `google_api_gateway_api_config` (derived from provider schema).
@immutable
final class ApiGatewayApiConfigGrpcServicesFileDescriptorSet {
  const ApiGatewayApiConfigGrpcServicesFileDescriptorSet({
    required this.contents,
    required this.path,
  });

  final TfArg<String> contents;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    'contents': contents.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `grpc_services.source` block of
/// `google_api_gateway_api_config` (derived from provider schema).
@immutable
final class ApiGatewayApiConfigGrpcServicesSource {
  const ApiGatewayApiConfigGrpcServicesSource({
    required this.contents,
    required this.path,
  });

  final TfArg<String> contents;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    'contents': contents.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `managed_service_configs` block of
/// `google_api_gateway_api_config` (derived from provider schema).
@immutable
final class ApiGatewayApiConfigManagedServiceConfigs {
  const ApiGatewayApiConfigManagedServiceConfigs({
    required this.contents,
    required this.path,
  });

  final TfArg<String> contents;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    'contents': contents.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `openapi_documents` block of
/// `google_api_gateway_api_config` (derived from provider schema).
@immutable
final class ApiGatewayApiConfigOpenapiDocuments {
  const ApiGatewayApiConfigOpenapiDocuments({required this.document});

  final ApiGatewayApiConfigOpenapiDocumentsDocument document;

  Map<String, Object?> encode() => {'document': document.encode()};
}

/// Typed helper for the `openapi_documents.document` block of
/// `google_api_gateway_api_config` (derived from provider schema).
@immutable
final class ApiGatewayApiConfigOpenapiDocumentsDocument {
  const ApiGatewayApiConfigOpenapiDocumentsDocument({
    required this.contents,
    required this.path,
  });

  final TfArg<String> contents;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    'contents': contents.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Factory wrapper for `google_api_gateway_api_config`.
///
/// An API Configuration is an association of an API Controller Config and a
/// Gateway Config
final class GoogleApiGatewayApiConfig extends Resource {
  static const String tfType = 'google_api_gateway_api_config';

  GoogleApiGatewayApiConfig({
    required super.localName,
    required TfArg<String> api,
    TfArg<String>? apiConfigId,
    TfArg<String>? apiConfigIdPrefix,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    ApiGatewayApiConfigGatewayConfig? gatewayConfig,
    required ApiGatewayApiConfigSpec spec,
    List<ApiGatewayApiConfigManagedServiceConfigs>? managedServiceConfigs,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'api': api,
           if (apiConfigId != null) 'api_config_id': apiConfigId,
           if (apiConfigIdPrefix != null)
             'api_config_id_prefix': apiConfigIdPrefix,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (gatewayConfig != null)
             'gateway_config': TfArg.literal(gatewayConfig.encode()),
           ...spec.argMap,
           if (managedServiceConfigs != null)
             'managed_service_configs': TfArg.literal([
               for (final e in managedServiceConfigs) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayApiConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `service_config_id` attribute.
  TfRef<String> get serviceConfigId =>
      TfRef.attribute<String>(this, 'service_config_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
