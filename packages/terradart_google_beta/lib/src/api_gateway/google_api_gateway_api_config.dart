// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_api_config`.
const Set<String> _googleApiGatewayApiConfigSensitive = <String>{};

/// Factory wrapper for `google_api_gateway_api_config`.
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
    TfArg<Map<String, dynamic>>? gatewayConfig,
    TfArg<List<Map<String, dynamic>>>? grpcServices,
    TfArg<List<Map<String, dynamic>>>? managedServiceConfigs,
    TfArg<List<Map<String, dynamic>>>? openapiDocuments,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'api': api,
           if (apiConfigId != null) 'api_config_id': apiConfigId,
           if (apiConfigIdPrefix != null)
             'api_config_id_prefix': apiConfigIdPrefix,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (gatewayConfig != null) 'gateway_config': gatewayConfig,
           if (grpcServices != null) 'grpc_services': grpcServices,
           if (managedServiceConfigs != null)
             'managed_service_configs': managedServiceConfigs,
           if (openapiDocuments != null) 'openapi_documents': openapiDocuments,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayApiConfigSensitive;
}
