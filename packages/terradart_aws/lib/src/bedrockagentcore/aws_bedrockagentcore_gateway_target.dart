// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_bedrockagentcore_gateway_target`.
const Set<String> _awsBedrockagentcoreGatewayTargetSensitive = <String>{};

/// Typed helper for the `credential_provider_configuration` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetCredentialProviderConfiguration {
  const BedrockagentcoreGatewayTargetCredentialProviderConfiguration({
    this.apiKey,
    this.callerIamCredentials,
    this.gatewayIamRole,
    this.jwtPassthrough,
    this.oauth,
  });

  final List<BedrockagentcoreGatewayTargetApiKey>? apiKey;

  final List<BedrockagentcoreGatewayTargetCallerIamCredentials>?
  callerIamCredentials;

  final List<BedrockagentcoreGatewayTargetGatewayIamRole>? gatewayIamRole;

  final List<BedrockagentcoreGatewayTargetJwtPassthrough>? jwtPassthrough;

  final List<BedrockagentcoreGatewayTargetOauth>? oauth;

  Map<String, Object?> encode() => {
    if (apiKey != null) 'api_key': [for (final e in apiKey!) e.encode()],
    if (callerIamCredentials != null)
      'caller_iam_credentials': [
        for (final e in callerIamCredentials!) e.encode(),
      ],
    if (gatewayIamRole != null)
      'gateway_iam_role': [for (final e in gatewayIamRole!) e.encode()],
    if (jwtPassthrough != null)
      'jwt_passthrough': [for (final e in jwtPassthrough!) e.encode()],
    if (oauth != null) 'oauth': [for (final e in oauth!) e.encode()],
  };
}

/// Typed helper for the `credential_provider_configuration.api_key` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetApiKey {
  const BedrockagentcoreGatewayTargetApiKey({
    this.credentialLocation,
    this.credentialParameterName,
    this.credentialPrefix,
    required this.providerArn,
  });

  final TfArg<BedrockagentcoreGatewayTargetCredentialLocation>?
  credentialLocation;

  final TfArg<String>? credentialParameterName;

  final TfArg<String>? credentialPrefix;

  final TfArg<String> providerArn;

  Map<String, Object?> encode() => {
    'credential_location': ?credentialLocation?.toTfJson(),
    'credential_parameter_name': ?credentialParameterName?.toTfJson(),
    'credential_prefix': ?credentialPrefix?.toTfJson(),
    'provider_arn': providerArn.toTfJson(),
  };
}

/// `credential_location` — derived from the provider schema description.
enum BedrockagentcoreGatewayTargetCredentialLocation implements TerraformEnum {
  header('HEADER'),
  queryParameter('QUERY_PARAMETER');

  const BedrockagentcoreGatewayTargetCredentialLocation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `credential_provider_configuration.caller_iam_credentials` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetCallerIamCredentials {
  const BedrockagentcoreGatewayTargetCallerIamCredentials({
    this.region,
    required this.service,
  });

  final TfArg<String>? region;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    'region': ?region?.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `credential_provider_configuration.gateway_iam_role` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetGatewayIamRole {
  const BedrockagentcoreGatewayTargetGatewayIamRole({
    this.region,
    this.service,
  });

  final TfArg<String>? region;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    'region': ?region?.toTfJson(),
    'service': ?service?.toTfJson(),
  };
}

/// Typed helper for the `credential_provider_configuration.jwt_passthrough` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetJwtPassthrough {
  const BedrockagentcoreGatewayTargetJwtPassthrough();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `credential_provider_configuration.oauth` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetOauth {
  const BedrockagentcoreGatewayTargetOauth({
    this.customParameters,
    this.defaultReturnUrl,
    this.grantType,
    required this.providerArn,
    required this.scopes,
  });

  final TfArg<Map<String, String>>? customParameters;

  final TfArg<String>? defaultReturnUrl;

  final TfArg<BedrockagentcoreGatewayTargetGrantType>? grantType;

  final TfArg<String> providerArn;

  final TfArg<List<String>> scopes;

  Map<String, Object?> encode() => {
    'custom_parameters': ?customParameters?.toTfJson(),
    'default_return_url': ?defaultReturnUrl?.toTfJson(),
    'grant_type': ?grantType?.toTfJson(),
    'provider_arn': providerArn.toTfJson(),
    'scopes': scopes.toTfJson(),
  };
}

/// `grant_type` — derived from the provider schema description.
enum BedrockagentcoreGatewayTargetGrantType implements TerraformEnum {
  clientCredentials('CLIENT_CREDENTIALS'),
  authorizationCode('AUTHORIZATION_CODE'),
  tokenExchange('TOKEN_EXCHANGE');

  const BedrockagentcoreGatewayTargetGrantType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `metadata_configuration` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetMetadataConfiguration {
  const BedrockagentcoreGatewayTargetMetadataConfiguration({
    this.allowedQueryParameters,
    this.allowedRequestHeaders,
    this.allowedResponseHeaders,
  });

  final TfArg<List<String>>? allowedQueryParameters;

  final TfArg<List<String>>? allowedRequestHeaders;

  final TfArg<List<String>>? allowedResponseHeaders;

  Map<String, Object?> encode() => {
    'allowed_query_parameters': ?allowedQueryParameters?.toTfJson(),
    'allowed_request_headers': ?allowedRequestHeaders?.toTfJson(),
    'allowed_response_headers': ?allowedResponseHeaders?.toTfJson(),
  };
}

/// Typed helper for the `private_endpoint` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetPrivateEndpoint {
  const BedrockagentcoreGatewayTargetPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<BedrockagentcoreGatewayTargetManagedVpcResource>?
  managedVpcResource;

  final List<BedrockagentcoreGatewayTargetSelfManagedLatticeResource>?
  selfManagedLatticeResource;

  Map<String, Object?> encode() => {
    if (managedVpcResource != null)
      'managed_vpc_resource': [for (final e in managedVpcResource!) e.encode()],
    if (selfManagedLatticeResource != null)
      'self_managed_lattice_resource': [
        for (final e in selfManagedLatticeResource!) e.encode(),
      ],
  };
}

/// Typed helper for the `private_endpoint.managed_vpc_resource` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetManagedVpcResource {
  const BedrockagentcoreGatewayTargetManagedVpcResource({
    required this.endpointIpAddressType,
    this.routingDomain,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcIdentifier,
  });

  final TfArg<BedrockagentcoreGatewayTargetEndpointIpAddressType>
  endpointIpAddressType;

  final TfArg<String>? routingDomain;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String> vpcIdentifier;

  Map<String, Object?> encode() => {
    'endpoint_ip_address_type': endpointIpAddressType.toTfJson(),
    'routing_domain': ?routingDomain?.toTfJson(),
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
    'tags': ?tags?.toTfJson(),
    'vpc_identifier': vpcIdentifier.toTfJson(),
  };
}

/// `endpoint_ip_address_type` — derived from the provider schema description.
enum BedrockagentcoreGatewayTargetEndpointIpAddressType
    implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const BedrockagentcoreGatewayTargetEndpointIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `private_endpoint.self_managed_lattice_resource` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetSelfManagedLatticeResource {
  const BedrockagentcoreGatewayTargetSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    'resource_configuration_identifier': ?resourceConfigurationIdentifier
        ?.toTfJson(),
  };
}

/// Typed helper for the `target_configuration` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetConfiguration {
  const BedrockagentcoreGatewayTargetConfiguration({
    this.http,
    this.inference,
    this.mcp,
  });

  final List<BedrockagentcoreGatewayTargetHttp>? http;

  final List<BedrockagentcoreGatewayTargetInference>? inference;

  final List<BedrockagentcoreGatewayTargetMcp>? mcp;

  Map<String, Object?> encode() => {
    if (http != null) 'http': [for (final e in http!) e.encode()],
    if (inference != null)
      'inference': [for (final e in inference!) e.encode()],
    if (mcp != null) 'mcp': [for (final e in mcp!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.http` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetHttp {
  const BedrockagentcoreGatewayTargetHttp({
    this.agentcoreRuntime,
    this.passthrough,
  });

  final List<BedrockagentcoreGatewayTargetAgentcoreRuntime>? agentcoreRuntime;

  final List<BedrockagentcoreGatewayTargetPassthrough>? passthrough;

  Map<String, Object?> encode() => {
    if (agentcoreRuntime != null)
      'agentcore_runtime': [for (final e in agentcoreRuntime!) e.encode()],
    if (passthrough != null)
      'passthrough': [for (final e in passthrough!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.http.agentcore_runtime` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetAgentcoreRuntime {
  const BedrockagentcoreGatewayTargetAgentcoreRuntime({
    required this.arn,
    this.qualifier,
    this.schema,
  });

  final TfArg<String> arn;

  final TfArg<String>? qualifier;

  final List<BedrockagentcoreGatewayTargetSchema>? schema;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'qualifier': ?qualifier?.toTfJson(),
    if (schema != null) 'schema': [for (final e in schema!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.http.agentcore_runtime.schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreGatewayTargetSchema {
  const BedrockagentcoreGatewayTargetSchema({this.source});

  final List<BedrockagentcoreGatewayTargetSchemaSource>? source;

  Map<String, Object?> encode() => {
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.http.agentcore_runtime.schema.source` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreGatewayTargetSchemaSource {
  const BedrockagentcoreGatewayTargetSchemaSource({
    this.inlinePayload,
    this.s3,
  });

  final List<BedrockagentcoreGatewayTargetInlinePayload>? inlinePayload;

  final List<BedrockagentcoreGatewayTargetS3>? s3;

  Map<String, Object?> encode() => {
    if (inlinePayload != null)
      'inline_payload': [for (final e in inlinePayload!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.open_api_schema.inline_payload` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreGatewayTargetInlinePayload {
  const BedrockagentcoreGatewayTargetInlinePayload({required this.payload});

  final TfArg<String> payload;

  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// Typed helper for the `target_configuration.mcp.open_api_schema.s3` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreGatewayTargetS3 {
  const BedrockagentcoreGatewayTargetS3({this.bucketOwnerAccountId, this.uri});

  final TfArg<String>? bucketOwnerAccountId;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'bucket_owner_account_id': ?bucketOwnerAccountId?.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.http.passthrough` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetPassthrough {
  const BedrockagentcoreGatewayTargetPassthrough({
    required this.endpoint,
    required this.protocolType,
    this.staticQueryParameterConflictResolution,
    this.staticQueryParameters,
    this.schema,
    this.stickinessConfiguration,
  });

  final TfArg<String> endpoint;

  final TfArg<BedrockagentcoreGatewayTargetProtocolType> protocolType;

  final TfArg<
    BedrockagentcoreGatewayTargetStaticQueryParameterConflictResolution
  >?
  staticQueryParameterConflictResolution;

  final TfArg<Map<String, String>>? staticQueryParameters;

  final List<BedrockagentcoreGatewayTargetSchema>? schema;

  final List<BedrockagentcoreGatewayTargetStickinessConfiguration>?
  stickinessConfiguration;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'protocol_type': protocolType.toTfJson(),
    'static_query_parameter_conflict_resolution':
        ?staticQueryParameterConflictResolution?.toTfJson(),
    'static_query_parameters': ?staticQueryParameters?.toTfJson(),
    if (schema != null) 'schema': [for (final e in schema!) e.encode()],
    if (stickinessConfiguration != null)
      'stickiness_configuration': [
        for (final e in stickinessConfiguration!) e.encode(),
      ],
  };
}

/// `protocol_type` — derived from the provider schema description.
enum BedrockagentcoreGatewayTargetProtocolType implements TerraformEnum {
  mcp('MCP'),
  a2a('A2A'),
  inference('INFERENCE'),
  custom('CUSTOM');

  const BedrockagentcoreGatewayTargetProtocolType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `static_query_parameter_conflict_resolution` — derived from the provider schema description.
enum BedrockagentcoreGatewayTargetStaticQueryParameterConflictResolution
    implements TerraformEnum {
  clientOverride('CLIENT_OVERRIDE'),
  staticOverride('STATIC_OVERRIDE');

  const BedrockagentcoreGatewayTargetStaticQueryParameterConflictResolution(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `target_configuration.http.passthrough.stickiness_configuration` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetStickinessConfiguration {
  const BedrockagentcoreGatewayTargetStickinessConfiguration({
    this.compositeIdentifier,
    required this.identifier,
    this.timeout,
  });

  final TfArg<List<String>>? compositeIdentifier;

  final TfArg<String> identifier;

  final TfArg<num>? timeout;

  Map<String, Object?> encode() => {
    'composite_identifier': ?compositeIdentifier?.toTfJson(),
    'identifier': identifier.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.inference` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetInference {
  const BedrockagentcoreGatewayTargetInference({this.connector, this.provider});

  final List<BedrockagentcoreGatewayTargetInferenceConnector>? connector;

  final List<BedrockagentcoreGatewayTargetProvider>? provider;

  Map<String, Object?> encode() => {
    if (connector != null)
      'connector': [for (final e in connector!) e.encode()],
    if (provider != null) 'provider': [for (final e in provider!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.inference.connector` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetInferenceConnector {
  const BedrockagentcoreGatewayTargetInferenceConnector({this.source});

  final List<BedrockagentcoreGatewayTargetInferenceSource>? source;

  Map<String, Object?> encode() => {
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.inference.connector.source` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetInferenceSource {
  const BedrockagentcoreGatewayTargetInferenceSource({
    required this.connectorId,
  });

  final TfArg<String> connectorId;

  Map<String, Object?> encode() => {'connector_id': connectorId.toTfJson()};
}

/// Typed helper for the `target_configuration.inference.provider` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetProvider {
  const BedrockagentcoreGatewayTargetProvider({
    required this.endpoint,
    this.modelMapping,
    this.operation,
  });

  final TfArg<String> endpoint;

  final List<BedrockagentcoreGatewayTargetModelMapping>? modelMapping;

  final List<BedrockagentcoreGatewayTargetOperation>? operation;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    if (modelMapping != null)
      'model_mapping': [for (final e in modelMapping!) e.encode()],
    if (operation != null)
      'operation': [for (final e in operation!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.inference.provider.model_mapping` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetModelMapping {
  const BedrockagentcoreGatewayTargetModelMapping({this.providerPrefix});

  final List<BedrockagentcoreGatewayTargetProviderPrefix>? providerPrefix;

  Map<String, Object?> encode() => {
    if (providerPrefix != null)
      'provider_prefix': [for (final e in providerPrefix!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.inference.provider.model_mapping.provider_prefix` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetProviderPrefix {
  const BedrockagentcoreGatewayTargetProviderPrefix({
    this.separator,
    this.strip,
  });

  final TfArg<String>? separator;

  final TfArg<bool>? strip;

  Map<String, Object?> encode() => {
    'separator': ?separator?.toTfJson(),
    'strip': ?strip?.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.inference.provider.operation` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetOperation {
  const BedrockagentcoreGatewayTargetOperation({
    required this.path,
    this.providerPath,
    this.model,
  });

  final TfArg<String> path;

  final TfArg<String>? providerPath;

  final List<BedrockagentcoreGatewayTargetModel>? model;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'provider_path': ?providerPath?.toTfJson(),
    if (model != null) 'model': [for (final e in model!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.inference.provider.operation.model` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetModel {
  const BedrockagentcoreGatewayTargetModel({required this.model});

  final TfArg<String> model;

  Map<String, Object?> encode() => {'model': model.toTfJson()};
}

/// Typed helper for the `target_configuration.mcp` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetMcp {
  const BedrockagentcoreGatewayTargetMcp({
    this.apiGateway,
    this.connector,
    this.lambda,
    this.mcpServer,
    this.openApiSchema,
    this.smithyModel,
  });

  final List<BedrockagentcoreGatewayTargetApiGateway>? apiGateway;

  final List<BedrockagentcoreGatewayTargetMcpConnector>? connector;

  final List<BedrockagentcoreGatewayTargetLambda>? lambda;

  final List<BedrockagentcoreGatewayTargetMcpServer>? mcpServer;

  final List<BedrockagentcoreGatewayTargetOpenApiSchema>? openApiSchema;

  final List<BedrockagentcoreGatewayTargetSmithyModel>? smithyModel;

  Map<String, Object?> encode() => {
    if (apiGateway != null)
      'api_gateway': [for (final e in apiGateway!) e.encode()],
    if (connector != null)
      'connector': [for (final e in connector!) e.encode()],
    if (lambda != null) 'lambda': [for (final e in lambda!) e.encode()],
    if (mcpServer != null)
      'mcp_server': [for (final e in mcpServer!) e.encode()],
    if (openApiSchema != null)
      'open_api_schema': [for (final e in openApiSchema!) e.encode()],
    if (smithyModel != null)
      'smithy_model': [for (final e in smithyModel!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.api_gateway` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetApiGateway {
  const BedrockagentcoreGatewayTargetApiGateway({
    required this.restApiId,
    required this.stage,
    this.apiGatewayToolConfiguration,
  });

  final TfArg<String> restApiId;

  final TfArg<String> stage;

  final List<BedrockagentcoreGatewayTargetApiGatewayToolConfiguration>?
  apiGatewayToolConfiguration;

  Map<String, Object?> encode() => {
    'rest_api_id': restApiId.toTfJson(),
    'stage': stage.toTfJson(),
    if (apiGatewayToolConfiguration != null)
      'api_gateway_tool_configuration': [
        for (final e in apiGatewayToolConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `target_configuration.mcp.api_gateway.api_gateway_tool_configuration` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetApiGatewayToolConfiguration {
  const BedrockagentcoreGatewayTargetApiGatewayToolConfiguration({
    this.toolFilter,
    this.toolOverride,
  });

  final List<BedrockagentcoreGatewayTargetToolFilter>? toolFilter;

  final List<BedrockagentcoreGatewayTargetToolOverride>? toolOverride;

  Map<String, Object?> encode() => {
    if (toolFilter != null)
      'tool_filter': [for (final e in toolFilter!) e.encode()],
    if (toolOverride != null)
      'tool_override': [for (final e in toolOverride!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filter` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetToolFilter {
  const BedrockagentcoreGatewayTargetToolFilter({
    required this.filterPath,
    required this.methods,
  });

  final TfArg<String> filterPath;

  final List<TfArg<BedrockagentcoreGatewayTargetMethods>> methods;

  Map<String, Object?> encode() => {
    'filter_path': filterPath.toTfJson(),
    'methods': [for (final e in methods) e.toTfJson()],
  };
}

/// `methods` — derived from the provider schema description.
enum BedrockagentcoreGatewayTargetMethods implements TerraformEnum {
  get('GET'),
  delete('DELETE'),
  head('HEAD'),
  options('OPTIONS'),
  patch('PATCH'),
  put('PUT'),
  post('POST');

  const BedrockagentcoreGatewayTargetMethods(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_override` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetToolOverride {
  const BedrockagentcoreGatewayTargetToolOverride({
    this.description,
    required this.method,
    required this.name,
    required this.path,
  });

  final TfArg<String>? description;

  final TfArg<BedrockagentcoreGatewayTargetMethod> method;

  final TfArg<String> name;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'method': method.toTfJson(),
    'name': name.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// `method` — derived from the provider schema description.
enum BedrockagentcoreGatewayTargetMethod implements TerraformEnum {
  get('GET'),
  delete('DELETE'),
  head('HEAD'),
  options('OPTIONS'),
  patch('PATCH'),
  put('PUT'),
  post('POST');

  const BedrockagentcoreGatewayTargetMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_configuration.mcp.connector` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetMcpConnector {
  const BedrockagentcoreGatewayTargetMcpConnector({
    this.enabled,
    this.configuration,
    this.source,
  });

  final TfArg<List<String>>? enabled;

  final List<BedrockagentcoreGatewayTargetConnectorConfiguration>?
  configuration;

  final List<BedrockagentcoreGatewayTargetMcpSource>? source;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (configuration != null)
      'configuration': [for (final e in configuration!) e.encode()],
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.connector.configuration` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetConnectorConfiguration {
  const BedrockagentcoreGatewayTargetConnectorConfiguration({
    this.description,
    required this.name,
    this.parameterValues,
    this.parameterOverride,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<String>? parameterValues;

  final List<BedrockagentcoreGatewayTargetParameterOverride>? parameterOverride;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'parameter_values': ?parameterValues?.toTfJson(),
    if (parameterOverride != null)
      'parameter_override': [for (final e in parameterOverride!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.connector.configuration.parameter_override` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetParameterOverride {
  const BedrockagentcoreGatewayTargetParameterOverride({
    this.description,
    required this.path,
    this.visible,
  });

  final TfArg<String>? description;

  final TfArg<String> path;

  final TfArg<bool>? visible;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'path': path.toTfJson(),
    'visible': ?visible?.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.connector.source` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetMcpSource {
  const BedrockagentcoreGatewayTargetMcpSource({
    required this.connectorId,
    this.version,
  });

  final TfArg<String> connectorId;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'connector_id': connectorId.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetLambda {
  const BedrockagentcoreGatewayTargetLambda({
    required this.lambdaArn,
    this.toolSchema,
  });

  final RefTo<AwsLambdaFunction> lambdaArn;

  final List<BedrockagentcoreGatewayTargetToolSchema>? toolSchema;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.encodeAs('arn').toTfJson(),
    if (toolSchema != null)
      'tool_schema': [for (final e in toolSchema!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetToolSchema {
  const BedrockagentcoreGatewayTargetToolSchema({this.inlinePayload, this.s3});

  final List<BedrockagentcoreGatewayTargetToolSchemaInlinePayload>?
  inlinePayload;

  final List<BedrockagentcoreGatewayTargetS3>? s3;

  Map<String, Object?> encode() => {
    if (inlinePayload != null)
      'inline_payload': [for (final e in inlinePayload!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetToolSchemaInlinePayload {
  const BedrockagentcoreGatewayTargetToolSchemaInlinePayload({
    required this.description,
    required this.name,
    this.inputSchema,
    this.outputSchema,
  });

  final TfArg<String> description;

  final TfArg<String> name;

  final List<BedrockagentcoreGatewayTargetInputSchema>? inputSchema;

  final List<BedrockagentcoreGatewayTargetOutputSchema>? outputSchema;

  Map<String, Object?> encode() => {
    'description': description.toTfJson(),
    'name': name.toTfJson(),
    if (inputSchema != null)
      'input_schema': [for (final e in inputSchema!) e.encode()],
    if (outputSchema != null)
      'output_schema': [for (final e in outputSchema!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetInputSchema {
  const BedrockagentcoreGatewayTargetInputSchema({
    this.description,
    required this.type,
    this.items,
    this.property,
  });

  final TfArg<String>? description;

  final TfArg<BedrockagentcoreGatewayTargetType> type;

  final List<BedrockagentcoreGatewayTargetItems>? items;

  final List<BedrockagentcoreGatewayTargetProperty>? property;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentcoreGatewayTargetType implements TerraformEnum {
  string('string'),
  number('number'),
  object('object'),
  array('array'),
  boolean('boolean'),
  integer('integer');

  const BedrockagentcoreGatewayTargetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.items` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreGatewayTargetItems {
  const BedrockagentcoreGatewayTargetItems({
    this.description,
    required this.type,
    this.items,
    this.property,
  });

  final TfArg<String>? description;

  final TfArg<BedrockagentcoreGatewayTargetType> type;

  final List<BedrockagentcoreGatewayTargetItemsItems>? items;

  final List<BedrockagentcoreGatewayTargetItemsProperty>? property;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.items.items` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreGatewayTargetItemsItems {
  const BedrockagentcoreGatewayTargetItemsItems({
    this.description,
    this.itemsJson,
    this.propertiesJson,
    required this.type,
  });

  final TfArg<String>? description;

  final TfArg<String>? itemsJson;

  final TfArg<String>? propertiesJson;

  final TfArg<BedrockagentcoreGatewayTargetType> type;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'items_json': ?itemsJson?.toTfJson(),
    'properties_json': ?propertiesJson?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.items.property` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreGatewayTargetItemsProperty {
  const BedrockagentcoreGatewayTargetItemsProperty({
    this.description,
    this.itemsJson,
    required this.name,
    this.propertiesJson,
    this.required,
    required this.type,
  });

  final TfArg<String>? description;

  final TfArg<String>? itemsJson;

  final TfArg<String> name;

  final TfArg<String>? propertiesJson;

  final TfArg<bool>? required;

  final TfArg<BedrockagentcoreGatewayTargetType> type;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'items_json': ?itemsJson?.toTfJson(),
    'name': name.toTfJson(),
    'properties_json': ?propertiesJson?.toTfJson(),
    'required': ?required?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.property` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreGatewayTargetProperty {
  const BedrockagentcoreGatewayTargetProperty({
    this.description,
    required this.name,
    this.required,
    required this.type,
    this.items,
    this.property,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<bool>? required;

  final TfArg<BedrockagentcoreGatewayTargetType> type;

  final List<BedrockagentcoreGatewayTargetItems>? items;

  final List<BedrockagentcoreGatewayTargetItemsProperty>? property;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'required': ?required?.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.output_schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetOutputSchema {
  const BedrockagentcoreGatewayTargetOutputSchema({
    this.description,
    required this.type,
    this.items,
    this.property,
  });

  final TfArg<String>? description;

  final TfArg<BedrockagentcoreGatewayTargetType> type;

  final List<BedrockagentcoreGatewayTargetItems>? items;

  final List<BedrockagentcoreGatewayTargetProperty>? property;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.mcp_server` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetMcpServer {
  const BedrockagentcoreGatewayTargetMcpServer({
    required this.endpoint,
    this.listingMode,
    this.resourcePriority,
    this.mcpToolSchema,
  });

  final TfArg<String> endpoint;

  final TfArg<BedrockagentcoreGatewayTargetListingMode>? listingMode;

  final TfArg<num>? resourcePriority;

  final List<BedrockagentcoreGatewayTargetMcpToolSchema>? mcpToolSchema;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'listing_mode': ?listingMode?.toTfJson(),
    'resource_priority': ?resourcePriority?.toTfJson(),
    if (mcpToolSchema != null)
      'mcp_tool_schema': [for (final e in mcpToolSchema!) e.encode()],
  };
}

/// `listing_mode` — derived from the provider schema description.
enum BedrockagentcoreGatewayTargetListingMode implements TerraformEnum {
  defaultCase('DEFAULT'),
  dynamic('DYNAMIC');

  const BedrockagentcoreGatewayTargetListingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_configuration.mcp.mcp_server.mcp_tool_schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetMcpToolSchema {
  const BedrockagentcoreGatewayTargetMcpToolSchema({
    this.inlinePayload,
    this.s3,
  });

  final List<BedrockagentcoreGatewayTargetInlinePayload>? inlinePayload;

  final List<BedrockagentcoreGatewayTargetMcpToolSchemaS3>? s3;

  Map<String, Object?> encode() => {
    if (inlinePayload != null)
      'inline_payload': [for (final e in inlinePayload!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.mcp_server.mcp_tool_schema.s3` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetMcpToolSchemaS3 {
  const BedrockagentcoreGatewayTargetMcpToolSchemaS3({
    this.bucketOwnerAccountId,
    required this.uri,
  });

  final TfArg<String>? bucketOwnerAccountId;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'bucket_owner_account_id': ?bucketOwnerAccountId?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.open_api_schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetOpenApiSchema {
  const BedrockagentcoreGatewayTargetOpenApiSchema({
    this.inlinePayload,
    this.s3,
  });

  final List<BedrockagentcoreGatewayTargetInlinePayload>? inlinePayload;

  final List<BedrockagentcoreGatewayTargetS3>? s3;

  Map<String, Object?> encode() => {
    if (inlinePayload != null)
      'inline_payload': [for (final e in inlinePayload!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.smithy_model` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetSmithyModel {
  const BedrockagentcoreGatewayTargetSmithyModel({this.inlinePayload, this.s3});

  final List<BedrockagentcoreGatewayTargetInlinePayload>? inlinePayload;

  final List<BedrockagentcoreGatewayTargetS3>? s3;

  Map<String, Object?> encode() => {
    if (inlinePayload != null)
      'inline_payload': [for (final e in inlinePayload!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Factory wrapper for `aws_bedrockagentcore_gateway_target`.
final class AwsBedrockagentcoreGatewayTarget extends Resource {
  static const String tfType = 'aws_bedrockagentcore_gateway_target';

  AwsBedrockagentcoreGatewayTarget({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> gatewayIdentifier,
    required TfArg<String> name,
    TfArg<String>? region,
    List<BedrockagentcoreGatewayTargetCredentialProviderConfiguration>?
    credentialProviderConfiguration,
    List<BedrockagentcoreGatewayTargetMetadataConfiguration>?
    metadataConfiguration,
    List<BedrockagentcoreGatewayTargetPrivateEndpoint>? privateEndpoint,
    List<BedrockagentcoreGatewayTargetConfiguration>? targetConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'gateway_identifier': gatewayIdentifier,
           'name': name,
           'region': ?region,
           if (credentialProviderConfiguration != null)
             'credential_provider_configuration': TfArg.literal([
               for (final e in credentialProviderConfiguration) e.encode(),
             ]),
           if (metadataConfiguration != null)
             'metadata_configuration': TfArg.literal([
               for (final e in metadataConfiguration) e.encode(),
             ]),
           if (privateEndpoint != null)
             'private_endpoint': TfArg.literal([
               for (final e in privateEndpoint) e.encode(),
             ]),
           if (targetConfiguration != null)
             'target_configuration': TfArg.literal([
               for (final e in targetConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcoreGatewayTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreGatewayTarget>`.
  RefTo<AwsBedrockagentcoreGatewayTarget> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetId => TfRef.attribute<String>(this, 'target_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `gateway_identifier` attribute.
  TfRef<String> get gatewayIdentifier =>
      TfRef.attribute<String>(this, 'gateway_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
