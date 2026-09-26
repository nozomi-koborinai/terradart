// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final List<
    BedrockagentcoreGatewayTargetCredentialProviderConfigurationApiKey
  >?
  apiKey;

  final List<
    BedrockagentcoreGatewayTargetCredentialProviderConfigurationCallerIamCredentials
  >?
  callerIamCredentials;

  final List<
    BedrockagentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRole
  >?
  gatewayIamRole;

  final List<
    BedrockagentcoreGatewayTargetCredentialProviderConfigurationJwtPassthrough
  >?
  jwtPassthrough;

  final List<BedrockagentcoreGatewayTargetCredentialProviderConfigurationOauth>?
  oauth;

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
final class BedrockagentcoreGatewayTargetCredentialProviderConfigurationApiKey {
  const BedrockagentcoreGatewayTargetCredentialProviderConfigurationApiKey({
    this.credentialLocation,
    this.credentialParameterName,
    this.credentialPrefix,
    required this.providerArn,
  });

  final TfArg<String>? credentialLocation;

  final TfArg<String>? credentialParameterName;

  final TfArg<String>? credentialPrefix;

  final TfArg<String> providerArn;

  Map<String, Object?> encode() => {
    if (credentialLocation != null)
      'credential_location': credentialLocation!.toTfJson(),
    if (credentialParameterName != null)
      'credential_parameter_name': credentialParameterName!.toTfJson(),
    if (credentialPrefix != null)
      'credential_prefix': credentialPrefix!.toTfJson(),
    'provider_arn': providerArn.toTfJson(),
  };
}

/// Typed helper for the `credential_provider_configuration.caller_iam_credentials` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetCredentialProviderConfigurationCallerIamCredentials {
  const BedrockagentcoreGatewayTargetCredentialProviderConfigurationCallerIamCredentials({
    this.region,
    required this.service,
  });

  final TfArg<String>? region;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    if (region != null) 'region': region!.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `credential_provider_configuration.gateway_iam_role` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRole {
  const BedrockagentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRole({
    this.region,
    this.service,
  });

  final TfArg<String>? region;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    if (region != null) 'region': region!.toTfJson(),
    if (service != null) 'service': service!.toTfJson(),
  };
}

/// Typed helper for the `credential_provider_configuration.jwt_passthrough` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetCredentialProviderConfigurationJwtPassthrough {
  const BedrockagentcoreGatewayTargetCredentialProviderConfigurationJwtPassthrough();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `credential_provider_configuration.oauth` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetCredentialProviderConfigurationOauth {
  const BedrockagentcoreGatewayTargetCredentialProviderConfigurationOauth({
    this.customParameters,
    this.defaultReturnUrl,
    this.grantType,
    required this.providerArn,
    required this.scopes,
  });

  final TfArg<Map<String, String>>? customParameters;

  final TfArg<String>? defaultReturnUrl;

  final TfArg<String>? grantType;

  final TfArg<String> providerArn;

  final TfArg<List<Object?>> scopes;

  Map<String, Object?> encode() => {
    if (customParameters != null)
      'custom_parameters': customParameters!.toTfJson(),
    if (defaultReturnUrl != null)
      'default_return_url': defaultReturnUrl!.toTfJson(),
    if (grantType != null) 'grant_type': grantType!.toTfJson(),
    'provider_arn': providerArn.toTfJson(),
    'scopes': scopes.toTfJson(),
  };
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

  final TfArg<List<Object?>>? allowedQueryParameters;

  final TfArg<List<Object?>>? allowedRequestHeaders;

  final TfArg<List<Object?>>? allowedResponseHeaders;

  Map<String, Object?> encode() => {
    if (allowedQueryParameters != null)
      'allowed_query_parameters': allowedQueryParameters!.toTfJson(),
    if (allowedRequestHeaders != null)
      'allowed_request_headers': allowedRequestHeaders!.toTfJson(),
    if (allowedResponseHeaders != null)
      'allowed_response_headers': allowedResponseHeaders!.toTfJson(),
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

  final List<BedrockagentcoreGatewayTargetPrivateEndpointManagedVpcResource>?
  managedVpcResource;

  final List<
    BedrockagentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResource
  >?
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
final class BedrockagentcoreGatewayTargetPrivateEndpointManagedVpcResource {
  const BedrockagentcoreGatewayTargetPrivateEndpointManagedVpcResource({
    required this.endpointIpAddressType,
    this.routingDomain,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcIdentifier,
  });

  final TfArg<String> endpointIpAddressType;

  final TfArg<String>? routingDomain;

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String> vpcIdentifier;

  Map<String, Object?> encode() => {
    'endpoint_ip_address_type': endpointIpAddressType.toTfJson(),
    if (routingDomain != null) 'routing_domain': routingDomain!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    'vpc_identifier': vpcIdentifier.toTfJson(),
  };
}

/// Typed helper for the `private_endpoint.self_managed_lattice_resource` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResource {
  const BedrockagentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    if (resourceConfigurationIdentifier != null)
      'resource_configuration_identifier': resourceConfigurationIdentifier!
          .toTfJson(),
  };
}

/// Typed helper for the `target_configuration` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfiguration {
  const BedrockagentcoreGatewayTargetTargetConfiguration({
    this.http,
    this.inference,
    this.mcp,
  });

  final List<BedrockagentcoreGatewayTargetTargetConfigurationHttp>? http;

  final List<BedrockagentcoreGatewayTargetTargetConfigurationInference>?
  inference;

  final List<BedrockagentcoreGatewayTargetTargetConfigurationMcp>? mcp;

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
final class BedrockagentcoreGatewayTargetTargetConfigurationHttp {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttp({
    this.agentcoreRuntime,
    this.passthrough,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime
  >?
  agentcoreRuntime;

  final List<BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthrough>?
  passthrough;

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
final class BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime({
    required this.arn,
    this.qualifier,
    this.schema,
  });

  final TfArg<String> arn;

  final TfArg<String>? qualifier;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchema
  >?
  schema;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (qualifier != null) 'qualifier': qualifier!.toTfJson(),
    if (schema != null) 'schema': [for (final e in schema!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.http.agentcore_runtime.schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchema {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchema({
    this.source,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSource
  >?
  source;

  Map<String, Object?> encode() => {
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.http.agentcore_runtime.schema.source` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSource {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSource({
    this.inlinePayload,
    this.s3,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceInlinePayload
  >?
  inlinePayload;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceS3
  >?
  s3;

  Map<String, Object?> encode() => {
    if (inlinePayload != null)
      'inline_payload': [for (final e in inlinePayload!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.http.agentcore_runtime.schema.source.inline_payload` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceInlinePayload {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceInlinePayload({
    required this.payload,
  });

  final TfArg<String> payload;

  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// Typed helper for the `target_configuration.http.agentcore_runtime.schema.source.s3` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceS3 {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeSchemaSourceS3({
    this.bucketOwnerAccountId,
    this.uri,
  });

  final TfArg<String>? bucketOwnerAccountId;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (bucketOwnerAccountId != null)
      'bucket_owner_account_id': bucketOwnerAccountId!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.http.passthrough` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthrough {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthrough({
    required this.endpoint,
    required this.protocolType,
    this.staticQueryParameterConflictResolution,
    this.staticQueryParameters,
    this.schema,
    this.stickinessConfiguration,
  });

  final TfArg<String> endpoint;

  final TfArg<String> protocolType;

  final TfArg<String>? staticQueryParameterConflictResolution;

  final TfArg<Map<String, String>>? staticQueryParameters;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema
  >?
  schema;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughStickinessConfiguration
  >?
  stickinessConfiguration;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'protocol_type': protocolType.toTfJson(),
    if (staticQueryParameterConflictResolution != null)
      'static_query_parameter_conflict_resolution':
          staticQueryParameterConflictResolution!.toTfJson(),
    if (staticQueryParameters != null)
      'static_query_parameters': staticQueryParameters!.toTfJson(),
    if (schema != null) 'schema': [for (final e in schema!) e.encode()],
    if (stickinessConfiguration != null)
      'stickiness_configuration': [
        for (final e in stickinessConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `target_configuration.http.passthrough.schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchema({
    this.source,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource
  >?
  source;

  Map<String, Object?> encode() => {
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.http.passthrough.schema.source` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSource({
    this.inlinePayload,
    this.s3,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceInlinePayload
  >?
  inlinePayload;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceS3
  >?
  s3;

  Map<String, Object?> encode() => {
    if (inlinePayload != null)
      'inline_payload': [for (final e in inlinePayload!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.http.passthrough.schema.source.inline_payload` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceInlinePayload {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceInlinePayload({
    required this.payload,
  });

  final TfArg<String> payload;

  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// Typed helper for the `target_configuration.http.passthrough.schema.source.s3` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceS3 {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughSchemaSourceS3({
    this.bucketOwnerAccountId,
    this.uri,
  });

  final TfArg<String>? bucketOwnerAccountId;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (bucketOwnerAccountId != null)
      'bucket_owner_account_id': bucketOwnerAccountId!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.http.passthrough.stickiness_configuration` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughStickinessConfiguration {
  const BedrockagentcoreGatewayTargetTargetConfigurationHttpPassthroughStickinessConfiguration({
    this.compositeIdentifier,
    required this.identifier,
    this.timeout,
  });

  final TfArg<List<Object?>>? compositeIdentifier;

  final TfArg<String> identifier;

  final TfArg<num>? timeout;

  Map<String, Object?> encode() => {
    if (compositeIdentifier != null)
      'composite_identifier': compositeIdentifier!.toTfJson(),
    'identifier': identifier.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.inference` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationInference {
  const BedrockagentcoreGatewayTargetTargetConfigurationInference({
    this.connector,
    this.provider,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationInferenceConnector
  >?
  connector;

  final List<BedrockagentcoreGatewayTargetTargetConfigurationInferenceProvider>?
  provider;

  Map<String, Object?> encode() => {
    if (connector != null)
      'connector': [for (final e in connector!) e.encode()],
    if (provider != null) 'provider': [for (final e in provider!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.inference.connector` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationInferenceConnector {
  const BedrockagentcoreGatewayTargetTargetConfigurationInferenceConnector({
    this.source,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationInferenceConnectorSource
  >?
  source;

  Map<String, Object?> encode() => {
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.inference.connector.source` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationInferenceConnectorSource {
  const BedrockagentcoreGatewayTargetTargetConfigurationInferenceConnectorSource({
    required this.connectorId,
  });

  final TfArg<String> connectorId;

  Map<String, Object?> encode() => {'connector_id': connectorId.toTfJson()};
}

/// Typed helper for the `target_configuration.inference.provider` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationInferenceProvider {
  const BedrockagentcoreGatewayTargetTargetConfigurationInferenceProvider({
    required this.endpoint,
    this.modelMapping,
    this.operation,
  });

  final TfArg<String> endpoint;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderModelMapping
  >?
  modelMapping;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderOperation
  >?
  operation;

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
final class BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderModelMapping {
  const BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderModelMapping({
    this.providerPrefix,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderModelMappingProviderPrefix
  >?
  providerPrefix;

  Map<String, Object?> encode() => {
    if (providerPrefix != null)
      'provider_prefix': [for (final e in providerPrefix!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.inference.provider.model_mapping.provider_prefix` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderModelMappingProviderPrefix {
  const BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderModelMappingProviderPrefix({
    this.separator,
    this.strip,
  });

  final TfArg<String>? separator;

  final TfArg<bool>? strip;

  Map<String, Object?> encode() => {
    if (separator != null) 'separator': separator!.toTfJson(),
    if (strip != null) 'strip': strip!.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.inference.provider.operation` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderOperation {
  const BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderOperation({
    required this.path,
    this.providerPath,
    this.model,
  });

  final TfArg<String> path;

  final TfArg<String>? providerPath;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel
  >?
  model;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    if (providerPath != null) 'provider_path': providerPath!.toTfJson(),
    if (model != null) 'model': [for (final e in model!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.inference.provider.operation.model` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel {
  const BedrockagentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel({
    required this.model,
  });

  final TfArg<String> model;

  Map<String, Object?> encode() => {'model': model.toTfJson()};
}

/// Typed helper for the `target_configuration.mcp` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcp {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcp({
    this.apiGateway,
    this.connector,
    this.lambda,
    this.mcpServer,
    this.openApiSchema,
    this.smithyModel,
  });

  final List<BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGateway>?
  apiGateway;

  final List<BedrockagentcoreGatewayTargetTargetConfigurationMcpConnector>?
  connector;

  final List<BedrockagentcoreGatewayTargetTargetConfigurationMcpLambda>? lambda;

  final List<BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServer>?
  mcpServer;

  final List<BedrockagentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema>?
  openApiSchema;

  final List<BedrockagentcoreGatewayTargetTargetConfigurationMcpSmithyModel>?
  smithyModel;

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
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGateway {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGateway({
    required this.restApiId,
    required this.stage,
    this.apiGatewayToolConfiguration,
  });

  final TfArg<String> restApiId;

  final TfArg<String> stage;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfiguration
  >?
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
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfiguration {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfiguration({
    this.toolFilter,
    this.toolOverride,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter
  >?
  toolFilter;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride
  >?
  toolOverride;

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
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter({
    required this.filterPath,
    required this.methods,
  });

  final TfArg<String> filterPath;

  final TfArg<List<Object?>> methods;

  Map<String, Object?> encode() => {
    'filter_path': filterPath.toTfJson(),
    'methods': methods.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_override` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride({
    this.description,
    required this.method,
    required this.name,
    required this.path,
  });

  final TfArg<String>? description;

  final TfArg<String> method;

  final TfArg<String> name;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'method': method.toTfJson(),
    'name': name.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.connector` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpConnector {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpConnector({
    this.enabled,
    this.configuration,
    this.source,
  });

  final TfArg<List<Object?>>? enabled;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration
  >?
  configuration;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpConnectorSource
  >?
  source;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (configuration != null)
      'configuration': [for (final e in configuration!) e.encode()],
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.connector.configuration` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration({
    this.description,
    required this.name,
    this.parameterValues,
    this.parameterOverride,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<String>? parameterValues;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride
  >?
  parameterOverride;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (parameterValues != null)
      'parameter_values': parameterValues!.toTfJson(),
    if (parameterOverride != null)
      'parameter_override': [for (final e in parameterOverride!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.connector.configuration.parameter_override` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride({
    this.description,
    required this.path,
    this.visible,
  });

  final TfArg<String>? description;

  final TfArg<String> path;

  final TfArg<bool>? visible;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'path': path.toTfJson(),
    if (visible != null) 'visible': visible!.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.connector.source` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpConnectorSource {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpConnectorSource({
    required this.connectorId,
    this.version,
  });

  final TfArg<String> connectorId;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'connector_id': connectorId.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambda {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambda({
    required this.lambdaArn,
    this.toolSchema,
  });

  final TfArg<String> lambdaArn;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema
  >?
  toolSchema;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.toTfJson(),
    if (toolSchema != null)
      'tool_schema': [for (final e in toolSchema!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema({
    this.inlinePayload,
    this.s3,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload
  >?
  inlinePayload;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3
  >?
  s3;

  Map<String, Object?> encode() => {
    if (inlinePayload != null)
      'inline_payload': [for (final e in inlinePayload!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload({
    required this.description,
    required this.name,
    this.inputSchema,
    this.outputSchema,
  });

  final TfArg<String> description;

  final TfArg<String> name;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema
  >?
  inputSchema;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema
  >?
  outputSchema;

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
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema({
    this.description,
    required this.type,
    this.items,
    this.property,
  });

  final TfArg<String>? description;

  final TfArg<String> type;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItems
  >?
  items;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaProperty
  >?
  property;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.items` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItems {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItems({
    this.description,
    required this.type,
    this.items,
    this.property,
  });

  final TfArg<String>? description;

  final TfArg<String> type;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsItems
  >?
  items;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty
  >?
  property;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.items.items` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsItems {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsItems({
    this.description,
    this.itemsJson,
    this.propertiesJson,
    required this.type,
  });

  final TfArg<String>? description;

  final TfArg<String>? itemsJson;

  final TfArg<String>? propertiesJson;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (itemsJson != null) 'items_json': itemsJson!.toTfJson(),
    if (propertiesJson != null) 'properties_json': propertiesJson!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.items.property` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty({
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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (itemsJson != null) 'items_json': itemsJson!.toTfJson(),
    'name': name.toTfJson(),
    if (propertiesJson != null) 'properties_json': propertiesJson!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.property` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaProperty {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaProperty({
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

  final TfArg<String> type;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItems
  >?
  items;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyProperty
  >?
  property;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.property.items` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItems {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItems({
    this.description,
    required this.type,
    this.items,
    this.property,
  });

  final TfArg<String>? description;

  final TfArg<String> type;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsItems
  >?
  items;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty
  >?
  property;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.property.items.items` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsItems {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsItems({
    this.description,
    this.itemsJson,
    this.propertiesJson,
    required this.type,
  });

  final TfArg<String>? description;

  final TfArg<String>? itemsJson;

  final TfArg<String>? propertiesJson;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (itemsJson != null) 'items_json': itemsJson!.toTfJson(),
    if (propertiesJson != null) 'properties_json': propertiesJson!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.property.items.property` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty({
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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (itemsJson != null) 'items_json': itemsJson!.toTfJson(),
    'name': name.toTfJson(),
    if (propertiesJson != null) 'properties_json': propertiesJson!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.input_schema.property.property` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyProperty {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyProperty({
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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (itemsJson != null) 'items_json': itemsJson!.toTfJson(),
    'name': name.toTfJson(),
    if (propertiesJson != null) 'properties_json': propertiesJson!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.output_schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema({
    this.description,
    required this.type,
    this.items,
    this.property,
  });

  final TfArg<String>? description;

  final TfArg<String> type;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItems
  >?
  items;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty
  >?
  property;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.output_schema.items` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItems {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItems({
    this.description,
    required this.type,
    this.items,
    this.property,
  });

  final TfArg<String>? description;

  final TfArg<String> type;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItemsItems
  >?
  items;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItemsProperty
  >?
  property;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.output_schema.items.items` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItemsItems {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItemsItems({
    this.description,
    this.itemsJson,
    this.propertiesJson,
    required this.type,
  });

  final TfArg<String>? description;

  final TfArg<String>? itemsJson;

  final TfArg<String>? propertiesJson;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (itemsJson != null) 'items_json': itemsJson!.toTfJson(),
    if (propertiesJson != null) 'properties_json': propertiesJson!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.output_schema.items.property` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItemsProperty {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItemsProperty({
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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (itemsJson != null) 'items_json': itemsJson!.toTfJson(),
    'name': name.toTfJson(),
    if (propertiesJson != null) 'properties_json': propertiesJson!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.output_schema.property` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty({
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

  final TfArg<String> type;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItems
  >?
  items;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty
  >?
  property;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.output_schema.property.items` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItems {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItems({
    this.description,
    required this.type,
    this.items,
    this.property,
  });

  final TfArg<String>? description;

  final TfArg<String> type;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsItems
  >?
  items;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsProperty
  >?
  property;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'type': type.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.output_schema.property.items.items` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsItems {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsItems({
    this.description,
    this.itemsJson,
    this.propertiesJson,
    required this.type,
  });

  final TfArg<String>? description;

  final TfArg<String>? itemsJson;

  final TfArg<String>? propertiesJson;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (itemsJson != null) 'items_json': itemsJson!.toTfJson(),
    if (propertiesJson != null) 'properties_json': propertiesJson!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.output_schema.property.items.property` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsProperty {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsProperty({
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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (itemsJson != null) 'items_json': itemsJson!.toTfJson(),
    'name': name.toTfJson(),
    if (propertiesJson != null) 'properties_json': propertiesJson!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.inline_payload.output_schema.property.property` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty({
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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (itemsJson != null) 'items_json': itemsJson!.toTfJson(),
    'name': name.toTfJson(),
    if (propertiesJson != null) 'properties_json': propertiesJson!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.lambda.tool_schema.s3` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3 {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3({
    this.bucketOwnerAccountId,
    this.uri,
  });

  final TfArg<String>? bucketOwnerAccountId;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (bucketOwnerAccountId != null)
      'bucket_owner_account_id': bucketOwnerAccountId!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.mcp_server` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServer {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServer({
    required this.endpoint,
    this.listingMode,
    this.resourcePriority,
    this.mcpToolSchema,
  });

  final TfArg<String> endpoint;

  final TfArg<String>? listingMode;

  final TfArg<num>? resourcePriority;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchema
  >?
  mcpToolSchema;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    if (listingMode != null) 'listing_mode': listingMode!.toTfJson(),
    if (resourcePriority != null)
      'resource_priority': resourcePriority!.toTfJson(),
    if (mcpToolSchema != null)
      'mcp_tool_schema': [for (final e in mcpToolSchema!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.mcp_server.mcp_tool_schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchema {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchema({
    this.inlinePayload,
    this.s3,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaInlinePayload
  >?
  inlinePayload;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaS3
  >?
  s3;

  Map<String, Object?> encode() => {
    if (inlinePayload != null)
      'inline_payload': [for (final e in inlinePayload!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.mcp_server.mcp_tool_schema.inline_payload` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaInlinePayload {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaInlinePayload({
    required this.payload,
  });

  final TfArg<String> payload;

  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// Typed helper for the `target_configuration.mcp.mcp_server.mcp_tool_schema.s3` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaS3 {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaS3({
    this.bucketOwnerAccountId,
    required this.uri,
  });

  final TfArg<String>? bucketOwnerAccountId;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    if (bucketOwnerAccountId != null)
      'bucket_owner_account_id': bucketOwnerAccountId!.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.open_api_schema` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema({
    this.inlinePayload,
    this.s3,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload
  >?
  inlinePayload;

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3
  >?
  s3;

  Map<String, Object?> encode() => {
    if (inlinePayload != null)
      'inline_payload': [for (final e in inlinePayload!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.open_api_schema.inline_payload` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload({
    required this.payload,
  });

  final TfArg<String> payload;

  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// Typed helper for the `target_configuration.mcp.open_api_schema.s3` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3 {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3({
    this.bucketOwnerAccountId,
    this.uri,
  });

  final TfArg<String>? bucketOwnerAccountId;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (bucketOwnerAccountId != null)
      'bucket_owner_account_id': bucketOwnerAccountId!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.mcp.smithy_model` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpSmithyModel {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpSmithyModel({
    this.inlinePayload,
    this.s3,
  });

  final List<
    BedrockagentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload
  >?
  inlinePayload;

  final List<BedrockagentcoreGatewayTargetTargetConfigurationMcpSmithyModelS3>?
  s3;

  Map<String, Object?> encode() => {
    if (inlinePayload != null)
      'inline_payload': [for (final e in inlinePayload!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `target_configuration.mcp.smithy_model.inline_payload` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpSmithyModelInlinePayload({
    required this.payload,
  });

  final TfArg<String> payload;

  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// Typed helper for the `target_configuration.mcp.smithy_model.s3` block of
/// `aws_bedrockagentcore_gateway_target` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayTargetTargetConfigurationMcpSmithyModelS3 {
  const BedrockagentcoreGatewayTargetTargetConfigurationMcpSmithyModelS3({
    this.bucketOwnerAccountId,
    this.uri,
  });

  final TfArg<String>? bucketOwnerAccountId;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (bucketOwnerAccountId != null)
      'bucket_owner_account_id': bucketOwnerAccountId!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
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
    List<BedrockagentcoreGatewayTargetTargetConfiguration>? targetConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'gateway_identifier': gatewayIdentifier,
           'name': name,
           if (region != null) 'region': region,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetId => TfRef.attribute<String>(this, 'target_id');
}
