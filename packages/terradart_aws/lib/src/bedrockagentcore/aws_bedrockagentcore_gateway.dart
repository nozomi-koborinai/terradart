// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_bedrockagentcore_gateway`.
const Set<String> _awsBedrockagentcoreGatewaySensitive = <String>{};

/// Bedrockagentcore Gateway Authorizer enum for `authorizer_type`.
extension type const BedrockagentcoreGatewayAuthorizerType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentcoreGatewayAuthorizerType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreGatewayAuthorizerType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreGatewayAuthorizerType.arg(TfArg<String> arg)
    : this._(arg);

  static const customJwt = BedrockagentcoreGatewayAuthorizerType._(
    TfArgLiteral('CUSTOM_JWT'),
  );
  static const awsIam = BedrockagentcoreGatewayAuthorizerType._(
    TfArgLiteral('AWS_IAM'),
  );
  static const none = BedrockagentcoreGatewayAuthorizerType._(
    TfArgLiteral('NONE'),
  );
  static const authenticateOnly = BedrockagentcoreGatewayAuthorizerType._(
    TfArgLiteral('AUTHENTICATE_ONLY'),
  );

  static const List<BedrockagentcoreGatewayAuthorizerType> values = [
    customJwt,
    awsIam,
    none,
    authenticateOnly,
  ];
}

/// Bedrockagentcore Gateway Exception enum for `exception_level`.
extension type const BedrockagentcoreGatewayExceptionLevel._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentcoreGatewayExceptionLevel.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreGatewayExceptionLevel.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreGatewayExceptionLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const debug = BedrockagentcoreGatewayExceptionLevel._(
    TfArgLiteral('DEBUG'),
  );

  static const List<BedrockagentcoreGatewayExceptionLevel> values = [debug];
}

/// Bedrockagentcore Gateway Protocol enum for `protocol_type`.
extension type const BedrockagentcoreGatewayProtocolType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentcoreGatewayProtocolType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreGatewayProtocolType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreGatewayProtocolType.arg(TfArg<String> arg)
    : this._(arg);

  static const mcp = BedrockagentcoreGatewayProtocolType._(TfArgLiteral('MCP'));

  static const List<BedrockagentcoreGatewayProtocolType> values = [mcp];
}

/// Typed helper for the `authorizer_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizerConfiguration {
  const BedrockagentcoreGatewayAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  final List<BedrockagentcoreGatewayCustomJwtAuthorizer>? customJwtAuthorizer;

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
final class BedrockagentcoreGatewayCustomJwtAuthorizer {
  const BedrockagentcoreGatewayCustomJwtAuthorizer({
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

  final List<BedrockagentcoreGatewayAllowedWorkloadConfiguration>?
  allowedWorkloadConfiguration;

  final List<BedrockagentcoreGatewayCustomClaim>? customClaim;

  final List<BedrockagentcoreGatewayPrivateEndpoint>? privateEndpoint;

  final List<BedrockagentcoreGatewayPrivateEndpointOverrides>?
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
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAllowedWorkloadConfiguration {
  const BedrockagentcoreGatewayAllowedWorkloadConfiguration({
    this.workloadIdentities,
    this.hostingEnvironment,
  });

  final TfArg<List<String>>? workloadIdentities;

  final List<BedrockagentcoreGatewayHostingEnvironment>? hostingEnvironment;

  Map<String, Object?> encode() => {
    'workload_identities': ?workloadIdentities?.toTfJson(),
    if (hostingEnvironment != null)
      'hosting_environment': [for (final e in hostingEnvironment!) e.encode()],
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environment` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayHostingEnvironment {
  const BedrockagentcoreGatewayHostingEnvironment({required this.arn});

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayCustomClaim {
  const BedrockagentcoreGatewayCustomClaim({
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
    this.authorizingClaimMatchValue,
  });

  final TfArg<String> inboundTokenClaimName;

  final BedrockagentcoreGatewayInboundTokenClaimValueType
  inboundTokenClaimValueType;

  final List<BedrockagentcoreGatewayAuthorizingClaimMatchValue>?
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
extension type const BedrockagentcoreGatewayInboundTokenClaimValueType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreGatewayInboundTokenClaimValueType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreGatewayInboundTokenClaimValueType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreGatewayInboundTokenClaimValueType.arg(TfArg<String> arg)
    : this._(arg);

  static const string = BedrockagentcoreGatewayInboundTokenClaimValueType._(
    TfArgLiteral('STRING'),
  );
  static const stringArray =
      BedrockagentcoreGatewayInboundTokenClaimValueType._(
        TfArgLiteral('STRING_ARRAY'),
      );

  static const List<BedrockagentcoreGatewayInboundTokenClaimValueType> values =
      [string, stringArray];
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayAuthorizingClaimMatchValue {
  const BedrockagentcoreGatewayAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    this.claimMatchValue,
  });

  final BedrockagentcoreGatewayClaimMatchOperator claimMatchOperator;

  final List<BedrockagentcoreGatewayClaimMatchValue>? claimMatchValue;

  Map<String, Object?> encode() => {
    'claim_match_operator': claimMatchOperator.toTfJson(),
    if (claimMatchValue != null)
      'claim_match_value': [for (final e in claimMatchValue!) e.encode()],
  };
}

/// `claim_match_operator` — derived from the provider schema description.
extension type const BedrockagentcoreGatewayClaimMatchOperator._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreGatewayClaimMatchOperator.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreGatewayClaimMatchOperator.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreGatewayClaimMatchOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const equals = BedrockagentcoreGatewayClaimMatchOperator._(
    TfArgLiteral('EQUALS'),
  );
  static const contains = BedrockagentcoreGatewayClaimMatchOperator._(
    TfArgLiteral('CONTAINS'),
  );
  static const containsAny = BedrockagentcoreGatewayClaimMatchOperator._(
    TfArgLiteral('CONTAINS_ANY'),
  );

  static const List<BedrockagentcoreGatewayClaimMatchOperator> values = [
    equals,
    contains,
    containsAny,
  ];
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.custom_claim.authorizing_claim_match_value.claim_match_value` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayClaimMatchValue {
  const BedrockagentcoreGatewayClaimMatchValue({
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
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreGatewayPrivateEndpoint {
  const BedrockagentcoreGatewayPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<BedrockagentcoreGatewayManagedVpcResource>? managedVpcResource;

  final List<BedrockagentcoreGatewaySelfManagedLatticeResource>?
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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreGatewayManagedVpcResource {
  const BedrockagentcoreGatewayManagedVpcResource({
    required this.endpointIpAddressType,
    this.routingDomain,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcIdentifier,
  });

  final BedrockagentcoreGatewayEndpointIpAddressType endpointIpAddressType;

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
extension type const BedrockagentcoreGatewayEndpointIpAddressType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreGatewayEndpointIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreGatewayEndpointIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreGatewayEndpointIpAddressType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = BedrockagentcoreGatewayEndpointIpAddressType._(
    TfArgLiteral('IPV4'),
  );
  static const ipv6 = BedrockagentcoreGatewayEndpointIpAddressType._(
    TfArgLiteral('IPV6'),
  );

  static const List<BedrockagentcoreGatewayEndpointIpAddressType> values = [
    ipv4,
    ipv6,
  ];
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreGatewaySelfManagedLatticeResource {
  const BedrockagentcoreGatewaySelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    'resource_configuration_identifier': ?resourceConfigurationIdentifier
        ?.toTfJson(),
  };
}

/// Typed helper for the `authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayPrivateEndpointOverrides {
  const BedrockagentcoreGatewayPrivateEndpointOverrides({
    required this.domain,
    this.privateEndpoint,
  });

  final TfArg<String> domain;

  final List<BedrockagentcoreGatewayPrivateEndpoint>? privateEndpoint;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
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

  final List<BedrockagentcoreGatewayInterceptionPoints> interceptionPoints;

  final List<BedrockagentcoreGatewayInputConfiguration>? inputConfiguration;

  final List<BedrockagentcoreGatewayInterceptor>? interceptor;

  Map<String, Object?> encode() => {
    'interception_points': [for (final e in interceptionPoints) e.toTfJson()],
    if (inputConfiguration != null)
      'input_configuration': [for (final e in inputConfiguration!) e.encode()],
    if (interceptor != null)
      'interceptor': [for (final e in interceptor!) e.encode()],
  };
}

/// `interception_points` — derived from the provider schema description.
extension type const BedrockagentcoreGatewayInterceptionPoints._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreGatewayInterceptionPoints.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreGatewayInterceptionPoints.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreGatewayInterceptionPoints.arg(TfArg<String> arg)
    : this._(arg);

  static const request = BedrockagentcoreGatewayInterceptionPoints._(
    TfArgLiteral('REQUEST'),
  );
  static const response = BedrockagentcoreGatewayInterceptionPoints._(
    TfArgLiteral('RESPONSE'),
  );

  static const List<BedrockagentcoreGatewayInterceptionPoints> values = [
    request,
    response,
  ];
}

/// Typed helper for the `interceptor_configuration.input_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayInputConfiguration {
  const BedrockagentcoreGatewayInputConfiguration({
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
final class BedrockagentcoreGatewayInterceptor {
  const BedrockagentcoreGatewayInterceptor({this.lambda});

  final List<BedrockagentcoreGatewayLambda>? lambda;

  Map<String, Object?> encode() => {
    if (lambda != null) 'lambda': [for (final e in lambda!) e.encode()],
  };
}

/// Typed helper for the `interceptor_configuration.interceptor.lambda` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayLambda {
  const BedrockagentcoreGatewayLambda({required this.arn});

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

  final BedrockagentcoreGatewayMode mode;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const BedrockagentcoreGatewayMode._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentcoreGatewayMode.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreGatewayMode.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreGatewayMode.arg(TfArg<String> arg) : this._(arg);

  static const logOnly = BedrockagentcoreGatewayMode._(
    TfArgLiteral('LOG_ONLY'),
  );
  static const enforce = BedrockagentcoreGatewayMode._(TfArgLiteral('ENFORCE'));

  static const List<BedrockagentcoreGatewayMode> values = [logOnly, enforce];
}

/// Typed helper for the `protocol_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayProtocolConfiguration {
  const BedrockagentcoreGatewayProtocolConfiguration({this.mcp});

  final List<BedrockagentcoreGatewayMcp>? mcp;

  Map<String, Object?> encode() => {
    if (mcp != null) 'mcp': [for (final e in mcp!) e.encode()],
  };
}

/// Typed helper for the `protocol_configuration.mcp` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayMcp {
  const BedrockagentcoreGatewayMcp({
    this.instructions,
    this.searchType,
    this.supportedVersions,
    this.sessionConfiguration,
    this.streamingConfiguration,
  });

  final TfArg<String>? instructions;

  final BedrockagentcoreGatewaySearchType? searchType;

  final TfArg<List<String>>? supportedVersions;

  final List<BedrockagentcoreGatewaySessionConfiguration>? sessionConfiguration;

  final List<BedrockagentcoreGatewayStreamingConfiguration>?
  streamingConfiguration;

  Map<String, Object?> encode() => {
    'instructions': ?instructions?.toTfJson(),
    'search_type': ?searchType?.toTfJson(),
    'supported_versions': ?supportedVersions?.toTfJson(),
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

/// `search_type` — derived from the provider schema description.
extension type const BedrockagentcoreGatewaySearchType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentcoreGatewaySearchType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreGatewaySearchType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreGatewaySearchType.arg(TfArg<String> arg) : this._(arg);

  static const semantic = BedrockagentcoreGatewaySearchType._(
    TfArgLiteral('SEMANTIC'),
  );

  static const List<BedrockagentcoreGatewaySearchType> values = [semantic];
}

/// Typed helper for the `protocol_configuration.mcp.session_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewaySessionConfiguration {
  const BedrockagentcoreGatewaySessionConfiguration({
    this.sessionTimeoutInSeconds,
  });

  final TfArg<num>? sessionTimeoutInSeconds;

  Map<String, Object?> encode() => {
    'session_timeout_in_seconds': ?sessionTimeoutInSeconds?.toTfJson(),
  };
}

/// Typed helper for the `protocol_configuration.mcp.streaming_configuration` block of
/// `aws_bedrockagentcore_gateway` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayStreamingConfiguration {
  const BedrockagentcoreGatewayStreamingConfiguration({
    this.enableResponseStreaming,
  });

  final TfArg<bool>? enableResponseStreaming;

  Map<String, Object?> encode() => {
    'enable_response_streaming': ?enableResponseStreaming?.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_gateway`.
final class AwsBedrockagentcoreGateway extends Resource {
  static const String tfType = 'aws_bedrockagentcore_gateway';

  AwsBedrockagentcoreGateway(
    super.localName, {
    required BedrockagentcoreGatewayAuthorizerType authorizerType,
    TfArg<String>? description,
    BedrockagentcoreGatewayExceptionLevel? exceptionLevel,
    RefTo<AwsKmsKey>? kmsKeyArn,
    required TfArg<String> name,
    BedrockagentcoreGatewayProtocolType? protocolType,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
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
           'description': ?description,
           'exception_level': ?exceptionLevel,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'name': name,
           'protocol_type': ?protocolType,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreGateway>`.
  RefTo<AwsBedrockagentcoreGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `authorizer_type` attribute.
  TfRef<String> get authorizerType =>
      TfRef.attribute<String>(this, 'authorizer_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `exception_level` attribute.
  TfRef<String> get exceptionLevel =>
      TfRef.attribute<String>(this, 'exception_level');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `protocol_type` attribute.
  TfRef<String> get protocolType =>
      TfRef.attribute<String>(this, 'protocol_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
