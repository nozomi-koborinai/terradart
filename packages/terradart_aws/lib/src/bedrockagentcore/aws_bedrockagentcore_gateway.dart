// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_gateway`.
const Set<String> _awsBedrockagentcoreGatewaySensitive = <String>{};

/// Typed helper for the `authorizer_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfiguration {
  const BedrockagentcoreGatewayAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  final List<BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer>?
  customJwtAuthorizer;

  Map<String, Object?> encode() => {
    if (customJwtAuthorizer != null)
      'custom_jwt_authorizer': [
        for (final e in customJwtAuthorizer!) e.encode(),
      ],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer({
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
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration
  >?
  allowedWorkloadConfiguration;

  final List<
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaim
  >?
  customClaim;

  final List<
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint
  >?
  privateEndpoint;

  final List<
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverrides
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
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration({
    this.workloadIdentities,
    this.hostingEnvironment,
  });

  final TfArg<List<Object?>>? workloadIdentities;

  final List<
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment
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
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment({
    required this.arn,
  });

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaim {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaim({
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
    this.authorizingClaimMatchValue,
  });

  final TfArg<String> inboundTokenClaimName;

  final TfArg<String> inboundTokenClaimValueType;

  final List<
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue
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
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    this.claimMatchValue,
  });

  final TfArg<String> claimMatchOperator;

  final List<
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue
  >?
  claimMatchValue;

  Map<String, Object?> encode() => {
    'claim_match_operator': claimMatchOperator.toTfJson(),
    if (claimMatchValue != null)
      'claim_match_value': [for (final e in claimMatchValue!) e.encode()],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value.claim_match_value` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue({
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
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource
  >?
  managedVpcResource;

  final List<
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource
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
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource({
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
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource({
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
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverrides {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverrides({
    required this.domain,
    this.privateEndpoint,
  });

  final TfArg<String> domain;

  final List<
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpoint
  >?
  privateEndpoint;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides.private_endpoint` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpoint {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResource
  >?
  managedVpcResource;

  final List<
    BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointSelfManagedLatticeResource
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
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResource {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointManagedVpcResource({
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
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointSelfManagedLatticeResource {
  const BedrockagentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridesPrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    if (resourceConfigurationIdentifier != null)
      'resource_configuration_identifier': resourceConfigurationIdentifier!
          .toTfJson(),
  };
}

/// Typed helper for the `interceptor_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayInterceptorConfiguration {
  const BedrockagentcoreGatewayInterceptorConfiguration({
    required this.interceptionPoints,
    this.inputConfiguration,
    this.interceptor,
  });

  final TfArg<List<Object?>> interceptionPoints;

  final List<BedrockagentcoreGatewayInterceptorConfigurationInputConfiguration>?
  inputConfiguration;

  final List<BedrockagentcoreGatewayInterceptorConfigurationInterceptor>?
  interceptor;

  Map<String, Object?> encode() => {
    'interception_points': interceptionPoints.toTfJson(),
    if (inputConfiguration != null)
      'input_configuration': [for (final e in inputConfiguration!) e.encode()],
    if (interceptor != null)
      'interceptor': [for (final e in interceptor!) e.encode()],
  };
}

/// Typed helper for the `interceptor_configuration.input_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayInterceptorConfigurationInputConfiguration {
  const BedrockagentcoreGatewayInterceptorConfigurationInputConfiguration({
    required this.passRequestHeaders,
  });

  final TfArg<bool> passRequestHeaders;

  Map<String, Object?> encode() => {
    'pass_request_headers': passRequestHeaders.toTfJson(),
  };
}

/// Typed helper for the `interceptor_configuration.interceptor` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayInterceptorConfigurationInterceptor {
  const BedrockagentcoreGatewayInterceptorConfigurationInterceptor({
    this.lambda,
  });

  final List<BedrockagentcoreGatewayInterceptorConfigurationInterceptorLambda>?
  lambda;

  Map<String, Object?> encode() => {
    if (lambda != null) 'lambda': [for (final e in lambda!) e.encode()],
  };
}

/// Typed helper for the `interceptor_configuration.interceptor.lambda` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayInterceptorConfigurationInterceptorLambda {
  const BedrockagentcoreGatewayInterceptorConfigurationInterceptorLambda({
    required this.arn,
  });

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `policy_engine_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayPolicyEngineConfiguration {
  const BedrockagentcoreGatewayPolicyEngineConfiguration({
    required this.arn,
    required this.mode,
  });

  final TfArg<String> arn;

  final TfArg<String> mode;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// Typed helper for the `protocol_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayProtocolConfiguration {
  const BedrockagentcoreGatewayProtocolConfiguration({this.mcp});

  final List<BedrockagentcoreGatewayProtocolConfigurationMcp>? mcp;

  Map<String, Object?> encode() => {
    if (mcp != null) 'mcp': [for (final e in mcp!) e.encode()],
  };
}

/// Typed helper for the `protocol_configuration.mcp` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayProtocolConfigurationMcp {
  const BedrockagentcoreGatewayProtocolConfigurationMcp({
    this.instructions,
    this.searchType,
    this.supportedVersions,
    this.sessionConfiguration,
    this.streamingConfiguration,
  });

  final TfArg<String>? instructions;

  final TfArg<String>? searchType;

  final TfArg<List<Object?>>? supportedVersions;

  final List<
    BedrockagentcoreGatewayProtocolConfigurationMcpSessionConfiguration
  >?
  sessionConfiguration;

  final List<
    BedrockagentcoreGatewayProtocolConfigurationMcpStreamingConfiguration
  >?
  streamingConfiguration;

  Map<String, Object?> encode() => {
    if (instructions != null) 'instructions': instructions!.toTfJson(),
    if (searchType != null) 'search_type': searchType!.toTfJson(),
    if (supportedVersions != null)
      'supported_versions': supportedVersions!.toTfJson(),
    if (sessionConfiguration != null)
      'session_configuration': [
        for (final e in sessionConfiguration!) e.encode(),
      ],
    if (streamingConfiguration != null)
      'streaming_configuration': [
        for (final e in streamingConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `protocol_configuration.mcp.session_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayProtocolConfigurationMcpSessionConfiguration {
  const BedrockagentcoreGatewayProtocolConfigurationMcpSessionConfiguration({
    this.sessionTimeoutInSeconds,
  });

  final TfArg<num>? sessionTimeoutInSeconds;

  Map<String, Object?> encode() => {
    if (sessionTimeoutInSeconds != null)
      'session_timeout_in_seconds': sessionTimeoutInSeconds!.toTfJson(),
  };
}

/// Typed helper for the `protocol_configuration.mcp.streaming_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayProtocolConfigurationMcpStreamingConfiguration {
  const BedrockagentcoreGatewayProtocolConfigurationMcpStreamingConfiguration({
    this.enableResponseStreaming,
  });

  final TfArg<bool>? enableResponseStreaming;

  Map<String, Object?> encode() => {
    if (enableResponseStreaming != null)
      'enable_response_streaming': enableResponseStreaming!.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_gateway`.
final class AwsBedrockagentcoreGateway extends Resource {
  static const String tfType = 'aws_bedrockagentcore_gateway';

  AwsBedrockagentcoreGateway({
    required super.localName,
    required TfArg<String> authorizerType,
    TfArg<String>? description,
    TfArg<String>? exceptionLevel,
    TfArg<String>? kmsKeyArn,
    required TfArg<String> name,
    TfArg<String>? protocolType,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentcoreGatewayAuthorizerConfiguration>?
    authorizerConfiguration,
    List<BedrockagentcoreGatewayInterceptorConfiguration>?
    interceptorConfiguration,
    List<BedrockagentcoreGatewayPolicyEngineConfiguration>?
    policyEngineConfiguration,
    List<BedrockagentcoreGatewayProtocolConfiguration>? protocolConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorizer_type': authorizerType,
           if (description != null) 'description': description,
           if (exceptionLevel != null) 'exception_level': exceptionLevel,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           'name': name,
           if (protocolType != null) 'protocol_type': protocolType,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (authorizerConfiguration != null)
             'authorizer_configuration': TfArg.literal([
               for (final e in authorizerConfiguration) e.encode(),
             ]),
           if (interceptorConfiguration != null)
             'interceptor_configuration': TfArg.literal([
               for (final e in interceptorConfiguration) e.encode(),
             ]),
           if (policyEngineConfiguration != null)
             'policy_engine_configuration': TfArg.literal([
               for (final e in policyEngineConfiguration) e.encode(),
             ]),
           if (protocolConfiguration != null)
             'protocol_configuration': TfArg.literal([
               for (final e in protocolConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcoreGatewaySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `gateway_arn` attribute.
  TfRef<String> get gatewayArn => TfRef.attribute<String>(this, 'gateway_arn');

  /// Reference to `gateway_id` attribute.
  TfRef<String> get gatewayId => TfRef.attribute<String>(this, 'gateway_id');

  /// Reference to `gateway_url` attribute.
  TfRef<String> get gatewayUrl => TfRef.attribute<String>(this, 'gateway_url');

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
