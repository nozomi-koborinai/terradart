// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

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

  final TfArg<List<String>> entryPoint;

  final TfArg<
    BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationRuntime
  >
  runtime;

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

/// `runtime` — derived from the provider schema description.
enum BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationRuntime
    implements TerraformEnum {
  python310('PYTHON_3_10'),
  python311('PYTHON_3_11'),
  python312('PYTHON_3_12'),
  python313('PYTHON_3_13'),
  python314('PYTHON_3_14'),
  node22('NODE_22');

  const BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationRuntime(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String> prefix;

  final TfArg<String>? versionId;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'prefix': prefix.toTfJson(),
    'version_id': ?versionId?.toTfJson(),
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

  final TfArg<List<String>>? allowedAudience;

  final TfArg<List<String>>? allowedClients;

  final TfArg<List<String>>? allowedScopes;

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
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration({
    this.workloadIdentities,
    this.hostingEnvironment,
  });

  final TfArg<List<String>>? workloadIdentities;

  final List<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment
  >?
  hostingEnvironment;

  Map<String, Object?> encode() => {
    'workload_identities': ?workloadIdentities?.toTfJson(),
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

  final TfArg<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimInboundTokenClaimValueType
  >
  inboundTokenClaimValueType;

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

/// `inbound_token_claim_value_type` — derived from the provider schema description.
enum BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimInboundTokenClaimValueType
    implements TerraformEnum {
  string('STRING'),
  stringArray('STRING_ARRAY');

  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimInboundTokenClaimValueType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue {
  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    this.claimMatchValue,
  });

  final TfArg<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchOperator
  >
  claimMatchOperator;

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

/// `claim_match_operator` — derived from the provider schema description.
enum BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchOperator
    implements TerraformEnum {
  equals('EQUALS'),
  contains('CONTAINS'),
  containsAny('CONTAINS_ANY');

  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<List<String>>? matchValueStringList;

  Map<String, Object?> encode() => {
    'match_value_string': ?matchValueString?.toTfJson(),
    'match_value_string_list': ?matchValueStringList?.toTfJson(),
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

  final TfArg<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResourceEndpointIpAddressType
  >
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
enum BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResourceEndpointIpAddressType
    implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResourceEndpointIpAddressType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'resource_configuration_identifier': ?resourceConfigurationIdentifier
        ?.toTfJson(),
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

  final TfArg<
    BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResourceEndpointIpAddressType
  >
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
enum BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResourceEndpointIpAddressType
    implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const BedrockagentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResourceEndpointIpAddressType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'resource_configuration_identifier': ?resourceConfigurationIdentifier
        ?.toTfJson(),
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

  final TfArg<BedrockagentcoreAgentRuntimeNetworkConfigurationNetworkMode>
  networkMode;

  final List<BedrockagentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig>?
  networkModeConfig;

  Map<String, Object?> encode() => {
    'network_mode': networkMode.toTfJson(),
    if (networkModeConfig != null)
      'network_mode_config': [for (final e in networkModeConfig!) e.encode()],
  };
}

/// `network_mode` — derived from the provider schema description.
enum BedrockagentcoreAgentRuntimeNetworkConfigurationNetworkMode
    implements TerraformEnum {
  public('PUBLIC'),
  vpc('VPC');

  const BedrockagentcoreAgentRuntimeNetworkConfigurationNetworkMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `network_configuration.network_mode_config` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig {
  const BedrockagentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig({
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

/// Typed helper for the `protocol_configuration` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeProtocolConfiguration {
  const BedrockagentcoreAgentRuntimeProtocolConfiguration({
    this.serverProtocol,
  });

  final TfArg<BedrockagentcoreAgentRuntimeProtocolConfigurationServerProtocol>?
  serverProtocol;

  Map<String, Object?> encode() => {
    'server_protocol': ?serverProtocol?.toTfJson(),
  };
}

/// `server_protocol` — derived from the provider schema description.
enum BedrockagentcoreAgentRuntimeProtocolConfigurationServerProtocol
    implements TerraformEnum {
  mcp('MCP'),
  http('HTTP'),
  a2a('A2A'),
  agui('AGUI');

  const BedrockagentcoreAgentRuntimeProtocolConfigurationServerProtocol(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `request_header_configuration` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeRequestHeaderConfiguration {
  const BedrockagentcoreAgentRuntimeRequestHeaderConfiguration({
    this.requestHeaderAllowlist,
  });

  final TfArg<List<String>>? requestHeaderAllowlist;

  Map<String, Object?> encode() => {
    'request_header_allowlist': ?requestHeaderAllowlist?.toTfJson(),
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
    required RefTo<AwsIamRole> roleArn,
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
           'description': ?description,
           'environment_variables': ?environmentVariables,
           'lifecycle_configuration': ?lifecycleConfiguration,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreAgentRuntime>`.
  RefTo<AwsBedrockagentcoreAgentRuntime> get ref => RefTo.of(this);

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

  /// Reference to `agent_runtime_name` attribute.
  TfRef<String> get agentRuntimeNameRef =>
      TfRef.attribute<String>(this, 'agent_runtime_name');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariablesRef =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `lifecycle_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get lifecycleConfigurationRef =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'lifecycle_configuration',
      );

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
