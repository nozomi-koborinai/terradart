// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_agentregistry_registry`.
const Set<String> _awsAgentregistryRegistrySensitive = <String>{};

/// Typed helper for the `approval_configuration` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryApprovalConfiguration {
  const AgentregistryRegistryApprovalConfiguration({this.autoApprovalRules});

  final TfArg<List<Object?>>? autoApprovalRules;

  Map<String, Object?> encode() => {
    if (autoApprovalRules != null)
      'auto_approval_rules': autoApprovalRules!.toTfJson(),
  };
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

  final TfArg<String> scope;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'scope': scope.toTfJson(),
  };
}

/// Typed helper for the `discovery_configuration` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfiguration {
  const AgentregistryRegistryDiscoveryConfiguration({
    required this.authorizerType,
    this.authorizerConfiguration,
  });

  final TfArg<String> authorizerType;

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfiguration
  >?
  authorizerConfiguration;

  Map<String, Object?> encode() => {
    'authorizer_type': authorizerType.toTfJson(),
    if (authorizerConfiguration != null)
      'authorizer_configuration': [
        for (final e in authorizerConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `discovery_configuration.authorizer_configuration` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfiguration {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer
  >?
  customJwtAuthorizer;

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
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer({
    this.allowedAudience,
    this.allowedClients,
    this.allowedScopes,
    required this.discoveryUrl,
    this.customClaim,
    this.privateEndpoint,
    this.privateEndpointOverride,
  });

  final TfArg<List<Object?>>? allowedAudience;

  final TfArg<List<Object?>>? allowedClients;

  final TfArg<List<Object?>>? allowedScopes;

  final TfArg<String> discoveryUrl;

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim
  >?
  customClaim;

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint
  >?
  privateEndpoint;

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride
  >?
  privateEndpointOverride;

  Map<String, Object?> encode() => {
    if (allowedAudience != null)
      'allowed_audience': allowedAudience!.toTfJson(),
    if (allowedClients != null) 'allowed_clients': allowedClients!.toTfJson(),
    if (allowedScopes != null) 'allowed_scopes': allowedScopes!.toTfJson(),
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
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim({
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
    this.authorizingClaimMatchValue,
  });

  final TfArg<String> inboundTokenClaimName;

  final TfArg<String> inboundTokenClaimValueType;

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue
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

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    this.claimMatchValue,
  });

  final TfArg<String> claimMatchOperator;

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue
  >?
  claimMatchValue;

  Map<String, Object?> encode() => {
    'claim_match_operator': claimMatchOperator.toTfJson(),
    if (claimMatchValue != null)
      'claim_match_value': [for (final e in claimMatchValue!) e.encode()],
  };
}

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value.claim_match_value` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue({
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

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource
  >?
  managedVpcResource;

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource
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

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource({
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

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    if (resourceConfigurationIdentifier != null)
      'resource_configuration_identifier': resourceConfigurationIdentifier!
          .toTfJson(),
  };
}

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_override` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride({
    required this.domain,
    this.privateEndpoint,
  });

  final TfArg<String> domain;

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint
  >?
  privateEndpoint;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
  };
}

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_override.private_endpoint` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource
  >?
  managedVpcResource;

  final List<
    AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource
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

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_override.private_endpoint.managed_vpc_resource` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource({
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

/// Typed helper for the `discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_override.private_endpoint.self_managed_lattice_resource` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource {
  const AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    if (resourceConfigurationIdentifier != null)
      'resource_configuration_identifier': resourceConfigurationIdentifier!
          .toTfJson(),
  };
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_agentregistry_registry` (derived from provider schema).
@immutable
final class AgentregistryRegistryEncryptionConfiguration {
  const AgentregistryRegistryEncryptionConfiguration({required this.kmsKeyArn});

  final TfArg<String> kmsKeyArn;

  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
}

/// Factory wrapper for `aws_agentregistry_registry`.
final class AwsAgentregistryRegistry extends Resource {
  static const String tfType = 'aws_agentregistry_registry';

  AwsAgentregistryRegistry({
    required super.localName,
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
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `registry_arn` attribute.
  TfRef<String> get registryArn =>
      TfRef.attribute<String>(this, 'registry_arn');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
