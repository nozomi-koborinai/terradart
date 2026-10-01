// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_agentregistry_registry`.
const Set<String> _awsAgentregistryRegistrySensitive = <String>{};

/// Typed helper for the `approval_configuration` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryApprovalConfiguration {
  const AgentregistryRegistryApprovalConfiguration({this.autoApprovalRules});

  final List<TfArg<AgentregistryRegistryAutoApprovalRules>>? autoApprovalRules;

  Map<String, Object?> encode() => {
    if (autoApprovalRules != null)
      'auto_approval_rules': [for (final e in autoApprovalRules!) e.toTfJson()],
  };
}

/// `auto_approval_rules` — derived from the provider schema description.
enum AgentregistryRegistryAutoApprovalRules implements TerraformEnum {
  approveAll('APPROVE_ALL');

  const AgentregistryRegistryAutoApprovalRules(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `auto_detection_configuration` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryAutoDetectionConfiguration {
  const AgentregistryRegistryAutoDetectionConfiguration({
    required this.enabled,
    required this.scope,
  });

  final TfArg<bool> enabled;

  final TfArg<AgentregistryRegistryScope> scope;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'scope': scope.toTfJson(),
  };
}

/// `scope` — derived from the provider schema description.
enum AgentregistryRegistryScope implements TerraformEnum {
  organization('ORGANIZATION');

  const AgentregistryRegistryScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `discovery_configuration` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfiguration {
  const AgentregistryRegistryDiscoveryConfiguration({
    required this.authorizerType,
    this.authorizerConfiguration,
  });

  final TfArg<AgentregistryRegistryAuthorizerType> authorizerType;

  final List<AgentregistryRegistryAuthorizerConfiguration>?
  authorizerConfiguration;

  Map<String, Object?> encode() => {
    'authorizer_type': authorizerType.toTfJson(),
    if (authorizerConfiguration != null)
      'authorizer_configuration': [
        for (final e in authorizerConfiguration!) e.encode(),
      ],
  };
}

/// `authorizer_type` — derived from the provider schema description.
enum AgentregistryRegistryAuthorizerType implements TerraformEnum {
  customJwt('CUSTOM_JWT'),
  awsIam('AWS_IAM');

  const AgentregistryRegistryAuthorizerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `discovery_configuration.authorizer_configuration` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryAuthorizerConfiguration {
  const AgentregistryRegistryAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  final List<AgentregistryRegistryCustomJwtAuthorizer>? customJwtAuthorizer;

  Map<String, Object?> encode() => {
    if (customJwtAuthorizer != null)
      'custom_jwt_authorizer': [
        for (final e in customJwtAuthorizer!) e.encode(),
      ],
  };
}

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryCustomJwtAuthorizer {
  const AgentregistryRegistryCustomJwtAuthorizer({
    this.allowedAudience,
    this.allowedClients,
    this.allowedScopes,
    required this.discoveryUrl,
    this.customClaim,
    this.privateEndpoint,
    this.privateEndpointOverride,
  });

  final TfArg<List<String>>? allowedAudience;

  final TfArg<List<String>>? allowedClients;

  final TfArg<List<String>>? allowedScopes;

  final TfArg<String> discoveryUrl;

  final List<AgentregistryRegistryCustomClaim>? customClaim;

  final List<AgentregistryRegistryPrivateEndpoint>? privateEndpoint;

  final List<AgentregistryRegistryPrivateEndpointOverride>?
  privateEndpointOverride;

  Map<String, Object?> encode() => {
    'allowed_audience': ?allowedAudience?.toTfJson(),
    'allowed_clients': ?allowedClients?.toTfJson(),
    'allowed_scopes': ?allowedScopes?.toTfJson(),
    'discovery_url': discoveryUrl.toTfJson(),
    if (customClaim != null)
      'custom_claim': [for (final e in customClaim!) e.encode()],
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
    if (privateEndpointOverride != null)
      'private_endpoint_override': [
        for (final e in privateEndpointOverride!) e.encode(),
      ],
  };
}

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claim` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryCustomClaim {
  const AgentregistryRegistryCustomClaim({
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
    this.authorizingClaimMatchValue,
  });

  final TfArg<String> inboundTokenClaimName;

  final TfArg<AgentregistryRegistryInboundTokenClaimValueType>
  inboundTokenClaimValueType;

  final List<AgentregistryRegistryAuthorizingClaimMatchValue>?
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
enum AgentregistryRegistryInboundTokenClaimValueType implements TerraformEnum {
  string('STRING'),
  stringArray('STRING_ARRAY');

  const AgentregistryRegistryInboundTokenClaimValueType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryAuthorizingClaimMatchValue {
  const AgentregistryRegistryAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    this.claimMatchValue,
  });

  final TfArg<AgentregistryRegistryClaimMatchOperator> claimMatchOperator;

  final List<AgentregistryRegistryClaimMatchValue>? claimMatchValue;

  Map<String, Object?> encode() => {
    'claim_match_operator': claimMatchOperator.toTfJson(),
    if (claimMatchValue != null)
      'claim_match_value': [for (final e in claimMatchValue!) e.encode()],
  };
}

/// `claim_match_operator` — derived from the provider schema description.
enum AgentregistryRegistryClaimMatchOperator implements TerraformEnum {
  equals('EQUALS'),
  contains('CONTAINS'),
  containsAny('CONTAINS_ANY');

  const AgentregistryRegistryClaimMatchOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value.claim_match_value` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryClaimMatchValue {
  const AgentregistryRegistryClaimMatchValue({
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

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint` block of
/// `aws_agentregistry_registry` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AgentregistryRegistryPrivateEndpoint {
  const AgentregistryRegistryPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<AgentregistryRegistryManagedVpcResource>? managedVpcResource;

  final List<AgentregistryRegistrySelfManagedLatticeResource>?
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

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource` block of
/// `aws_agentregistry_registry` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AgentregistryRegistryManagedVpcResource {
  const AgentregistryRegistryManagedVpcResource({
    required this.endpointIpAddressType,
    this.routingDomain,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcIdentifier,
  });

  final TfArg<AgentregistryRegistryEndpointIpAddressType> endpointIpAddressType;

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
enum AgentregistryRegistryEndpointIpAddressType implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const AgentregistryRegistryEndpointIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource` block of
/// `aws_agentregistry_registry` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AgentregistryRegistrySelfManagedLatticeResource {
  const AgentregistryRegistrySelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    'resource_configuration_identifier': ?resourceConfigurationIdentifier
        ?.toTfJson(),
  };
}

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_override` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryPrivateEndpointOverride {
  const AgentregistryRegistryPrivateEndpointOverride({
    required this.domain,
    this.privateEndpoint,
  });

  final TfArg<String> domain;

  final List<AgentregistryRegistryPrivateEndpoint>? privateEndpoint;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
  };
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryEncryptionConfiguration {
  const AgentregistryRegistryEncryptionConfiguration({required this.kmsKeyArn});

  final RefTo<AwsKmsKey> kmsKeyArn;

  Map<String, Object?> encode() => {
    'kms_key_arn': kmsKeyArn.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_agentregistry_registry`.
final class AwsAgentregistryRegistry extends Resource {
  static const String tfType = 'aws_agentregistry_registry';

  AwsAgentregistryRegistry(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AgentregistryRegistryApprovalConfiguration>? approvalConfiguration,
    List<AgentregistryRegistryAutoDetectionConfiguration>?
    autoDetectionConfiguration,
    List<AgentregistryRegistryDiscoveryConfiguration>? discoveryConfiguration,
    List<AgentregistryRegistryEncryptionConfiguration>? encryptionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (approvalConfiguration != null)
             'approval_configuration': TfArg.literal([
               for (final e in approvalConfiguration) e.encode(),
             ]),
           if (autoDetectionConfiguration != null)
             'auto_detection_configuration': TfArg.literal([
               for (final e in autoDetectionConfiguration) e.encode(),
             ]),
           if (discoveryConfiguration != null)
             'discovery_configuration': TfArg.literal([
               for (final e in discoveryConfiguration) e.encode(),
             ]),
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               for (final e in encryptionConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAgentregistryRegistrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAgentregistryRegistry>`.
  RefTo<AwsAgentregistryRegistry> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `registry_arn` attribute.
  TfRef<String> get registryArn =>
      TfRef.attribute<String>(this, 'registry_arn');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
