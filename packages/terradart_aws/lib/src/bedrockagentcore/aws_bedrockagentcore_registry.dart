// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_bedrockagentcore_registry`.
const Set<String> _awsBedrockagentcoreRegistrySensitive = <String>{};

/// Bedrockagentcore Registry Authorizer enum for `authorizer_type`.
enum BedrockagentcoreRegistryAuthorizerType implements TerraformEnum {
  customJwt('CUSTOM_JWT'),
  awsIam('AWS_IAM');

  const BedrockagentcoreRegistryAuthorizerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `authorizer_configuration` block of
/// `aws_bedrockagentcore_registry` (derived from provider schema).
@immutable
final class BedrockagentcoreRegistryAuthorizerConfiguration {
  const BedrockagentcoreRegistryAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  final List<BedrockagentcoreRegistryCustomJwtAuthorizer>? customJwtAuthorizer;

  Map<String, Object?> encode() => {
    if (customJwtAuthorizer != null)
      'custom_jwt_authorizer': [
        for (final e in customJwtAuthorizer!) e.encode(),
      ],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer` block of
/// `aws_bedrockagentcore_registry` (derived from provider schema).
@immutable
final class BedrockagentcoreRegistryCustomJwtAuthorizer {
  const BedrockagentcoreRegistryCustomJwtAuthorizer({
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

  final List<BedrockagentcoreRegistryAllowedWorkloadConfiguration>?
  allowedWorkloadConfiguration;

  final List<BedrockagentcoreRegistryCustomClaim>? customClaim;

  final List<BedrockagentcoreRegistryPrivateEndpoint>? privateEndpoint;

  final List<BedrockagentcoreRegistryPrivateEndpointOverrides>?
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
/// `aws_bedrockagentcore_registry` (derived from provider schema).
@immutable
final class BedrockagentcoreRegistryAllowedWorkloadConfiguration {
  const BedrockagentcoreRegistryAllowedWorkloadConfiguration({
    this.workloadIdentities,
    this.hostingEnvironment,
  });

  final TfArg<List<String>>? workloadIdentities;

  final List<BedrockagentcoreRegistryHostingEnvironment>? hostingEnvironment;

  Map<String, Object?> encode() => {
    'workload_identities': ?workloadIdentities?.toTfJson(),
    if (hostingEnvironment != null)
      'hosting_environment': [for (final e in hostingEnvironment!) e.encode()],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environment` block of
/// `aws_bedrockagentcore_registry` (derived from provider schema).
@immutable
final class BedrockagentcoreRegistryHostingEnvironment {
  const BedrockagentcoreRegistryHostingEnvironment({required this.arn});

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim` block of
/// `aws_bedrockagentcore_registry` (derived from provider schema).
@immutable
final class BedrockagentcoreRegistryCustomClaim {
  const BedrockagentcoreRegistryCustomClaim({
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
    this.authorizingClaimMatchValue,
  });

  final TfArg<String> inboundTokenClaimName;

  final TfArg<BedrockagentcoreRegistryInboundTokenClaimValueType>
  inboundTokenClaimValueType;

  final List<BedrockagentcoreRegistryAuthorizingClaimMatchValue>?
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
enum BedrockagentcoreRegistryInboundTokenClaimValueType
    implements TerraformEnum {
  string('STRING'),
  stringArray('STRING_ARRAY');

  const BedrockagentcoreRegistryInboundTokenClaimValueType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value` block of
/// `aws_bedrockagentcore_registry` (derived from provider schema).
@immutable
final class BedrockagentcoreRegistryAuthorizingClaimMatchValue {
  const BedrockagentcoreRegistryAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    this.claimMatchValue,
  });

  final TfArg<BedrockagentcoreRegistryClaimMatchOperator> claimMatchOperator;

  final List<BedrockagentcoreRegistryClaimMatchValue>? claimMatchValue;

  Map<String, Object?> encode() => {
    'claim_match_operator': claimMatchOperator.toTfJson(),
    if (claimMatchValue != null)
      'claim_match_value': [for (final e in claimMatchValue!) e.encode()],
  };
}

/// `claim_match_operator` — derived from the provider schema description.
enum BedrockagentcoreRegistryClaimMatchOperator implements TerraformEnum {
  equals('EQUALS'),
  contains('CONTAINS'),
  containsAny('CONTAINS_ANY');

  const BedrockagentcoreRegistryClaimMatchOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value.claim_match_value` block of
/// `aws_bedrockagentcore_registry` (derived from provider schema).
@immutable
final class BedrockagentcoreRegistryClaimMatchValue {
  const BedrockagentcoreRegistryClaimMatchValue({
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
/// `aws_bedrockagentcore_registry` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreRegistryPrivateEndpoint {
  const BedrockagentcoreRegistryPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<BedrockagentcoreRegistryManagedVpcResource>? managedVpcResource;

  final List<BedrockagentcoreRegistrySelfManagedLatticeResource>?
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
/// `aws_bedrockagentcore_registry` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreRegistryManagedVpcResource {
  const BedrockagentcoreRegistryManagedVpcResource({
    required this.endpointIpAddressType,
    this.routingDomain,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcIdentifier,
  });

  final TfArg<BedrockagentcoreRegistryEndpointIpAddressType>
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
enum BedrockagentcoreRegistryEndpointIpAddressType implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const BedrockagentcoreRegistryEndpointIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource` block of
/// `aws_bedrockagentcore_registry` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreRegistrySelfManagedLatticeResource {
  const BedrockagentcoreRegistrySelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    'resource_configuration_identifier': ?resourceConfigurationIdentifier
        ?.toTfJson(),
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides` block of
/// `aws_bedrockagentcore_registry` (derived from provider schema).
@immutable
final class BedrockagentcoreRegistryPrivateEndpointOverrides {
  const BedrockagentcoreRegistryPrivateEndpointOverrides({
    required this.domain,
    this.privateEndpoint,
  });

  final TfArg<String> domain;

  final List<BedrockagentcoreRegistryPrivateEndpoint>? privateEndpoint;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
  };
}

/// Factory wrapper for `aws_bedrockagentcore_registry`.
final class AwsBedrockagentcoreRegistry extends Resource {
  static const String tfType = 'aws_bedrockagentcore_registry';

  AwsBedrockagentcoreRegistry({
    required super.localName,
    TfArg<List<Map<String, Object?>>>? approvalConfiguration,
    TfArg<BedrockagentcoreRegistryAuthorizerType>? authorizerType,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    List<BedrockagentcoreRegistryAuthorizerConfiguration>?
    authorizerConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'approval_configuration': ?approvalConfiguration,
           'authorizer_type': ?authorizerType,
           'description': ?description,
           'name': name,
           'region': ?region,
           if (authorizerConfiguration != null)
             'authorizer_configuration': TfArg.literal([
               for (final e in authorizerConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcoreRegistrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreRegistry>`.
  RefTo<AwsBedrockagentcoreRegistry> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `registry_arn` attribute.
  TfRef<String> get registryArn =>
      TfRef.attribute<String>(this, 'registry_arn');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `approval_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get approvalConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'approval_configuration',
      );

  /// Reference to `authorizer_type` attribute.
  TfRef<String> get authorizerType =>
      TfRef.attribute<String>(this, 'authorizer_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
