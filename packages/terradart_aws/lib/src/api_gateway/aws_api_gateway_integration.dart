// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_integration`.
const Set<String> _awsApiGatewayIntegrationSensitive = <String>{};

/// Api Gateway Integration Connection enum for `connection_type`.
enum ApiGatewayIntegrationConnectionType implements TerraformEnum {
  internet('INTERNET'),
  vpcLink('VPC_LINK');

  const ApiGatewayIntegrationConnectionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Api Gateway Integration Passthrough enum for `passthrough_behavior`.
enum ApiGatewayIntegrationPassthroughBehavior implements TerraformEnum {
  whenNoMatch('WHEN_NO_MATCH'),
  whenNoTemplates('WHEN_NO_TEMPLATES'),
  never('NEVER');

  const ApiGatewayIntegrationPassthroughBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Api Gateway Integration Response Transfer enum for `response_transfer_mode`.
enum ApiGatewayIntegrationResponseTransferMode implements TerraformEnum {
  buffered('BUFFERED'),
  stream('STREAM');

  const ApiGatewayIntegrationResponseTransferMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Api Gateway Integration enum for `type`.
enum ApiGatewayIntegrationType implements TerraformEnum {
  http('HTTP'),
  aws('AWS'),
  mock('MOCK'),
  httpProxy('HTTP_PROXY'),
  awsProxy('AWS_PROXY');

  const ApiGatewayIntegrationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `tls_config` block of
/// `aws_api_gateway_integration` (derived from provider schema).
@immutable
final class ApiGatewayIntegrationTlsConfig {
  const ApiGatewayIntegrationTlsConfig({this.insecureSkipVerification});

  final TfArg<bool>? insecureSkipVerification;

  Map<String, Object?> encode() => {
    if (insecureSkipVerification != null)
      'insecure_skip_verification': insecureSkipVerification!.toTfJson(),
  };
}

/// Factory wrapper for `aws_api_gateway_integration`.
final class AwsApiGatewayIntegration extends Resource {
  static const String tfType = 'aws_api_gateway_integration';

  AwsApiGatewayIntegration({
    required super.localName,
    TfArg<List<String>>? cacheKeyParameters,
    TfArg<String>? cacheNamespace,
    TfArg<String>? connectionId,
    TfArg<ApiGatewayIntegrationConnectionType>? connectionType,
    TfArg<String>? contentHandling,
    TfArg<String>? credentials,
    required TfArg<String> httpMethod,
    TfArg<String>? integrationHttpMethod,
    TfArg<String>? integrationTarget,
    TfArg<ApiGatewayIntegrationPassthroughBehavior>? passthroughBehavior,
    TfArg<String>? region,
    TfArg<Map<String, String>>? requestParameters,
    TfArg<Map<String, String>>? requestTemplates,
    required TfArg<String> resourceId,
    TfArg<ApiGatewayIntegrationResponseTransferMode>? responseTransferMode,
    required TfArg<String> restApiId,
    TfArg<num>? timeoutMilliseconds,
    required TfArg<ApiGatewayIntegrationType> type,
    TfArg<String>? uri,
    ApiGatewayIntegrationTlsConfig? tlsConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cacheKeyParameters != null)
             'cache_key_parameters': cacheKeyParameters,
           if (cacheNamespace != null) 'cache_namespace': cacheNamespace,
           if (connectionId != null) 'connection_id': connectionId,
           if (connectionType != null) 'connection_type': connectionType,
           if (contentHandling != null) 'content_handling': contentHandling,
           if (credentials != null) 'credentials': credentials,
           'http_method': httpMethod,
           if (integrationHttpMethod != null)
             'integration_http_method': integrationHttpMethod,
           if (integrationTarget != null)
             'integration_target': integrationTarget,
           if (passthroughBehavior != null)
             'passthrough_behavior': passthroughBehavior,
           if (region != null) 'region': region,
           if (requestParameters != null)
             'request_parameters': requestParameters,
           if (requestTemplates != null) 'request_templates': requestTemplates,
           'resource_id': resourceId,
           if (responseTransferMode != null)
             'response_transfer_mode': responseTransferMode,
           'rest_api_id': restApiId,
           if (timeoutMilliseconds != null)
             'timeout_milliseconds': timeoutMilliseconds,
           'type': type,
           if (uri != null) 'uri': uri,
           if (tlsConfig != null)
             'tls_config': TfArg.literal(tlsConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayIntegrationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
