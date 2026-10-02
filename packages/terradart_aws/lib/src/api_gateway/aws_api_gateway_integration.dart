// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_integration`.
const Set<String> _awsApiGatewayIntegrationSensitive = <String>{};

/// Api Gateway Integration Connection enum for `connection_type`.
extension type const ApiGatewayIntegrationConnectionType._(TfArg<String> _)
    implements TfArg<String> {
  ApiGatewayIntegrationConnectionType.variable(String name)
    : this._(TfArg.variable(name));
  ApiGatewayIntegrationConnectionType.expression(String template)
    : this._(TfArg.expression(template));
  const ApiGatewayIntegrationConnectionType.arg(TfArg<String> arg)
    : this._(arg);

  static const internet = ApiGatewayIntegrationConnectionType._(
    TfArgLiteral('INTERNET'),
  );
  static const vpcLink = ApiGatewayIntegrationConnectionType._(
    TfArgLiteral('VPC_LINK'),
  );

  static const List<ApiGatewayIntegrationConnectionType> values = [
    internet,
    vpcLink,
  ];
}

/// Api Gateway Integration Passthrough enum for `passthrough_behavior`.
extension type const ApiGatewayIntegrationPassthroughBehavior._(TfArg<String> _)
    implements TfArg<String> {
  ApiGatewayIntegrationPassthroughBehavior.variable(String name)
    : this._(TfArg.variable(name));
  ApiGatewayIntegrationPassthroughBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const ApiGatewayIntegrationPassthroughBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const whenNoMatch = ApiGatewayIntegrationPassthroughBehavior._(
    TfArgLiteral('WHEN_NO_MATCH'),
  );
  static const whenNoTemplates = ApiGatewayIntegrationPassthroughBehavior._(
    TfArgLiteral('WHEN_NO_TEMPLATES'),
  );
  static const never = ApiGatewayIntegrationPassthroughBehavior._(
    TfArgLiteral('NEVER'),
  );

  static const List<ApiGatewayIntegrationPassthroughBehavior> values = [
    whenNoMatch,
    whenNoTemplates,
    never,
  ];
}

/// Api Gateway Integration Response Transfer enum for `response_transfer_mode`.
extension type const ApiGatewayIntegrationResponseTransferMode._(
  TfArg<String> _
) implements TfArg<String> {
  ApiGatewayIntegrationResponseTransferMode.variable(String name)
    : this._(TfArg.variable(name));
  ApiGatewayIntegrationResponseTransferMode.expression(String template)
    : this._(TfArg.expression(template));
  const ApiGatewayIntegrationResponseTransferMode.arg(TfArg<String> arg)
    : this._(arg);

  static const buffered = ApiGatewayIntegrationResponseTransferMode._(
    TfArgLiteral('BUFFERED'),
  );
  static const stream = ApiGatewayIntegrationResponseTransferMode._(
    TfArgLiteral('STREAM'),
  );

  static const List<ApiGatewayIntegrationResponseTransferMode> values = [
    buffered,
    stream,
  ];
}

/// Api Gateway Integration enum for `type`.
extension type const ApiGatewayIntegrationType._(TfArg<String> _)
    implements TfArg<String> {
  ApiGatewayIntegrationType.variable(String name)
    : this._(TfArg.variable(name));
  ApiGatewayIntegrationType.expression(String template)
    : this._(TfArg.expression(template));
  const ApiGatewayIntegrationType.arg(TfArg<String> arg) : this._(arg);

  static const http = ApiGatewayIntegrationType._(TfArgLiteral('HTTP'));
  static const aws = ApiGatewayIntegrationType._(TfArgLiteral('AWS'));
  static const mock = ApiGatewayIntegrationType._(TfArgLiteral('MOCK'));
  static const httpProxy = ApiGatewayIntegrationType._(
    TfArgLiteral('HTTP_PROXY'),
  );
  static const awsProxy = ApiGatewayIntegrationType._(
    TfArgLiteral('AWS_PROXY'),
  );

  static const List<ApiGatewayIntegrationType> values = [
    http,
    aws,
    mock,
    httpProxy,
    awsProxy,
  ];
}

/// Typed helper for the `tls_config` block of
/// `aws_api_gateway_integration` (derived from provider schema).
@immutable
final class ApiGatewayIntegrationTlsConfig {
  const ApiGatewayIntegrationTlsConfig({this.insecureSkipVerification});

  final TfArg<bool>? insecureSkipVerification;

  @internal
  Map<String, Object?> encode() => {
    'insecure_skip_verification': ?insecureSkipVerification?.toTfJson(),
  };
}

/// Factory wrapper for `aws_api_gateway_integration`.
final class AwsApiGatewayIntegration extends Resource {
  static const String tfType = 'aws_api_gateway_integration';

  AwsApiGatewayIntegration(
    super.localName, {
    TfArg<List<String>>? cacheKeyParameters,
    TfArg<String>? cacheNamespace,
    TfArg<String>? connectionId,
    ApiGatewayIntegrationConnectionType? connectionType,
    TfArg<String>? contentHandling,
    TfArg<String>? credentials,
    required TfArg<String> httpMethod,
    TfArg<String>? integrationHttpMethod,
    TfArg<String>? integrationTarget,
    ApiGatewayIntegrationPassthroughBehavior? passthroughBehavior,
    TfArg<String>? region,
    TfArg<Map<String, String>>? requestParameters,
    TfArg<Map<String, String>>? requestTemplates,
    required TfArg<String> resourceId,
    ApiGatewayIntegrationResponseTransferMode? responseTransferMode,
    required TfArg<String> restApiId,
    TfArg<num>? timeoutMilliseconds,
    required ApiGatewayIntegrationType type,
    TfArg<String>? uri,
    ApiGatewayIntegrationTlsConfig? tlsConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cache_key_parameters': ?cacheKeyParameters,
           'cache_namespace': ?cacheNamespace,
           'connection_id': ?connectionId,
           'connection_type': ?connectionType,
           'content_handling': ?contentHandling,
           'credentials': ?credentials,
           'http_method': httpMethod,
           'integration_http_method': ?integrationHttpMethod,
           'integration_target': ?integrationTarget,
           'passthrough_behavior': ?passthroughBehavior,
           'region': ?region,
           'request_parameters': ?requestParameters,
           'request_templates': ?requestTemplates,
           'resource_id': resourceId,
           'response_transfer_mode': ?responseTransferMode,
           'rest_api_id': restApiId,
           'timeout_milliseconds': ?timeoutMilliseconds,
           'type': type,
           'uri': ?uri,
           if (tlsConfig != null)
             'tls_config': TfArg.literal(tlsConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayIntegrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayIntegration>`.
  RefTo<AwsApiGatewayIntegration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cache_key_parameters` attribute.
  TfRef<List<String>> get cacheKeyParameters =>
      TfRef.attribute<List<String>>(this, 'cache_key_parameters');

  /// Reference to `cache_namespace` attribute.
  TfRef<String> get cacheNamespace =>
      TfRef.attribute<String>(this, 'cache_namespace');

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `connection_type` attribute.
  TfRef<String> get connectionType =>
      TfRef.attribute<String>(this, 'connection_type');

  /// Reference to `content_handling` attribute.
  TfRef<String> get contentHandling =>
      TfRef.attribute<String>(this, 'content_handling');

  /// Reference to `credentials` attribute.
  TfRef<String> get credentials => TfRef.attribute<String>(this, 'credentials');

  /// Reference to `http_method` attribute.
  TfRef<String> get httpMethod => TfRef.attribute<String>(this, 'http_method');

  /// Reference to `integration_http_method` attribute.
  TfRef<String> get integrationHttpMethod =>
      TfRef.attribute<String>(this, 'integration_http_method');

  /// Reference to `integration_target` attribute.
  TfRef<String> get integrationTarget =>
      TfRef.attribute<String>(this, 'integration_target');

  /// Reference to `passthrough_behavior` attribute.
  TfRef<String> get passthroughBehavior =>
      TfRef.attribute<String>(this, 'passthrough_behavior');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `request_parameters` attribute.
  TfRef<Map<String, String>> get requestParameters =>
      TfRef.attribute<Map<String, String>>(this, 'request_parameters');

  /// Reference to `request_templates` attribute.
  TfRef<Map<String, String>> get requestTemplates =>
      TfRef.attribute<Map<String, String>>(this, 'request_templates');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `response_transfer_mode` attribute.
  TfRef<String> get responseTransferMode =>
      TfRef.attribute<String>(this, 'response_transfer_mode');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiId => TfRef.attribute<String>(this, 'rest_api_id');

  /// Reference to `timeout_milliseconds` attribute.
  TfRef<num> get timeoutMilliseconds =>
      TfRef.attribute<num>(this, 'timeout_milliseconds');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
