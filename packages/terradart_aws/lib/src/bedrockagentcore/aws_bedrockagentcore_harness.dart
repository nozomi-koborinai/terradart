// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_bedrockagentcore_harness`.
const Set<String> _awsBedrockagentcoreHarnessSensitive = <String>{
  'environment_variables',
  'system_prompt.text',
  'tool.config.inline_function.input_schema',
  'tool.config.remote_mcp.headers',
  'tool.config.remote_mcp.url',
};

/// Typed helper for the `authorizer_configuration` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfiguration {
  const BedrockagentcoreHarnessAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  final List<BedrockagentcoreHarnessCustomJwtAuthorizer>? customJwtAuthorizer;

  Map<String, Object?> encode() => {
    if (customJwtAuthorizer != null)
      'custom_jwt_authorizer': [
        for (final e in customJwtAuthorizer!) e.encode(),
      ],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessCustomJwtAuthorizer {
  const BedrockagentcoreHarnessCustomJwtAuthorizer({
    this.allowedAudience,
    this.allowedClients,
    this.allowedScopes,
    required this.discoveryUrl,
    this.allowedWorkloadConfiguration,
    this.customClaim,
    this.privateEndpoint,
    this.privateEndpointOverrides,
  });

  final TfArg<List<String>>? allowedAudience;

  final TfArg<List<String>>? allowedClients;

  final TfArg<List<String>>? allowedScopes;

  final TfArg<String> discoveryUrl;

  final List<BedrockagentcoreHarnessAllowedWorkloadConfiguration>?
  allowedWorkloadConfiguration;

  final List<BedrockagentcoreHarnessCustomClaim>? customClaim;

  final List<BedrockagentcoreHarnessPrivateEndpoint>? privateEndpoint;

  final List<BedrockagentcoreHarnessPrivateEndpointOverrides>?
  privateEndpointOverrides;

  Map<String, Object?> encode() => {
    'allowed_audience': ?allowedAudience?.toTfJson(),
    'allowed_clients': ?allowedClients?.toTfJson(),
    'allowed_scopes': ?allowedScopes?.toTfJson(),
    'discovery_url': discoveryUrl.toTfJson(),
    if (allowedWorkloadConfiguration != null)
      'allowed_workload_configuration': [
        for (final e in allowedWorkloadConfiguration!) e.encode(),
      ],
    if (customClaim != null)
      'custom_claim': [for (final e in customClaim!) e.encode()],
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
    if (privateEndpointOverrides != null)
      'private_endpoint_overrides': [
        for (final e in privateEndpointOverrides!) e.encode(),
      ],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAllowedWorkloadConfiguration {
  const BedrockagentcoreHarnessAllowedWorkloadConfiguration({
    this.workloadIdentities,
    this.hostingEnvironment,
  });

  final TfArg<List<String>>? workloadIdentities;

  final List<BedrockagentcoreHarnessHostingEnvironment>? hostingEnvironment;

  Map<String, Object?> encode() => {
    'workload_identities': ?workloadIdentities?.toTfJson(),
    if (hostingEnvironment != null)
      'hosting_environment': [for (final e in hostingEnvironment!) e.encode()],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environment` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessHostingEnvironment {
  const BedrockagentcoreHarnessHostingEnvironment({required this.arn});

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessCustomClaim {
  const BedrockagentcoreHarnessCustomClaim({
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
    this.authorizingClaimMatchValue,
  });

  final TfArg<String> inboundTokenClaimName;

  final TfArg<BedrockagentcoreHarnessInboundTokenClaimValueType>
  inboundTokenClaimValueType;

  final List<BedrockagentcoreHarnessAuthorizingClaimMatchValue>?
  authorizingClaimMatchValue;

  Map<String, Object?> encode() => {
    'inbound_token_claim_name': inboundTokenClaimName.toTfJson(),
    'inbound_token_claim_value_type': inboundTokenClaimValueType.toTfJson(),
    if (authorizingClaimMatchValue != null)
      'authorizing_claim_match_value': [
        for (final e in authorizingClaimMatchValue!) e.encode(),
      ],
  };
}

/// `inbound_token_claim_value_type` — derived from the provider schema description.
enum BedrockagentcoreHarnessInboundTokenClaimValueType
    implements TerraformEnum {
  string('STRING'),
  stringArray('STRING_ARRAY');

  const BedrockagentcoreHarnessInboundTokenClaimValueType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizingClaimMatchValue {
  const BedrockagentcoreHarnessAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    this.claimMatchValue,
  });

  final TfArg<BedrockagentcoreHarnessClaimMatchOperator> claimMatchOperator;

  final List<BedrockagentcoreHarnessClaimMatchValue>? claimMatchValue;

  Map<String, Object?> encode() => {
    'claim_match_operator': claimMatchOperator.toTfJson(),
    if (claimMatchValue != null)
      'claim_match_value': [for (final e in claimMatchValue!) e.encode()],
  };
}

/// `claim_match_operator` — derived from the provider schema description.
enum BedrockagentcoreHarnessClaimMatchOperator implements TerraformEnum {
  equals('EQUALS'),
  contains('CONTAINS'),
  containsAny('CONTAINS_ANY');

  const BedrockagentcoreHarnessClaimMatchOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value.claim_match_value` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessClaimMatchValue {
  const BedrockagentcoreHarnessClaimMatchValue({
    this.matchValueString,
    this.matchValueStringList,
  });

  final TfArg<String>? matchValueString;

  final TfArg<List<String>>? matchValueStringList;

  Map<String, Object?> encode() => {
    'match_value_string': ?matchValueString?.toTfJson(),
    'match_value_string_list': ?matchValueStringList?.toTfJson(),
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreHarnessPrivateEndpoint {
  const BedrockagentcoreHarnessPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<BedrockagentcoreHarnessManagedVpcResource>? managedVpcResource;

  final List<BedrockagentcoreHarnessSelfManagedLatticeResource>?
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

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreHarnessManagedVpcResource {
  const BedrockagentcoreHarnessManagedVpcResource({
    required this.endpointIpAddressType,
    this.routingDomain,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcIdentifier,
  });

  final TfArg<BedrockagentcoreHarnessEndpointIpAddressType>
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
enum BedrockagentcoreHarnessEndpointIpAddressType implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const BedrockagentcoreHarnessEndpointIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreHarnessSelfManagedLatticeResource {
  const BedrockagentcoreHarnessSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    'resource_configuration_identifier': ?resourceConfigurationIdentifier
        ?.toTfJson(),
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessPrivateEndpointOverrides {
  const BedrockagentcoreHarnessPrivateEndpointOverrides({
    required this.domain,
    this.privateEndpoint,
  });

  final TfArg<String> domain;

  final List<BedrockagentcoreHarnessPrivateEndpoint>? privateEndpoint;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
  };
}

/// Typed helper for the `environment` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessEnvironment {
  const BedrockagentcoreHarnessEnvironment({this.agentcoreRuntimeEnvironment});

  final List<BedrockagentcoreHarnessAgentcoreRuntimeEnvironment>?
  agentcoreRuntimeEnvironment;

  Map<String, Object?> encode() => {
    if (agentcoreRuntimeEnvironment != null)
      'agentcore_runtime_environment': [
        for (final e in agentcoreRuntimeEnvironment!) e.encode(),
      ],
  };
}

/// Typed helper for the `environment.agentcore_runtime_environment` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAgentcoreRuntimeEnvironment {
  const BedrockagentcoreHarnessAgentcoreRuntimeEnvironment({
    this.lifecycleConfiguration,
    this.filesystemConfiguration,
    this.networkConfiguration,
  });

  final TfArg<List<Object?>>? lifecycleConfiguration;

  final List<BedrockagentcoreHarnessFilesystemConfiguration>?
  filesystemConfiguration;

  final List<BedrockagentcoreHarnessNetworkConfiguration>? networkConfiguration;

  Map<String, Object?> encode() => {
    'lifecycle_configuration': ?lifecycleConfiguration?.toTfJson(),
    if (filesystemConfiguration != null)
      'filesystem_configuration': [
        for (final e in filesystemConfiguration!) e.encode(),
      ],
    if (networkConfiguration != null)
      'network_configuration': [
        for (final e in networkConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `environment.agentcore_runtime_environment.filesystem_configuration` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessFilesystemConfiguration {
  const BedrockagentcoreHarnessFilesystemConfiguration({
    this.efsAccessPoint,
    this.s3FilesAccessPoint,
    this.sessionStorage,
  });

  final List<BedrockagentcoreHarnessEfsAccessPoint>? efsAccessPoint;

  final List<BedrockagentcoreHarnessS3FilesAccessPoint>? s3FilesAccessPoint;

  final List<BedrockagentcoreHarnessSessionStorage>? sessionStorage;

  Map<String, Object?> encode() => {
    if (efsAccessPoint != null)
      'efs_access_point': [for (final e in efsAccessPoint!) e.encode()],
    if (s3FilesAccessPoint != null)
      's3_files_access_point': [
        for (final e in s3FilesAccessPoint!) e.encode(),
      ],
    if (sessionStorage != null)
      'session_storage': [for (final e in sessionStorage!) e.encode()],
  };
}

/// Typed helper for the `environment.agentcore_runtime_environment.filesystem_configuration.efs_access_point` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessEfsAccessPoint {
  const BedrockagentcoreHarnessEfsAccessPoint({
    required this.accessPointArn,
    required this.mountPath,
  });

  final TfArg<String> accessPointArn;

  final TfArg<String> mountPath;

  Map<String, Object?> encode() => {
    'access_point_arn': accessPointArn.toTfJson(),
    'mount_path': mountPath.toTfJson(),
  };
}

/// Typed helper for the `environment.agentcore_runtime_environment.filesystem_configuration.s3_files_access_point` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessS3FilesAccessPoint {
  const BedrockagentcoreHarnessS3FilesAccessPoint({
    required this.accessPointArn,
    required this.mountPath,
  });

  final TfArg<String> accessPointArn;

  final TfArg<String> mountPath;

  Map<String, Object?> encode() => {
    'access_point_arn': accessPointArn.toTfJson(),
    'mount_path': mountPath.toTfJson(),
  };
}

/// Typed helper for the `environment.agentcore_runtime_environment.filesystem_configuration.session_storage` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessSessionStorage {
  const BedrockagentcoreHarnessSessionStorage({required this.mountPath});

  final TfArg<String> mountPath;

  Map<String, Object?> encode() => {'mount_path': mountPath.toTfJson()};
}

/// Typed helper for the `environment.agentcore_runtime_environment.network_configuration` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessNetworkConfiguration {
  const BedrockagentcoreHarnessNetworkConfiguration({
    required this.networkMode,
    this.networkModeConfig,
  });

  final TfArg<BedrockagentcoreHarnessNetworkMode> networkMode;

  final List<BedrockagentcoreHarnessNetworkModeConfig>? networkModeConfig;

  Map<String, Object?> encode() => {
    'network_mode': networkMode.toTfJson(),
    if (networkModeConfig != null)
      'network_mode_config': [for (final e in networkModeConfig!) e.encode()],
  };
}

/// `network_mode` — derived from the provider schema description.
enum BedrockagentcoreHarnessNetworkMode implements TerraformEnum {
  public('PUBLIC'),
  vpc('VPC');

  const BedrockagentcoreHarnessNetworkMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `environment.agentcore_runtime_environment.network_configuration.network_mode_config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessNetworkModeConfig {
  const BedrockagentcoreHarnessNetworkModeConfig({
    required this.securityGroups,
    required this.subnets,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroups;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  Map<String, Object?> encode() => {
    'security_groups': securityGroups.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `environment_artifact` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessEnvironmentArtifact {
  const BedrockagentcoreHarnessEnvironmentArtifact({
    this.containerConfiguration,
  });

  final List<BedrockagentcoreHarnessContainerConfiguration>?
  containerConfiguration;

  Map<String, Object?> encode() => {
    if (containerConfiguration != null)
      'container_configuration': [
        for (final e in containerConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `environment_artifact.container_configuration` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessContainerConfiguration {
  const BedrockagentcoreHarnessContainerConfiguration({
    required this.containerUri,
  });

  final TfArg<String> containerUri;

  Map<String, Object?> encode() => {'container_uri': containerUri.toTfJson()};
}

/// Typed helper for the `memory` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessMemory {
  const BedrockagentcoreHarnessMemory({
    this.agentcoreMemoryConfiguration,
    this.disabled,
    this.managedMemoryConfiguration,
  });

  final List<BedrockagentcoreHarnessAgentcoreMemoryConfiguration>?
  agentcoreMemoryConfiguration;

  final List<BedrockagentcoreHarnessDisabled>? disabled;

  final List<BedrockagentcoreHarnessManagedMemoryConfiguration>?
  managedMemoryConfiguration;

  Map<String, Object?> encode() => {
    if (agentcoreMemoryConfiguration != null)
      'agentcore_memory_configuration': [
        for (final e in agentcoreMemoryConfiguration!) e.encode(),
      ],
    if (disabled != null) 'disabled': [for (final e in disabled!) e.encode()],
    if (managedMemoryConfiguration != null)
      'managed_memory_configuration': [
        for (final e in managedMemoryConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `memory.agentcore_memory_configuration` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAgentcoreMemoryConfiguration {
  const BedrockagentcoreHarnessAgentcoreMemoryConfiguration({
    this.actorId,
    required this.arn,
    this.messagesCount,
    this.retrievalConfig,
  });

  final TfArg<String>? actorId;

  final TfArg<String> arn;

  final TfArg<num>? messagesCount;

  final List<BedrockagentcoreHarnessRetrievalConfig>? retrievalConfig;

  Map<String, Object?> encode() => {
    'actor_id': ?actorId?.toTfJson(),
    'arn': arn.toTfJson(),
    'messages_count': ?messagesCount?.toTfJson(),
    if (retrievalConfig != null)
      'retrieval_config': [for (final e in retrievalConfig!) e.encode()],
  };
}

/// Typed helper for the `memory.agentcore_memory_configuration.retrieval_config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessRetrievalConfig {
  const BedrockagentcoreHarnessRetrievalConfig({
    required this.mapBlockKey,
    this.relevanceScore,
    this.strategyId,
    this.topK,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<num>? relevanceScore;

  final TfArg<String>? strategyId;

  final TfArg<num>? topK;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    'relevance_score': ?relevanceScore?.toTfJson(),
    'strategy_id': ?strategyId?.toTfJson(),
    'top_k': ?topK?.toTfJson(),
  };
}

/// Typed helper for the `memory.disabled` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessDisabled {
  const BedrockagentcoreHarnessDisabled();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `memory.managed_memory_configuration` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessManagedMemoryConfiguration {
  const BedrockagentcoreHarnessManagedMemoryConfiguration({
    this.encryptionKeyArn,
    this.eventExpiryDuration,
    this.strategies,
  });

  final RefTo<AwsKmsKey>? encryptionKeyArn;

  final TfArg<num>? eventExpiryDuration;

  final List<TfArg<BedrockagentcoreHarnessStrategies>>? strategies;

  Map<String, Object?> encode() => {
    'encryption_key_arn': ?encryptionKeyArn?.encodeAs('arn').toTfJson(),
    'event_expiry_duration': ?eventExpiryDuration?.toTfJson(),
    if (strategies != null)
      'strategies': [for (final e in strategies!) e.toTfJson()],
  };
}

/// `strategies` — derived from the provider schema description.
enum BedrockagentcoreHarnessStrategies implements TerraformEnum {
  semantic('SEMANTIC'),
  summarization('SUMMARIZATION'),
  userPreference('USER_PREFERENCE'),
  episodic('EPISODIC');

  const BedrockagentcoreHarnessStrategies(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `model` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessModel {
  const BedrockagentcoreHarnessModel({
    this.bedrockModelConfig,
    this.geminiModelConfig,
    this.litellmModelConfig,
    this.openaiModelConfig,
  });

  final List<BedrockagentcoreHarnessBedrockModelConfig>? bedrockModelConfig;

  final List<BedrockagentcoreHarnessGeminiModelConfig>? geminiModelConfig;

  final List<BedrockagentcoreHarnessLitellmModelConfig>? litellmModelConfig;

  final List<BedrockagentcoreHarnessOpenaiModelConfig>? openaiModelConfig;

  Map<String, Object?> encode() => {
    if (bedrockModelConfig != null)
      'bedrock_model_config': [for (final e in bedrockModelConfig!) e.encode()],
    if (geminiModelConfig != null)
      'gemini_model_config': [for (final e in geminiModelConfig!) e.encode()],
    if (litellmModelConfig != null)
      'litellm_model_config': [for (final e in litellmModelConfig!) e.encode()],
    if (openaiModelConfig != null)
      'openai_model_config': [for (final e in openaiModelConfig!) e.encode()],
  };
}

/// Typed helper for the `model.bedrock_model_config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessBedrockModelConfig {
  const BedrockagentcoreHarnessBedrockModelConfig({
    this.additionalParams,
    this.apiFormat,
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topP,
  });

  final TfArg<String>? additionalParams;

  final TfArg<BedrockagentcoreHarnessBedrockModelConfigApiFormat>? apiFormat;

  final TfArg<num>? maxTokens;

  final TfArg<String> modelId;

  final TfArg<num>? temperature;

  final TfArg<num>? topP;

  Map<String, Object?> encode() => {
    'additional_params': ?additionalParams?.toTfJson(),
    'api_format': ?apiFormat?.toTfJson(),
    'max_tokens': ?maxTokens?.toTfJson(),
    'model_id': modelId.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
    'top_p': ?topP?.toTfJson(),
  };
}

/// `api_format` — derived from the provider schema description.
enum BedrockagentcoreHarnessBedrockModelConfigApiFormat
    implements TerraformEnum {
  converseStream('converse_stream'),
  responses('responses'),
  chatCompletions('chat_completions');

  const BedrockagentcoreHarnessBedrockModelConfigApiFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `model.gemini_model_config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessGeminiModelConfig {
  const BedrockagentcoreHarnessGeminiModelConfig({
    this.additionalParams,
    required this.apiKeyArn,
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topK,
    this.topP,
  });

  final TfArg<String>? additionalParams;

  final TfArg<String> apiKeyArn;

  final TfArg<num>? maxTokens;

  final TfArg<String> modelId;

  final TfArg<num>? temperature;

  final TfArg<num>? topK;

  final TfArg<num>? topP;

  Map<String, Object?> encode() => {
    'additional_params': ?additionalParams?.toTfJson(),
    'api_key_arn': apiKeyArn.toTfJson(),
    'max_tokens': ?maxTokens?.toTfJson(),
    'model_id': modelId.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
    'top_k': ?topK?.toTfJson(),
    'top_p': ?topP?.toTfJson(),
  };
}

/// Typed helper for the `model.litellm_model_config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessLitellmModelConfig {
  const BedrockagentcoreHarnessLitellmModelConfig({
    this.additionalParams,
    this.apiBase,
    this.apiKeyArn,
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topP,
  });

  final TfArg<String>? additionalParams;

  final TfArg<String>? apiBase;

  final TfArg<String>? apiKeyArn;

  final TfArg<num>? maxTokens;

  final TfArg<String> modelId;

  final TfArg<num>? temperature;

  final TfArg<num>? topP;

  Map<String, Object?> encode() => {
    'additional_params': ?additionalParams?.toTfJson(),
    'api_base': ?apiBase?.toTfJson(),
    'api_key_arn': ?apiKeyArn?.toTfJson(),
    'max_tokens': ?maxTokens?.toTfJson(),
    'model_id': modelId.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
    'top_p': ?topP?.toTfJson(),
  };
}

/// Typed helper for the `model.openai_model_config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessOpenaiModelConfig {
  const BedrockagentcoreHarnessOpenaiModelConfig({
    this.additionalParams,
    this.apiFormat,
    required this.apiKeyArn,
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topP,
  });

  final TfArg<String>? additionalParams;

  final TfArg<BedrockagentcoreHarnessOpenaiModelConfigApiFormat>? apiFormat;

  final TfArg<String> apiKeyArn;

  final TfArg<num>? maxTokens;

  final TfArg<String> modelId;

  final TfArg<num>? temperature;

  final TfArg<num>? topP;

  Map<String, Object?> encode() => {
    'additional_params': ?additionalParams?.toTfJson(),
    'api_format': ?apiFormat?.toTfJson(),
    'api_key_arn': apiKeyArn.toTfJson(),
    'max_tokens': ?maxTokens?.toTfJson(),
    'model_id': modelId.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
    'top_p': ?topP?.toTfJson(),
  };
}

/// `api_format` — derived from the provider schema description.
enum BedrockagentcoreHarnessOpenaiModelConfigApiFormat
    implements TerraformEnum {
  chatCompletions('chat_completions'),
  responses('responses');

  const BedrockagentcoreHarnessOpenaiModelConfigApiFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `skill` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessSkill {
  const BedrockagentcoreHarnessSkill({
    this.path,
    this.awsSkills,
    this.git,
    this.s3,
  });

  final TfArg<String>? path;

  final List<BedrockagentcoreHarnessAwsSkills>? awsSkills;

  final List<BedrockagentcoreHarnessGit>? git;

  final List<BedrockagentcoreHarnessS3>? s3;

  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    if (awsSkills != null)
      'aws_skills': [for (final e in awsSkills!) e.encode()],
    if (git != null) 'git': [for (final e in git!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `skill.aws_skills` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAwsSkills {
  const BedrockagentcoreHarnessAwsSkills({this.paths});

  final TfArg<List<String>>? paths;

  Map<String, Object?> encode() => {'paths': ?paths?.toTfJson()};
}

/// Typed helper for the `skill.git` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessGit {
  const BedrockagentcoreHarnessGit({this.path, required this.url, this.auth});

  final TfArg<String>? path;

  final TfArg<String> url;

  final List<BedrockagentcoreHarnessAuth>? auth;

  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'url': url.toTfJson(),
    if (auth != null) 'auth': [for (final e in auth!) e.encode()],
  };
}

/// Typed helper for the `skill.git.auth` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuth {
  const BedrockagentcoreHarnessAuth({
    required this.credentialArn,
    this.username,
  });

  final TfArg<String> credentialArn;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'credential_arn': credentialArn.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `skill.s3` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessS3 {
  const BedrockagentcoreHarnessS3({required this.uri});

  final TfArg<String> uri;

  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// Typed helper for the `system_prompt` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessSystemPrompt {
  const BedrockagentcoreHarnessSystemPrompt({this.text});

  final TfArg<String>? text;

  Map<String, Object?> encode() => {'text': ?text?.toTfJson()};
}

/// Typed helper for the `tool` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessTool {
  const BedrockagentcoreHarnessTool({
    this.name,
    required this.type,
    this.config,
  });

  final TfArg<String>? name;

  final TfArg<BedrockagentcoreHarnessType> type;

  final List<BedrockagentcoreHarnessConfig>? config;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'type': type.toTfJson(),
    if (config != null) 'config': [for (final e in config!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentcoreHarnessType implements TerraformEnum {
  remoteMcp('remote_mcp'),
  agentcoreBrowser('agentcore_browser'),
  agentcoreGateway('agentcore_gateway'),
  inlineFunction('inline_function'),
  agentcoreCodeInterpreter('agentcore_code_interpreter');

  const BedrockagentcoreHarnessType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `tool.config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessConfig {
  const BedrockagentcoreHarnessConfig({
    this.agentcoreBrowser,
    this.agentcoreCodeInterpreter,
    this.agentcoreGateway,
    this.inlineFunction,
    this.remoteMcp,
  });

  final List<BedrockagentcoreHarnessAgentcoreBrowser>? agentcoreBrowser;

  final List<BedrockagentcoreHarnessAgentcoreCodeInterpreter>?
  agentcoreCodeInterpreter;

  final List<BedrockagentcoreHarnessAgentcoreGateway>? agentcoreGateway;

  final List<BedrockagentcoreHarnessInlineFunction>? inlineFunction;

  final List<BedrockagentcoreHarnessRemoteMcp>? remoteMcp;

  Map<String, Object?> encode() => {
    if (agentcoreBrowser != null)
      'agentcore_browser': [for (final e in agentcoreBrowser!) e.encode()],
    if (agentcoreCodeInterpreter != null)
      'agentcore_code_interpreter': [
        for (final e in agentcoreCodeInterpreter!) e.encode(),
      ],
    if (agentcoreGateway != null)
      'agentcore_gateway': [for (final e in agentcoreGateway!) e.encode()],
    if (inlineFunction != null)
      'inline_function': [for (final e in inlineFunction!) e.encode()],
    if (remoteMcp != null)
      'remote_mcp': [for (final e in remoteMcp!) e.encode()],
  };
}

/// Typed helper for the `tool.config.agentcore_browser` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAgentcoreBrowser {
  const BedrockagentcoreHarnessAgentcoreBrowser({this.browserArn});

  final TfArg<String>? browserArn;

  Map<String, Object?> encode() => {'browser_arn': ?browserArn?.toTfJson()};
}

/// Typed helper for the `tool.config.agentcore_code_interpreter` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAgentcoreCodeInterpreter {
  const BedrockagentcoreHarnessAgentcoreCodeInterpreter({
    this.codeInterpreterArn,
  });

  final TfArg<String>? codeInterpreterArn;

  Map<String, Object?> encode() => {
    'code_interpreter_arn': ?codeInterpreterArn?.toTfJson(),
  };
}

/// Typed helper for the `tool.config.agentcore_gateway` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAgentcoreGateway {
  const BedrockagentcoreHarnessAgentcoreGateway({
    required this.gatewayArn,
    this.outboundAuth,
  });

  final TfArg<String> gatewayArn;

  final List<BedrockagentcoreHarnessOutboundAuth>? outboundAuth;

  Map<String, Object?> encode() => {
    'gateway_arn': gatewayArn.toTfJson(),
    if (outboundAuth != null)
      'outbound_auth': [for (final e in outboundAuth!) e.encode()],
  };
}

/// Typed helper for the `tool.config.agentcore_gateway.outbound_auth` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessOutboundAuth {
  const BedrockagentcoreHarnessOutboundAuth({
    this.awsIam,
    this.none,
    this.oauth,
  });

  final TfArg<bool>? awsIam;

  final TfArg<bool>? none;

  final List<BedrockagentcoreHarnessOauth>? oauth;

  Map<String, Object?> encode() => {
    'aws_iam': ?awsIam?.toTfJson(),
    'none': ?none?.toTfJson(),
    if (oauth != null) 'oauth': [for (final e in oauth!) e.encode()],
  };
}

/// Typed helper for the `tool.config.agentcore_gateway.outbound_auth.oauth` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessOauth {
  const BedrockagentcoreHarnessOauth({
    this.customParameters,
    this.defaultReturnUrl,
    this.grantType,
    required this.providerArn,
    required this.scopes,
  });

  final TfArg<Map<String, String>>? customParameters;

  final TfArg<String>? defaultReturnUrl;

  final TfArg<BedrockagentcoreHarnessGrantType>? grantType;

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
enum BedrockagentcoreHarnessGrantType implements TerraformEnum {
  clientCredentials('CLIENT_CREDENTIALS'),
  authorizationCode('AUTHORIZATION_CODE'),
  tokenExchange('TOKEN_EXCHANGE');

  const BedrockagentcoreHarnessGrantType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `tool.config.inline_function` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessInlineFunction {
  const BedrockagentcoreHarnessInlineFunction({
    required this.description,
    required this.inputSchema,
  });

  final TfArg<String> description;

  final TfArg<String> inputSchema;

  Map<String, Object?> encode() => {
    'description': description.toTfJson(),
    'input_schema': inputSchema.toTfJson(),
  };
}

/// Typed helper for the `tool.config.remote_mcp` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessRemoteMcp {
  const BedrockagentcoreHarnessRemoteMcp({this.headers, required this.url});

  final TfArg<Map<String, String>>? headers;

  final TfArg<String> url;

  Map<String, Object?> encode() => {
    'headers': ?headers?.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_harness`.
final class AwsBedrockagentcoreHarness extends Resource {
  static const String tfType = 'aws_bedrockagentcore_harness';

  AwsBedrockagentcoreHarness(
    super.localName, {
    TfArg<List<String>>? allowedTools,
    TfArg<Map<String, String>>? environmentVariables,
    required RefTo<AwsIamRole> executionRoleArn,
    required TfArg<String> harnessName,
    TfArg<num>? maxIterations,
    TfArg<num>? maxTokens,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? timeoutSeconds,
    TfArg<List<Map<String, Object?>>>? truncation,
    List<BedrockagentcoreHarnessAuthorizerConfiguration>?
    authorizerConfiguration,
    List<BedrockagentcoreHarnessEnvironment>? environment,
    List<BedrockagentcoreHarnessEnvironmentArtifact>? environmentArtifact,
    List<BedrockagentcoreHarnessMemory>? memory,
    List<BedrockagentcoreHarnessModel>? model,
    List<BedrockagentcoreHarnessSkill>? skill,
    List<BedrockagentcoreHarnessSystemPrompt>? systemPrompt,
    List<BedrockagentcoreHarnessTool>? tool,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allowed_tools': ?allowedTools,
           'environment_variables': ?environmentVariables,
           'execution_role_arn': executionRoleArn.encodeAs('arn'),
           'harness_name': harnessName,
           'max_iterations': ?maxIterations,
           'max_tokens': ?maxTokens,
           'region': ?region,
           'tags': ?tags,
           'timeout_seconds': ?timeoutSeconds,
           'truncation': ?truncation,
           if (authorizerConfiguration != null)
             'authorizer_configuration': TfArg.literal([
               for (final e in authorizerConfiguration) e.encode(),
             ]),
           if (environment != null)
             'environment': TfArg.literal([
               for (final e in environment) e.encode(),
             ]),
           if (environmentArtifact != null)
             'environment_artifact': TfArg.literal([
               for (final e in environmentArtifact) e.encode(),
             ]),
           if (memory != null)
             'memory': TfArg.literal([for (final e in memory) e.encode()]),
           if (model != null)
             'model': TfArg.literal([for (final e in model) e.encode()]),
           if (skill != null)
             'skill': TfArg.literal([for (final e in skill) e.encode()]),
           if (systemPrompt != null)
             'system_prompt': TfArg.literal([
               for (final e in systemPrompt) e.encode(),
             ]),
           if (tool != null)
             'tool': TfArg.literal([for (final e in tool) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcoreHarnessSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreHarness>`.
  RefTo<AwsBedrockagentcoreHarness> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `environment_actual` attribute.
  TfRef<List<Map<String, Object?>>> get environmentActual =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'environment_actual');

  /// Reference to `harness_id` attribute.
  TfRef<String> get harnessId => TfRef.attribute<String>(this, 'harness_id');

  /// Reference to `memory_actual` attribute.
  TfRef<List<Map<String, Object?>>> get memoryActual =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'memory_actual');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `allowed_tools` attribute.
  TfRef<List<String>> get allowedTools =>
      TfRef.attribute<List<String>>(this, 'allowed_tools');

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariables =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `harness_name` attribute.
  TfRef<String> get harnessName =>
      TfRef.attribute<String>(this, 'harness_name');

  /// Reference to `max_iterations` attribute.
  TfRef<num> get maxIterations => TfRef.attribute<num>(this, 'max_iterations');

  /// Reference to `max_tokens` attribute.
  TfRef<num> get maxTokens => TfRef.attribute<num>(this, 'max_tokens');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout_seconds` attribute.
  TfRef<num> get timeoutSeconds =>
      TfRef.attribute<num>(this, 'timeout_seconds');

  /// Reference to `truncation` attribute.
  TfRef<List<Map<String, Object?>>> get truncation =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'truncation');
}
