// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_agent_runtime`.
const Set<String> _awsBedrockagentcoreAgentRuntimeSensitive = <String>{};

/// Typed helper for the `agent_runtime_artifact` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAgentRuntimeArtifact {
  const BedrockagentcoreAgentRuntimeAgentRuntimeArtifact({
    this.codeConfiguration,
    this.containerConfiguration,
  });

  final List<BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration>?
  codeConfiguration;

  final List<
    BedrockagentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration
  >?
  containerConfiguration;

  Map<String, Object?> encode() => {
    if (codeConfiguration != null)
      'code_configuration': [for (final e in codeConfiguration!) e.encode()],
    if (containerConfiguration != null)
      'container_configuration': [
        for (final e in containerConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `agent_runtime_artifact.code_configuration` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration {
  const BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration({
    required this.entryPoint,
    required this.runtime,
    this.code,
  });

  final TfArg<List<Object?>> entryPoint;

  final TfArg<String> runtime;

  final List<
    BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode
  >?
  code;

  Map<String, Object?> encode() => {
    'entry_point': entryPoint.toTfJson(),
    'runtime': runtime.toTfJson(),
    if (code != null) 'code': [for (final e in code!) e.encode()],
  };
}

/// Typed helper for the `agent_runtime_artifact.code_configuration.code` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode {
  const BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode({
    this.s3,
  });

  final List<
    BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3
  >?
  s3;

  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `agent_runtime_artifact.code_configuration.code.s3` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3 {
  const BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3({
    required this.bucket,
    required this.prefix,
    this.versionId,
  });

  final TfArg<String> bucket;

  final TfArg<String> prefix;

  final TfArg<String>? versionId;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'prefix': prefix.toTfJson(),
    if (versionId != null) 'version_id': versionId!.toTfJson(),
  };
}

/// Typed helper for the `agent_runtime_artifact.container_configuration` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration {
  const BedrockagentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration({
    required this.containerUri,
  });

  final TfArg<String> containerUri;

  Map<String, Object?> encode() => {'container_uri': containerUri.toTfJson()};
}

/// Typed helper for the `authorizer_configuration` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfiguration {
  const BedrockagentcoreAgentRuntimeAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer
  >?
  customJwtAuthorizer;

  Map<String, Object?> encode() => {
    if (customJwtAuthorizer != null)
      'custom_jwt_authorizer': [
        for (final e in customJwtAuthorizer!) e.encode(),
      ],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer({
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
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration
  >?
  allowedWorkloadConfiguration;

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaim
  >?
  customClaim;

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint
  >?
  privateEndpoint;

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverrides
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
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration({
    this.workloadIdentities,
    this.hostingEnvironment,
  });

  final TfArg<List<Object?>>? workloadIdentities;

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment
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
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment({
    required this.arn,
  });

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaim {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaim({
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
    this.authorizingClaimMatchValue,
  });

  final TfArg<String> inboundTokenClaimName;

  final TfArg<String> inboundTokenClaimValueType;

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue
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
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    this.claimMatchValue,
  });

  final TfArg<String> claimMatchOperator;

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue
  >?
  claimMatchValue;

  Map<String, Object?> encode() => {
    'claim_match_operator': claimMatchOperator.toTfJson(),
    if (claimMatchValue != null)
      'claim_match_value': [for (final e in claimMatchValue!) e.encode()],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value.claim_match_value` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue({
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
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource
  >?
  managedVpcResource;

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource
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
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource({
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
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource({
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
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverrides {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverrides({
    required this.domain,
    this.privateEndpoint,
  });

  final TfArg<String> domain;

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpoint
  >?
  privateEndpoint;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides.private_endpoint` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpoint {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResource
  >?
  managedVpcResource;

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointSelfManagedLatticeResource
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
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResource {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResource({
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
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointSelfManagedLatticeResource {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    if (resourceConfigurationIdentifier != null)
      'resource_configuration_identifier': resourceConfigurationIdentifier!
          .toTfJson(),
  };
}

/// Typed helper for the `filesystem_configuration` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeFilesystemConfiguration {
  const BedrockagentcoreAgentRuntimeFilesystemConfiguration({
    this.efsAccessPoint,
    this.s3FilesAccessPoint,
    this.sessionStorage,
  });

  final List<BedrockagentcoreAgentRuntimeFilesystemConfigurationEfsAccessPoint>?
  efsAccessPoint;

  final List<
    BedrockagentcoreAgentRuntimeFilesystemConfigurationS3FilesAccessPoint
  >?
  s3FilesAccessPoint;

  final List<BedrockagentcoreAgentRuntimeFilesystemConfigurationSessionStorage>?
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

/// Typed helper for the `filesystem_configuration.efs_access_point` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeFilesystemConfigurationEfsAccessPoint {
  const BedrockagentcoreAgentRuntimeFilesystemConfigurationEfsAccessPoint({
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

/// Typed helper for the `filesystem_configuration.s3_files_access_point` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeFilesystemConfigurationS3FilesAccessPoint {
  const BedrockagentcoreAgentRuntimeFilesystemConfigurationS3FilesAccessPoint({
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

/// Typed helper for the `filesystem_configuration.session_storage` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeFilesystemConfigurationSessionStorage {
  const BedrockagentcoreAgentRuntimeFilesystemConfigurationSessionStorage({
    required this.mountPath,
  });

  final TfArg<String> mountPath;

  Map<String, Object?> encode() => {'mount_path': mountPath.toTfJson()};
}

/// Typed helper for the `network_configuration` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeNetworkConfiguration {
  const BedrockagentcoreAgentRuntimeNetworkConfiguration({
    required this.networkMode,
    this.networkModeConfig,
  });

  final TfArg<String> networkMode;

  final List<BedrockagentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig>?
  networkModeConfig;

  Map<String, Object?> encode() => {
    'network_mode': networkMode.toTfJson(),
    if (networkModeConfig != null)
      'network_mode_config': [for (final e in networkModeConfig!) e.encode()],
  };
}

/// Typed helper for the `network_configuration.network_mode_config` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig {
  const BedrockagentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig({
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

/// Typed helper for the `protocol_configuration` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeProtocolConfiguration {
  const BedrockagentcoreAgentRuntimeProtocolConfiguration({
    this.serverProtocol,
  });

  final TfArg<String>? serverProtocol;

  Map<String, Object?> encode() => {
    if (serverProtocol != null) 'server_protocol': serverProtocol!.toTfJson(),
  };
}

/// Typed helper for the `request_header_configuration` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeRequestHeaderConfiguration {
  const BedrockagentcoreAgentRuntimeRequestHeaderConfiguration({
    this.requestHeaderAllowlist,
  });

  final TfArg<List<Object?>>? requestHeaderAllowlist;

  Map<String, Object?> encode() => {
    if (requestHeaderAllowlist != null)
      'request_header_allowlist': requestHeaderAllowlist!.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_agent_runtime`.
final class AwsBedrockagentcoreAgentRuntime extends Resource {
  static const String tfType = 'aws_bedrockagentcore_agent_runtime';

  AwsBedrockagentcoreAgentRuntime({
    required super.localName,
    required TfArg<String> agentRuntimeName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? environmentVariables,
    TfArg<List<Map<String, Object?>>>? lifecycleConfiguration,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentcoreAgentRuntimeAgentRuntimeArtifact>?
    agentRuntimeArtifact,
    List<BedrockagentcoreAgentRuntimeAuthorizerConfiguration>?
    authorizerConfiguration,
    List<BedrockagentcoreAgentRuntimeFilesystemConfiguration>?
    filesystemConfiguration,
    List<BedrockagentcoreAgentRuntimeNetworkConfiguration>?
    networkConfiguration,
    List<BedrockagentcoreAgentRuntimeProtocolConfiguration>?
    protocolConfiguration,
    List<BedrockagentcoreAgentRuntimeRequestHeaderConfiguration>?
    requestHeaderConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_runtime_name': agentRuntimeName,
           if (description != null) 'description': description,
           if (environmentVariables != null)
             'environment_variables': environmentVariables,
           if (lifecycleConfiguration != null)
             'lifecycle_configuration': lifecycleConfiguration,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (agentRuntimeArtifact != null)
             'agent_runtime_artifact': TfArg.literal([
               for (final e in agentRuntimeArtifact) e.encode(),
             ]),
           if (authorizerConfiguration != null)
             'authorizer_configuration': TfArg.literal([
               for (final e in authorizerConfiguration) e.encode(),
             ]),
           if (filesystemConfiguration != null)
             'filesystem_configuration': TfArg.literal([
               for (final e in filesystemConfiguration) e.encode(),
             ]),
           if (networkConfiguration != null)
             'network_configuration': TfArg.literal([
               for (final e in networkConfiguration) e.encode(),
             ]),
           if (protocolConfiguration != null)
             'protocol_configuration': TfArg.literal([
               for (final e in protocolConfiguration) e.encode(),
             ]),
           if (requestHeaderConfiguration != null)
             'request_header_configuration': TfArg.literal([
               for (final e in requestHeaderConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcoreAgentRuntimeSensitive;

  /// Reference to `agent_runtime_arn` attribute.
  TfRef<String> get agentRuntimeArn =>
      TfRef.attribute<String>(this, 'agent_runtime_arn');

  /// Reference to `agent_runtime_id` attribute.
  TfRef<String> get agentRuntimeId =>
      TfRef.attribute<String>(this, 'agent_runtime_id');

  /// Reference to `agent_runtime_version` attribute.
  TfRef<String> get agentRuntimeVersion =>
      TfRef.attribute<String>(this, 'agent_runtime_version');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `workload_identity_details` attribute.
  TfRef<List<Map<String, Object?>>> get workloadIdentityDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'workload_identity_details',
      );
}
