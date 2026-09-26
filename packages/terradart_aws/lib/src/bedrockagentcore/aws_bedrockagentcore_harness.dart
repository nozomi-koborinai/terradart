// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final List<BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizer>?
  customJwtAuthorizer;

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
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizer {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizer({
    this.allowedAudience,
    this.allowedClients,
    this.allowedScopes,
    required this.discoveryUrl,
    this.allowedWorkloadConfiguration,
    this.customClaim,
    this.privateEndpoint,
    this.privateEndpointOverrides,
  });

  final TfArg<List<Object?>>? allowedAudience;

  final TfArg<List<Object?>>? allowedClients;

  final TfArg<List<Object?>>? allowedScopes;

  final TfArg<String> discoveryUrl;

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration
  >?
  allowedWorkloadConfiguration;

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaim
  >?
  customClaim;

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint
  >?
  privateEndpoint;

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverrides
  >?
  privateEndpointOverrides;

  Map<String, Object?> encode() => {
    if (allowedAudience != null)
      'allowed_audience': allowedAudience!.toTfJson(),
    if (allowedClients != null) 'allowed_clients': allowedClients!.toTfJson(),
    if (allowedScopes != null) 'allowed_scopes': allowedScopes!.toTfJson(),
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
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration({
    this.workloadIdentities,
    this.hostingEnvironment,
  });

  final TfArg<List<Object?>>? workloadIdentities;

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment
  >?
  hostingEnvironment;

  Map<String, Object?> encode() => {
    if (workloadIdentities != null)
      'workload_identities': workloadIdentities!.toTfJson(),
    if (hostingEnvironment != null)
      'hosting_environment': [for (final e in hostingEnvironment!) e.encode()],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environment` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment({
    required this.arn,
  });

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaim {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaim({
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
    this.authorizingClaimMatchValue,
  });

  final TfArg<String> inboundTokenClaimName;

  final TfArg<String> inboundTokenClaimValueType;

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue
  >?
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

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    this.claimMatchValue,
  });

  final TfArg<String> claimMatchOperator;

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue
  >?
  claimMatchValue;

  Map<String, Object?> encode() => {
    'claim_match_operator': claimMatchOperator.toTfJson(),
    if (claimMatchValue != null)
      'claim_match_value': [for (final e in claimMatchValue!) e.encode()],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value.claim_match_value` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue({
    this.matchValueString,
    this.matchValueStringList,
  });

  final TfArg<String>? matchValueString;

  final TfArg<List<Object?>>? matchValueStringList;

  Map<String, Object?> encode() => {
    if (matchValueString != null)
      'match_value_string': matchValueString!.toTfJson(),
    if (matchValueStringList != null)
      'match_value_string_list': matchValueStringList!.toTfJson(),
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource
  >?
  managedVpcResource;

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource
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

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource({
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

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    if (resourceConfigurationIdentifier != null)
      'resource_configuration_identifier': resourceConfigurationIdentifier!
          .toTfJson(),
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverrides {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverrides({
    required this.domain,
    this.privateEndpoint,
  });

  final TfArg<String> domain;

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpoint
  >?
  privateEndpoint;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides.private_endpoint` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpoint {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResource
  >?
  managedVpcResource;

  final List<
    BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointSelfManagedLatticeResource
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

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides.private_endpoint.managed_vpc_resource` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResource {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResource({
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

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides.private_endpoint.self_managed_lattice_resource` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointSelfManagedLatticeResource {
  const BedrockagentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    if (resourceConfigurationIdentifier != null)
      'resource_configuration_identifier': resourceConfigurationIdentifier!
          .toTfJson(),
  };
}

/// Typed helper for the `environment` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessEnvironment {
  const BedrockagentcoreHarnessEnvironment({this.agentcoreRuntimeEnvironment});

  final List<BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment>?
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
final class BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment {
  const BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment({
    this.lifecycleConfiguration,
    this.filesystemConfiguration,
    this.networkConfiguration,
  });

  final TfArg<List<Object?>>? lifecycleConfiguration;

  final List<
    BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration
  >?
  filesystemConfiguration;

  final List<
    BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration
  >?
  networkConfiguration;

  Map<String, Object?> encode() => {
    if (lifecycleConfiguration != null)
      'lifecycle_configuration': lifecycleConfiguration!.toTfJson(),
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
final class BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration {
  const BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration({
    this.efsAccessPoint,
    this.s3FilesAccessPoint,
    this.sessionStorage,
  });

  final List<
    BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint
  >?
  efsAccessPoint;

  final List<
    BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint
  >?
  s3FilesAccessPoint;

  final List<
    BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage
  >?
  sessionStorage;

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
final class BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint {
  const BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint({
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
final class BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint {
  const BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint({
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
final class BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage {
  const BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage({
    required this.mountPath,
  });

  final TfArg<String> mountPath;

  Map<String, Object?> encode() => {'mount_path': mountPath.toTfJson()};
}

/// Typed helper for the `environment.agentcore_runtime_environment.network_configuration` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration {
  const BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration({
    required this.networkMode,
    this.networkModeConfig,
  });

  final TfArg<String> networkMode;

  final List<
    BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig
  >?
  networkModeConfig;

  Map<String, Object?> encode() => {
    'network_mode': networkMode.toTfJson(),
    if (networkModeConfig != null)
      'network_mode_config': [for (final e in networkModeConfig!) e.encode()],
  };
}

/// Typed helper for the `environment.agentcore_runtime_environment.network_configuration.network_mode_config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig {
  const BedrockagentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig({
    required this.securityGroups,
    required this.subnets,
  });

  final TfArg<List<Object?>> securityGroups;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    'security_groups': securityGroups.toTfJson(),
    'subnets': subnets.toTfJson(),
  };
}

/// Typed helper for the `environment_artifact` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessEnvironmentArtifact {
  const BedrockagentcoreHarnessEnvironmentArtifact({
    this.containerConfiguration,
  });

  final List<BedrockagentcoreHarnessEnvironmentArtifactContainerConfiguration>?
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
final class BedrockagentcoreHarnessEnvironmentArtifactContainerConfiguration {
  const BedrockagentcoreHarnessEnvironmentArtifactContainerConfiguration({
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

  final List<BedrockagentcoreHarnessMemoryAgentcoreMemoryConfiguration>?
  agentcoreMemoryConfiguration;

  final List<BedrockagentcoreHarnessMemoryDisabled>? disabled;

  final List<BedrockagentcoreHarnessMemoryManagedMemoryConfiguration>?
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
final class BedrockagentcoreHarnessMemoryAgentcoreMemoryConfiguration {
  const BedrockagentcoreHarnessMemoryAgentcoreMemoryConfiguration({
    this.actorId,
    required this.arn,
    this.messagesCount,
    this.retrievalConfig,
  });

  final TfArg<String>? actorId;

  final TfArg<String> arn;

  final TfArg<num>? messagesCount;

  final List<
    BedrockagentcoreHarnessMemoryAgentcoreMemoryConfigurationRetrievalConfig
  >?
  retrievalConfig;

  Map<String, Object?> encode() => {
    if (actorId != null) 'actor_id': actorId!.toTfJson(),
    'arn': arn.toTfJson(),
    if (messagesCount != null) 'messages_count': messagesCount!.toTfJson(),
    if (retrievalConfig != null)
      'retrieval_config': [for (final e in retrievalConfig!) e.encode()],
  };
}

/// Typed helper for the `memory.agentcore_memory_configuration.retrieval_config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessMemoryAgentcoreMemoryConfigurationRetrievalConfig {
  const BedrockagentcoreHarnessMemoryAgentcoreMemoryConfigurationRetrievalConfig({
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
    if (relevanceScore != null) 'relevance_score': relevanceScore!.toTfJson(),
    if (strategyId != null) 'strategy_id': strategyId!.toTfJson(),
    if (topK != null) 'top_k': topK!.toTfJson(),
  };
}

/// Typed helper for the `memory.disabled` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessMemoryDisabled {
  const BedrockagentcoreHarnessMemoryDisabled();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `memory.managed_memory_configuration` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessMemoryManagedMemoryConfiguration {
  const BedrockagentcoreHarnessMemoryManagedMemoryConfiguration({
    this.encryptionKeyArn,
    this.eventExpiryDuration,
    this.strategies,
  });

  final TfArg<String>? encryptionKeyArn;

  final TfArg<num>? eventExpiryDuration;

  final TfArg<List<Object?>>? strategies;

  Map<String, Object?> encode() => {
    if (encryptionKeyArn != null)
      'encryption_key_arn': encryptionKeyArn!.toTfJson(),
    if (eventExpiryDuration != null)
      'event_expiry_duration': eventExpiryDuration!.toTfJson(),
    if (strategies != null) 'strategies': strategies!.toTfJson(),
  };
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

  final List<BedrockagentcoreHarnessModelBedrockModelConfig>?
  bedrockModelConfig;

  final List<BedrockagentcoreHarnessModelGeminiModelConfig>? geminiModelConfig;

  final List<BedrockagentcoreHarnessModelLitellmModelConfig>?
  litellmModelConfig;

  final List<BedrockagentcoreHarnessModelOpenaiModelConfig>? openaiModelConfig;

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
final class BedrockagentcoreHarnessModelBedrockModelConfig {
  const BedrockagentcoreHarnessModelBedrockModelConfig({
    this.additionalParams,
    this.apiFormat,
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topP,
  });

  final TfArg<String>? additionalParams;

  final TfArg<String>? apiFormat;

  final TfArg<num>? maxTokens;

  final TfArg<String> modelId;

  final TfArg<num>? temperature;

  final TfArg<num>? topP;

  Map<String, Object?> encode() => {
    if (additionalParams != null)
      'additional_params': additionalParams!.toTfJson(),
    if (apiFormat != null) 'api_format': apiFormat!.toTfJson(),
    if (maxTokens != null) 'max_tokens': maxTokens!.toTfJson(),
    'model_id': modelId.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
    if (topP != null) 'top_p': topP!.toTfJson(),
  };
}

/// Typed helper for the `model.gemini_model_config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessModelGeminiModelConfig {
  const BedrockagentcoreHarnessModelGeminiModelConfig({
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
    if (additionalParams != null)
      'additional_params': additionalParams!.toTfJson(),
    'api_key_arn': apiKeyArn.toTfJson(),
    if (maxTokens != null) 'max_tokens': maxTokens!.toTfJson(),
    'model_id': modelId.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
    if (topK != null) 'top_k': topK!.toTfJson(),
    if (topP != null) 'top_p': topP!.toTfJson(),
  };
}

/// Typed helper for the `model.litellm_model_config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessModelLitellmModelConfig {
  const BedrockagentcoreHarnessModelLitellmModelConfig({
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
    if (additionalParams != null)
      'additional_params': additionalParams!.toTfJson(),
    if (apiBase != null) 'api_base': apiBase!.toTfJson(),
    if (apiKeyArn != null) 'api_key_arn': apiKeyArn!.toTfJson(),
    if (maxTokens != null) 'max_tokens': maxTokens!.toTfJson(),
    'model_id': modelId.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
    if (topP != null) 'top_p': topP!.toTfJson(),
  };
}

/// Typed helper for the `model.openai_model_config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessModelOpenaiModelConfig {
  const BedrockagentcoreHarnessModelOpenaiModelConfig({
    this.additionalParams,
    this.apiFormat,
    required this.apiKeyArn,
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topP,
  });

  final TfArg<String>? additionalParams;

  final TfArg<String>? apiFormat;

  final TfArg<String> apiKeyArn;

  final TfArg<num>? maxTokens;

  final TfArg<String> modelId;

  final TfArg<num>? temperature;

  final TfArg<num>? topP;

  Map<String, Object?> encode() => {
    if (additionalParams != null)
      'additional_params': additionalParams!.toTfJson(),
    if (apiFormat != null) 'api_format': apiFormat!.toTfJson(),
    'api_key_arn': apiKeyArn.toTfJson(),
    if (maxTokens != null) 'max_tokens': maxTokens!.toTfJson(),
    'model_id': modelId.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
    if (topP != null) 'top_p': topP!.toTfJson(),
  };
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

  final List<BedrockagentcoreHarnessSkillAwsSkills>? awsSkills;

  final List<BedrockagentcoreHarnessSkillGit>? git;

  final List<BedrockagentcoreHarnessSkillS3>? s3;

  Map<String, Object?> encode() => {
    if (path != null) 'path': path!.toTfJson(),
    if (awsSkills != null)
      'aws_skills': [for (final e in awsSkills!) e.encode()],
    if (git != null) 'git': [for (final e in git!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `skill.aws_skills` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessSkillAwsSkills {
  const BedrockagentcoreHarnessSkillAwsSkills({this.paths});

  final TfArg<List<Object?>>? paths;

  Map<String, Object?> encode() => {
    if (paths != null) 'paths': paths!.toTfJson(),
  };
}

/// Typed helper for the `skill.git` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessSkillGit {
  const BedrockagentcoreHarnessSkillGit({
    this.path,
    required this.url,
    this.auth,
  });

  final TfArg<String>? path;

  final TfArg<String> url;

  final List<BedrockagentcoreHarnessSkillGitAuth>? auth;

  Map<String, Object?> encode() => {
    if (path != null) 'path': path!.toTfJson(),
    'url': url.toTfJson(),
    if (auth != null) 'auth': [for (final e in auth!) e.encode()],
  };
}

/// Typed helper for the `skill.git.auth` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessSkillGitAuth {
  const BedrockagentcoreHarnessSkillGitAuth({
    required this.credentialArn,
    this.username,
  });

  final TfArg<String> credentialArn;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'credential_arn': credentialArn.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Typed helper for the `skill.s3` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessSkillS3 {
  const BedrockagentcoreHarnessSkillS3({required this.uri});

  final TfArg<String> uri;

  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// Typed helper for the `system_prompt` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessSystemPrompt {
  const BedrockagentcoreHarnessSystemPrompt({this.text});

  final TfArg<String>? text;

  Map<String, Object?> encode() => {if (text != null) 'text': text!.toTfJson()};
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

  final TfArg<String> type;

  final List<BedrockagentcoreHarnessToolConfig>? config;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    'type': type.toTfJson(),
    if (config != null) 'config': [for (final e in config!) e.encode()],
  };
}

/// Typed helper for the `tool.config` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessToolConfig {
  const BedrockagentcoreHarnessToolConfig({
    this.agentcoreBrowser,
    this.agentcoreCodeInterpreter,
    this.agentcoreGateway,
    this.inlineFunction,
    this.remoteMcp,
  });

  final List<BedrockagentcoreHarnessToolConfigAgentcoreBrowser>?
  agentcoreBrowser;

  final List<BedrockagentcoreHarnessToolConfigAgentcoreCodeInterpreter>?
  agentcoreCodeInterpreter;

  final List<BedrockagentcoreHarnessToolConfigAgentcoreGateway>?
  agentcoreGateway;

  final List<BedrockagentcoreHarnessToolConfigInlineFunction>? inlineFunction;

  final List<BedrockagentcoreHarnessToolConfigRemoteMcp>? remoteMcp;

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
final class BedrockagentcoreHarnessToolConfigAgentcoreBrowser {
  const BedrockagentcoreHarnessToolConfigAgentcoreBrowser({this.browserArn});

  final TfArg<String>? browserArn;

  Map<String, Object?> encode() => {
    if (browserArn != null) 'browser_arn': browserArn!.toTfJson(),
  };
}

/// Typed helper for the `tool.config.agentcore_code_interpreter` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessToolConfigAgentcoreCodeInterpreter {
  const BedrockagentcoreHarnessToolConfigAgentcoreCodeInterpreter({
    this.codeInterpreterArn,
  });

  final TfArg<String>? codeInterpreterArn;

  Map<String, Object?> encode() => {
    if (codeInterpreterArn != null)
      'code_interpreter_arn': codeInterpreterArn!.toTfJson(),
  };
}

/// Typed helper for the `tool.config.agentcore_gateway` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessToolConfigAgentcoreGateway {
  const BedrockagentcoreHarnessToolConfigAgentcoreGateway({
    required this.gatewayArn,
    this.outboundAuth,
  });

  final TfArg<String> gatewayArn;

  final List<BedrockagentcoreHarnessToolConfigAgentcoreGatewayOutboundAuth>?
  outboundAuth;

  Map<String, Object?> encode() => {
    'gateway_arn': gatewayArn.toTfJson(),
    if (outboundAuth != null)
      'outbound_auth': [for (final e in outboundAuth!) e.encode()],
  };
}

/// Typed helper for the `tool.config.agentcore_gateway.outbound_auth` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessToolConfigAgentcoreGatewayOutboundAuth {
  const BedrockagentcoreHarnessToolConfigAgentcoreGatewayOutboundAuth({
    this.awsIam,
    this.none,
    this.oauth,
  });

  final TfArg<bool>? awsIam;

  final TfArg<bool>? none;

  final List<
    BedrockagentcoreHarnessToolConfigAgentcoreGatewayOutboundAuthOauth
  >?
  oauth;

  Map<String, Object?> encode() => {
    if (awsIam != null) 'aws_iam': awsIam!.toTfJson(),
    if (none != null) 'none': none!.toTfJson(),
    if (oauth != null) 'oauth': [for (final e in oauth!) e.encode()],
  };
}

/// Typed helper for the `tool.config.agentcore_gateway.outbound_auth.oauth` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessToolConfigAgentcoreGatewayOutboundAuthOauth {
  const BedrockagentcoreHarnessToolConfigAgentcoreGatewayOutboundAuthOauth({
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

/// Typed helper for the `tool.config.inline_function` block of
/// `aws_bedrockagentcore_harness` (derived from provider schema).
@immutable
final class BedrockagentcoreHarnessToolConfigInlineFunction {
  const BedrockagentcoreHarnessToolConfigInlineFunction({
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
final class BedrockagentcoreHarnessToolConfigRemoteMcp {
  const BedrockagentcoreHarnessToolConfigRemoteMcp({
    this.headers,
    required this.url,
  });

  final TfArg<Map<String, String>>? headers;

  final TfArg<String> url;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': headers!.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_harness`.
final class AwsBedrockagentcoreHarness extends Resource {
  static const String tfType = 'aws_bedrockagentcore_harness';

  AwsBedrockagentcoreHarness({
    required super.localName,
    TfArg<List<String>>? allowedTools,
    TfArg<Map<String, String>>? environmentVariables,
    required TfArg<String> executionRoleArn,
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
           if (allowedTools != null) 'allowed_tools': allowedTools,
           if (environmentVariables != null)
             'environment_variables': environmentVariables,
           'execution_role_arn': executionRoleArn,
           'harness_name': harnessName,
           if (maxIterations != null) 'max_iterations': maxIterations,
           if (maxTokens != null) 'max_tokens': maxTokens,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (timeoutSeconds != null) 'timeout_seconds': timeoutSeconds,
           if (truncation != null) 'truncation': truncation,
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
}
