// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_integration`.
const Set<String> _awsApigatewayv2IntegrationSensitive = <String>{};

/// Apigatewayv2 Integration Connection enum for `connection_type`.
enum Apigatewayv2IntegrationConnectionType implements TerraformEnum {
  internet('INTERNET'),
  vpcLink('VPC_LINK');

  const Apigatewayv2IntegrationConnectionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Apigatewayv2 Integration Content Handling enum for `content_handling_strategy`.
enum Apigatewayv2IntegrationContentHandlingStrategy implements TerraformEnum {
  convertToBinary('CONVERT_TO_BINARY'),
  convertToText('CONVERT_TO_TEXT');

  const Apigatewayv2IntegrationContentHandlingStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Apigatewayv2 Integration Integration enum for `integration_type`.
enum Apigatewayv2IntegrationIntegrationType implements TerraformEnum {
  aws('AWS'),
  http('HTTP'),
  mock('MOCK'),
  httpProxy('HTTP_PROXY'),
  awsProxy('AWS_PROXY');

  const Apigatewayv2IntegrationIntegrationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Apigatewayv2 Integration Passthrough enum for `passthrough_behavior`.
enum Apigatewayv2IntegrationPassthroughBehavior implements TerraformEnum {
  whenNoMatch('WHEN_NO_MATCH'),
  never('NEVER'),
  whenNoTemplates('WHEN_NO_TEMPLATES');

  const Apigatewayv2IntegrationPassthroughBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Apigatewayv2 Integration Payload Format enum for `payload_format_version`.
enum Apigatewayv2IntegrationPayloadFormatVersion implements TerraformEnum {
  v1p0('1.0'),
  v2p0('2.0');

  const Apigatewayv2IntegrationPayloadFormatVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `response_parameters` block of
/// `aws_apigatewayv2_integration` (derived from provider schema).
@immutable
final class Apigatewayv2IntegrationResponseParameters {
  const Apigatewayv2IntegrationResponseParameters({
    required this.mappings,
    required this.statusCode,
  });

  final TfArg<Map<String, String>> mappings;

  final TfArg<String> statusCode;

  Map<String, Object?> encode() => {
    'mappings': mappings.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
}

/// Typed helper for the `tls_config` block of
/// `aws_apigatewayv2_integration` (derived from provider schema).
@immutable
final class Apigatewayv2IntegrationTlsConfig {
  const Apigatewayv2IntegrationTlsConfig({this.serverNameToVerify});

  final TfArg<String>? serverNameToVerify;

  Map<String, Object?> encode() => {
    if (serverNameToVerify != null)
      'server_name_to_verify': serverNameToVerify!.toTfJson(),
  };
}

/// Factory wrapper for `aws_apigatewayv2_integration`.
final class AwsApigatewayv2Integration extends Resource {
  static const String tfType = 'aws_apigatewayv2_integration';

  AwsApigatewayv2Integration({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? connectionId,
    TfArg<Apigatewayv2IntegrationConnectionType>? connectionType,
    TfArg<Apigatewayv2IntegrationContentHandlingStrategy>?
    contentHandlingStrategy,
    TfArg<String>? credentialsArn,
    TfArg<String>? description,
    TfArg<String>? integrationMethod,
    TfArg<String>? integrationSubtype,
    required TfArg<Apigatewayv2IntegrationIntegrationType> integrationType,
    TfArg<String>? integrationUri,
    TfArg<Apigatewayv2IntegrationPassthroughBehavior>? passthroughBehavior,
    TfArg<Apigatewayv2IntegrationPayloadFormatVersion>? payloadFormatVersion,
    TfArg<String>? region,
    TfArg<Map<String, String>>? requestParameters,
    TfArg<Map<String, String>>? requestTemplates,
    TfArg<String>? templateSelectionExpression,
    TfArg<num>? timeoutMilliseconds,
    List<Apigatewayv2IntegrationResponseParameters>? responseParameters,
    Apigatewayv2IntegrationTlsConfig? tlsConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (connectionId != null) 'connection_id': connectionId,
           if (connectionType != null) 'connection_type': connectionType,
           if (contentHandlingStrategy != null)
             'content_handling_strategy': contentHandlingStrategy,
           if (credentialsArn != null) 'credentials_arn': credentialsArn,
           if (description != null) 'description': description,
           if (integrationMethod != null)
             'integration_method': integrationMethod,
           if (integrationSubtype != null)
             'integration_subtype': integrationSubtype,
           'integration_type': integrationType,
           if (integrationUri != null) 'integration_uri': integrationUri,
           if (passthroughBehavior != null)
             'passthrough_behavior': passthroughBehavior,
           if (payloadFormatVersion != null)
             'payload_format_version': payloadFormatVersion,
           if (region != null) 'region': region,
           if (requestParameters != null)
             'request_parameters': requestParameters,
           if (requestTemplates != null) 'request_templates': requestTemplates,
           if (templateSelectionExpression != null)
             'template_selection_expression': templateSelectionExpression,
           if (timeoutMilliseconds != null)
             'timeout_milliseconds': timeoutMilliseconds,
           if (responseParameters != null)
             'response_parameters': TfArg.literal([
               for (final e in responseParameters) e.encode(),
             ]),
           if (tlsConfig != null)
             'tls_config': TfArg.literal(tlsConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2IntegrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2Integration>`.
  RefTo<AwsApigatewayv2Integration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `integration_response_selection_expression` attribute.
  TfRef<String> get integrationResponseSelectionExpression =>
      TfRef.attribute<String>(
        this,
        'integration_response_selection_expression',
      );
}
