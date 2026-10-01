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
final class BedrockagentcoreAgentRuntimeArtifact {
  const BedrockagentcoreAgentRuntimeArtifact({
    this.codeConfiguration,
    this.containerConfiguration,
  });

  final List<BedrockagentcoreAgentRuntimeCodeConfiguration>? codeConfiguration;

  final List<BedrockagentcoreAgentRuntimeContainerConfiguration>?
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
final class BedrockagentcoreAgentRuntimeCodeConfiguration {
  const BedrockagentcoreAgentRuntimeCodeConfiguration({
    required this.entryPoint,
    required this.runtime,
    this.code,
  });

  final TfArg<List<String>> entryPoint;

  final BedrockagentcoreAgentRuntime runtime;

  final List<BedrockagentcoreAgentRuntimeCode>? code;

  Map<String, Object?> encode() => {
    'entry_point': entryPoint.toTfJson(),
    'runtime': runtime.toTfJson(),
    if (code != null) 'code': [for (final e in code!) e.encode()],
  };
}

/// `runtime` — derived from the provider schema description.
extension type const BedrockagentcoreAgentRuntime._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentcoreAgentRuntime.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreAgentRuntime.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreAgentRuntime.arg(TfArg<String> arg) : this._(arg);

  static const python310 = BedrockagentcoreAgentRuntime._(
    TfArgLiteral('PYTHON_3_10'),
  );
  static const python311 = BedrockagentcoreAgentRuntime._(
    TfArgLiteral('PYTHON_3_11'),
  );
  static const python312 = BedrockagentcoreAgentRuntime._(
    TfArgLiteral('PYTHON_3_12'),
  );
  static const python313 = BedrockagentcoreAgentRuntime._(
    TfArgLiteral('PYTHON_3_13'),
  );
  static const python314 = BedrockagentcoreAgentRuntime._(
    TfArgLiteral('PYTHON_3_14'),
  );
  static const node22 = BedrockagentcoreAgentRuntime._(TfArgLiteral('NODE_22'));

  static const List<BedrockagentcoreAgentRuntime> values = [
    python310,
    python311,
    python312,
    python313,
    python314,
    node22,
  ];
}

/// Typed helper for the `agent_runtime_artifact.code_configuration.code` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeCode {
  const BedrockagentcoreAgentRuntimeCode({this.s3});

  final List<BedrockagentcoreAgentRuntimeS3>? s3;

  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `agent_runtime_artifact.code_configuration.code.s3` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeS3 {
  const BedrockagentcoreAgentRuntimeS3({
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
final class BedrockagentcoreAgentRuntimeContainerConfiguration {
  const BedrockagentcoreAgentRuntimeContainerConfiguration({
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

  final List<BedrockagentcoreAgentRuntimeCustomJwtAuthorizer>?
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
final class BedrockagentcoreAgentRuntimeCustomJwtAuthorizer {
  const BedrockagentcoreAgentRuntimeCustomJwtAuthorizer({
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

  final List<BedrockagentcoreAgentRuntimeAllowedWorkloadConfiguration>?
  allowedWorkloadConfiguration;

  final List<BedrockagentcoreAgentRuntimeCustomClaim>? customClaim;

  final List<BedrockagentcoreAgentRuntimePrivateEndpoint>? privateEndpoint;

  final List<BedrockagentcoreAgentRuntimePrivateEndpointOverrides>?
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
final class BedrockagentcoreAgentRuntimeAllowedWorkloadConfiguration {
  const BedrockagentcoreAgentRuntimeAllowedWorkloadConfiguration({
    this.workloadIdentities,
    this.hostingEnvironment,
  });

  final TfArg<List<String>>? workloadIdentities;

  final List<BedrockagentcoreAgentRuntimeHostingEnvironment>?
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
final class BedrockagentcoreAgentRuntimeHostingEnvironment {
  const BedrockagentcoreAgentRuntimeHostingEnvironment({required this.arn});

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeCustomClaim {
  const BedrockagentcoreAgentRuntimeCustomClaim({
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
    this.authorizingClaimMatchValue,
  });

  final TfArg<String> inboundTokenClaimName;

  final BedrockagentcoreAgentRuntimeInboundTokenClaimValueType
  inboundTokenClaimValueType;

  final List<BedrockagentcoreAgentRuntimeAuthorizingClaimMatchValue>?
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
extension type const BedrockagentcoreAgentRuntimeInboundTokenClaimValueType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreAgentRuntimeInboundTokenClaimValueType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreAgentRuntimeInboundTokenClaimValueType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentcoreAgentRuntimeInboundTokenClaimValueType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const string =
      BedrockagentcoreAgentRuntimeInboundTokenClaimValueType._(
        TfArgLiteral('STRING'),
      );
  static const stringArray =
      BedrockagentcoreAgentRuntimeInboundTokenClaimValueType._(
        TfArgLiteral('STRING_ARRAY'),
      );

  static const List<BedrockagentcoreAgentRuntimeInboundTokenClaimValueType>
  values = [string, stringArray];
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeAuthorizingClaimMatchValue {
  const BedrockagentcoreAgentRuntimeAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    this.claimMatchValue,
  });

  final BedrockagentcoreAgentRuntimeClaimMatchOperator claimMatchOperator;

  final List<BedrockagentcoreAgentRuntimeClaimMatchValue>? claimMatchValue;

  Map<String, Object?> encode() => {
    'claim_match_operator': claimMatchOperator.toTfJson(),
    if (claimMatchValue != null)
      'claim_match_value': [for (final e in claimMatchValue!) e.encode()],
  };
}

/// `claim_match_operator` — derived from the provider schema description.
extension type const BedrockagentcoreAgentRuntimeClaimMatchOperator._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreAgentRuntimeClaimMatchOperator.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreAgentRuntimeClaimMatchOperator.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreAgentRuntimeClaimMatchOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const equals = BedrockagentcoreAgentRuntimeClaimMatchOperator._(
    TfArgLiteral('EQUALS'),
  );
  static const contains = BedrockagentcoreAgentRuntimeClaimMatchOperator._(
    TfArgLiteral('CONTAINS'),
  );
  static const containsAny = BedrockagentcoreAgentRuntimeClaimMatchOperator._(
    TfArgLiteral('CONTAINS_ANY'),
  );

  static const List<BedrockagentcoreAgentRuntimeClaimMatchOperator> values = [
    equals,
    contains,
    containsAny,
  ];
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value.claim_match_value` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeClaimMatchValue {
  const BedrockagentcoreAgentRuntimeClaimMatchValue({
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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreAgentRuntimePrivateEndpoint {
  const BedrockagentcoreAgentRuntimePrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<BedrockagentcoreAgentRuntimeManagedVpcResource>?
  managedVpcResource;

  final List<BedrockagentcoreAgentRuntimeSelfManagedLatticeResource>?
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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreAgentRuntimeManagedVpcResource {
  const BedrockagentcoreAgentRuntimeManagedVpcResource({
    required this.endpointIpAddressType,
    this.routingDomain,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcIdentifier,
  });

  final BedrockagentcoreAgentRuntimeEndpointIpAddressType endpointIpAddressType;

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
extension type const BedrockagentcoreAgentRuntimeEndpointIpAddressType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreAgentRuntimeEndpointIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreAgentRuntimeEndpointIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreAgentRuntimeEndpointIpAddressType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = BedrockagentcoreAgentRuntimeEndpointIpAddressType._(
    TfArgLiteral('IPV4'),
  );
  static const ipv6 = BedrockagentcoreAgentRuntimeEndpointIpAddressType._(
    TfArgLiteral('IPV6'),
  );

  static const List<BedrockagentcoreAgentRuntimeEndpointIpAddressType> values =
      [ipv4, ipv6];
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreAgentRuntimeSelfManagedLatticeResource {
  const BedrockagentcoreAgentRuntimeSelfManagedLatticeResource({
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
final class BedrockagentcoreAgentRuntimePrivateEndpointOverrides {
  const BedrockagentcoreAgentRuntimePrivateEndpointOverrides({
    required this.domain,
    this.privateEndpoint,
  });

  final TfArg<String> domain;

  final List<BedrockagentcoreAgentRuntimePrivateEndpoint>? privateEndpoint;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
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

  final List<BedrockagentcoreAgentRuntimeEfsAccessPoint>? efsAccessPoint;

  final List<BedrockagentcoreAgentRuntimeS3FilesAccessPoint>?
  s3FilesAccessPoint;

  final List<BedrockagentcoreAgentRuntimeSessionStorage>? sessionStorage;

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
final class BedrockagentcoreAgentRuntimeEfsAccessPoint {
  const BedrockagentcoreAgentRuntimeEfsAccessPoint({
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
final class BedrockagentcoreAgentRuntimeS3FilesAccessPoint {
  const BedrockagentcoreAgentRuntimeS3FilesAccessPoint({
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
final class BedrockagentcoreAgentRuntimeSessionStorage {
  const BedrockagentcoreAgentRuntimeSessionStorage({required this.mountPath});

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

  final BedrockagentcoreAgentRuntimeNetworkMode networkMode;

  final List<BedrockagentcoreAgentRuntimeNetworkModeConfig>? networkModeConfig;

  Map<String, Object?> encode() => {
    'network_mode': networkMode.toTfJson(),
    if (networkModeConfig != null)
      'network_mode_config': [for (final e in networkModeConfig!) e.encode()],
  };
}

/// `network_mode` — derived from the provider schema description.
extension type const BedrockagentcoreAgentRuntimeNetworkMode._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentcoreAgentRuntimeNetworkMode.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreAgentRuntimeNetworkMode.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreAgentRuntimeNetworkMode.arg(TfArg<String> arg)
    : this._(arg);

  static const public = BedrockagentcoreAgentRuntimeNetworkMode._(
    TfArgLiteral('PUBLIC'),
  );
  static const vpc = BedrockagentcoreAgentRuntimeNetworkMode._(
    TfArgLiteral('VPC'),
  );

  static const List<BedrockagentcoreAgentRuntimeNetworkMode> values = [
    public,
    vpc,
  ];
}

/// Typed helper for the `network_configuration.network_mode_config` block of
/// `aws_bedrockagentcore_agent_runtime` (derived from provider schema).
@immutable
final class BedrockagentcoreAgentRuntimeNetworkModeConfig {
  const BedrockagentcoreAgentRuntimeNetworkModeConfig({
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

  final BedrockagentcoreAgentRuntimeServerProtocol? serverProtocol;

  Map<String, Object?> encode() => {
    'server_protocol': ?serverProtocol?.toTfJson(),
  };
}

/// `server_protocol` — derived from the provider schema description.
extension type const BedrockagentcoreAgentRuntimeServerProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreAgentRuntimeServerProtocol.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreAgentRuntimeServerProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreAgentRuntimeServerProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const mcp = BedrockagentcoreAgentRuntimeServerProtocol._(
    TfArgLiteral('MCP'),
  );
  static const http = BedrockagentcoreAgentRuntimeServerProtocol._(
    TfArgLiteral('HTTP'),
  );
  static const a2a = BedrockagentcoreAgentRuntimeServerProtocol._(
    TfArgLiteral('A2A'),
  );
  static const agui = BedrockagentcoreAgentRuntimeServerProtocol._(
    TfArgLiteral('AGUI'),
  );

  static const List<BedrockagentcoreAgentRuntimeServerProtocol> values = [
    mcp,
    http,
    a2a,
    agui,
  ];
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

  AwsBedrockagentcoreAgentRuntime(
    super.localName, {
    required TfArg<String> agentRuntimeName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? environmentVariables,
    TfArg<List<Map<String, Object?>>>? lifecycleConfiguration,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentcoreAgentRuntimeArtifact>? agentRuntimeArtifact,
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
  TfRef<String> get agentRuntimeName =>
      TfRef.attribute<String>(this, 'agent_runtime_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariables =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `lifecycle_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get lifecycleConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'lifecycle_configuration',
      );

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
