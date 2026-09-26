// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_multitenant_distribution`.
const Set<String> _awsCloudfrontMultitenantDistributionSensitive = <String>{};

/// Typed helper for the `active_trusted_key_groups` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionActiveTrustedKeyGroups {
  const CloudfrontMultitenantDistributionActiveTrustedKeyGroups({this.items});

  final List<CloudfrontMultitenantDistributionActiveTrustedKeyGroupsItems>?
  items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `active_trusted_key_groups.items` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionActiveTrustedKeyGroupsItems {
  const CloudfrontMultitenantDistributionActiveTrustedKeyGroupsItems();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `cache_behavior` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionCacheBehavior {
  const CloudfrontMultitenantDistributionCacheBehavior({
    this.cachePolicyId,
    this.compress,
    this.fieldLevelEncryptionId,
    this.originRequestPolicyId,
    required this.pathPattern,
    this.realtimeLogConfigArn,
    this.responseHeadersPolicyId,
    required this.targetOriginId,
    required this.viewerProtocolPolicy,
    this.allowedMethods,
    this.functionAssociation,
    this.lambdaFunctionAssociation,
    this.trustedKeyGroups,
  });

  final TfArg<String>? cachePolicyId;

  final TfArg<bool>? compress;

  final TfArg<String>? fieldLevelEncryptionId;

  final TfArg<String>? originRequestPolicyId;

  final TfArg<String> pathPattern;

  final TfArg<String>? realtimeLogConfigArn;

  final TfArg<String>? responseHeadersPolicyId;

  final TfArg<String> targetOriginId;

  final TfArg<String> viewerProtocolPolicy;

  final List<CloudfrontMultitenantDistributionCacheBehaviorAllowedMethods>?
  allowedMethods;

  final List<CloudfrontMultitenantDistributionCacheBehaviorFunctionAssociation>?
  functionAssociation;

  final List<
    CloudfrontMultitenantDistributionCacheBehaviorLambdaFunctionAssociation
  >?
  lambdaFunctionAssociation;

  final List<CloudfrontMultitenantDistributionCacheBehaviorTrustedKeyGroups>?
  trustedKeyGroups;

  Map<String, Object?> encode() => {
    if (cachePolicyId != null) 'cache_policy_id': cachePolicyId!.toTfJson(),
    if (compress != null) 'compress': compress!.toTfJson(),
    if (fieldLevelEncryptionId != null)
      'field_level_encryption_id': fieldLevelEncryptionId!.toTfJson(),
    if (originRequestPolicyId != null)
      'origin_request_policy_id': originRequestPolicyId!.toTfJson(),
    'path_pattern': pathPattern.toTfJson(),
    if (realtimeLogConfigArn != null)
      'realtime_log_config_arn': realtimeLogConfigArn!.toTfJson(),
    if (responseHeadersPolicyId != null)
      'response_headers_policy_id': responseHeadersPolicyId!.toTfJson(),
    'target_origin_id': targetOriginId.toTfJson(),
    'viewer_protocol_policy': viewerProtocolPolicy.toTfJson(),
    if (allowedMethods != null)
      'allowed_methods': [for (final e in allowedMethods!) e.encode()],
    if (functionAssociation != null)
      'function_association': [
        for (final e in functionAssociation!) e.encode(),
      ],
    if (lambdaFunctionAssociation != null)
      'lambda_function_association': [
        for (final e in lambdaFunctionAssociation!) e.encode(),
      ],
    if (trustedKeyGroups != null)
      'trusted_key_groups': [for (final e in trustedKeyGroups!) e.encode()],
  };
}

/// Typed helper for the `cache_behavior.allowed_methods` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionCacheBehaviorAllowedMethods {
  const CloudfrontMultitenantDistributionCacheBehaviorAllowedMethods({
    required this.cachedMethods,
    required this.items,
  });

  final TfArg<List<Object?>> cachedMethods;

  final TfArg<List<Object?>> items;

  Map<String, Object?> encode() => {
    'cached_methods': cachedMethods.toTfJson(),
    'items': items.toTfJson(),
  };
}

/// Typed helper for the `cache_behavior.function_association` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionCacheBehaviorFunctionAssociation {
  const CloudfrontMultitenantDistributionCacheBehaviorFunctionAssociation({
    required this.eventType,
    required this.functionArn,
  });

  final TfArg<String> eventType;

  final TfArg<String> functionArn;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    'function_arn': functionArn.toTfJson(),
  };
}

/// Typed helper for the `cache_behavior.lambda_function_association` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionCacheBehaviorLambdaFunctionAssociation {
  const CloudfrontMultitenantDistributionCacheBehaviorLambdaFunctionAssociation({
    required this.eventType,
    this.includeBody,
    required this.lambdaFunctionArn,
  });

  final TfArg<String> eventType;

  final TfArg<bool>? includeBody;

  final TfArg<String> lambdaFunctionArn;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    if (includeBody != null) 'include_body': includeBody!.toTfJson(),
    'lambda_function_arn': lambdaFunctionArn.toTfJson(),
  };
}

/// Typed helper for the `cache_behavior.trusted_key_groups` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionCacheBehaviorTrustedKeyGroups {
  const CloudfrontMultitenantDistributionCacheBehaviorTrustedKeyGroups({
    this.enabled,
    this.items,
  });

  final TfArg<bool>? enabled;

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Typed helper for the `custom_error_response` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionCustomErrorResponse {
  const CloudfrontMultitenantDistributionCustomErrorResponse({
    this.errorCachingMinTtl,
    required this.errorCode,
    this.responseCode,
    this.responsePagePath,
  });

  final TfArg<num>? errorCachingMinTtl;

  final TfArg<num> errorCode;

  final TfArg<String>? responseCode;

  final TfArg<String>? responsePagePath;

  Map<String, Object?> encode() => {
    if (errorCachingMinTtl != null)
      'error_caching_min_ttl': errorCachingMinTtl!.toTfJson(),
    'error_code': errorCode.toTfJson(),
    if (responseCode != null) 'response_code': responseCode!.toTfJson(),
    if (responsePagePath != null)
      'response_page_path': responsePagePath!.toTfJson(),
  };
}

/// Typed helper for the `default_cache_behavior` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionDefaultCacheBehavior {
  const CloudfrontMultitenantDistributionDefaultCacheBehavior({
    this.cachePolicyId,
    this.compress,
    this.fieldLevelEncryptionId,
    this.originRequestPolicyId,
    this.realtimeLogConfigArn,
    this.responseHeadersPolicyId,
    required this.targetOriginId,
    required this.viewerProtocolPolicy,
    this.allowedMethods,
    this.functionAssociation,
    this.lambdaFunctionAssociation,
    this.trustedKeyGroups,
  });

  final TfArg<String>? cachePolicyId;

  final TfArg<bool>? compress;

  final TfArg<String>? fieldLevelEncryptionId;

  final TfArg<String>? originRequestPolicyId;

  final TfArg<String>? realtimeLogConfigArn;

  final TfArg<String>? responseHeadersPolicyId;

  final TfArg<String> targetOriginId;

  final TfArg<String> viewerProtocolPolicy;

  final List<
    CloudfrontMultitenantDistributionDefaultCacheBehaviorAllowedMethods
  >?
  allowedMethods;

  final List<
    CloudfrontMultitenantDistributionDefaultCacheBehaviorFunctionAssociation
  >?
  functionAssociation;

  final List<
    CloudfrontMultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation
  >?
  lambdaFunctionAssociation;

  final List<
    CloudfrontMultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups
  >?
  trustedKeyGroups;

  Map<String, Object?> encode() => {
    if (cachePolicyId != null) 'cache_policy_id': cachePolicyId!.toTfJson(),
    if (compress != null) 'compress': compress!.toTfJson(),
    if (fieldLevelEncryptionId != null)
      'field_level_encryption_id': fieldLevelEncryptionId!.toTfJson(),
    if (originRequestPolicyId != null)
      'origin_request_policy_id': originRequestPolicyId!.toTfJson(),
    if (realtimeLogConfigArn != null)
      'realtime_log_config_arn': realtimeLogConfigArn!.toTfJson(),
    if (responseHeadersPolicyId != null)
      'response_headers_policy_id': responseHeadersPolicyId!.toTfJson(),
    'target_origin_id': targetOriginId.toTfJson(),
    'viewer_protocol_policy': viewerProtocolPolicy.toTfJson(),
    if (allowedMethods != null)
      'allowed_methods': [for (final e in allowedMethods!) e.encode()],
    if (functionAssociation != null)
      'function_association': [
        for (final e in functionAssociation!) e.encode(),
      ],
    if (lambdaFunctionAssociation != null)
      'lambda_function_association': [
        for (final e in lambdaFunctionAssociation!) e.encode(),
      ],
    if (trustedKeyGroups != null)
      'trusted_key_groups': [for (final e in trustedKeyGroups!) e.encode()],
  };
}

/// Typed helper for the `default_cache_behavior.allowed_methods` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionDefaultCacheBehaviorAllowedMethods {
  const CloudfrontMultitenantDistributionDefaultCacheBehaviorAllowedMethods({
    required this.cachedMethods,
    required this.items,
  });

  final TfArg<List<Object?>> cachedMethods;

  final TfArg<List<Object?>> items;

  Map<String, Object?> encode() => {
    'cached_methods': cachedMethods.toTfJson(),
    'items': items.toTfJson(),
  };
}

/// Typed helper for the `default_cache_behavior.function_association` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionDefaultCacheBehaviorFunctionAssociation {
  const CloudfrontMultitenantDistributionDefaultCacheBehaviorFunctionAssociation({
    required this.eventType,
    required this.functionArn,
  });

  final TfArg<String> eventType;

  final TfArg<String> functionArn;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    'function_arn': functionArn.toTfJson(),
  };
}

/// Typed helper for the `default_cache_behavior.lambda_function_association` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation {
  const CloudfrontMultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation({
    required this.eventType,
    this.includeBody,
    required this.lambdaFunctionArn,
  });

  final TfArg<String> eventType;

  final TfArg<bool>? includeBody;

  final TfArg<String> lambdaFunctionArn;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    if (includeBody != null) 'include_body': includeBody!.toTfJson(),
    'lambda_function_arn': lambdaFunctionArn.toTfJson(),
  };
}

/// Typed helper for the `default_cache_behavior.trusted_key_groups` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups {
  const CloudfrontMultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups({
    this.enabled,
    this.items,
  });

  final TfArg<bool>? enabled;

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Typed helper for the `origin` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionOrigin {
  const CloudfrontMultitenantDistributionOrigin({
    this.connectionAttempts,
    this.connectionTimeout,
    required this.domainName,
    required this.id,
    this.originAccessControlId,
    this.originPath,
    this.responseCompletionTimeout,
    this.customHeader,
    this.customOriginConfig,
    this.originShield,
    this.vpcOriginConfig,
  });

  final TfArg<num>? connectionAttempts;

  final TfArg<num>? connectionTimeout;

  final TfArg<String> domainName;

  final TfArg<String> id;

  final TfArg<String>? originAccessControlId;

  final TfArg<String>? originPath;

  final TfArg<num>? responseCompletionTimeout;

  final List<CloudfrontMultitenantDistributionOriginCustomHeader>? customHeader;

  final List<CloudfrontMultitenantDistributionOriginCustomOriginConfig>?
  customOriginConfig;

  final List<CloudfrontMultitenantDistributionOriginOriginShield>? originShield;

  final List<CloudfrontMultitenantDistributionOriginVpcOriginConfig>?
  vpcOriginConfig;

  Map<String, Object?> encode() => {
    if (connectionAttempts != null)
      'connection_attempts': connectionAttempts!.toTfJson(),
    if (connectionTimeout != null)
      'connection_timeout': connectionTimeout!.toTfJson(),
    'domain_name': domainName.toTfJson(),
    'id': id.toTfJson(),
    if (originAccessControlId != null)
      'origin_access_control_id': originAccessControlId!.toTfJson(),
    if (originPath != null) 'origin_path': originPath!.toTfJson(),
    if (responseCompletionTimeout != null)
      'response_completion_timeout': responseCompletionTimeout!.toTfJson(),
    if (customHeader != null)
      'custom_header': [for (final e in customHeader!) e.encode()],
    if (customOriginConfig != null)
      'custom_origin_config': [for (final e in customOriginConfig!) e.encode()],
    if (originShield != null)
      'origin_shield': [for (final e in originShield!) e.encode()],
    if (vpcOriginConfig != null)
      'vpc_origin_config': [for (final e in vpcOriginConfig!) e.encode()],
  };
}

/// Typed helper for the `origin.custom_header` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionOriginCustomHeader {
  const CloudfrontMultitenantDistributionOriginCustomHeader({
    required this.headerName,
    required this.headerValue,
  });

  final TfArg<String> headerName;

  final TfArg<String> headerValue;

  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': headerValue.toTfJson(),
  };
}

/// Typed helper for the `origin.custom_origin_config` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionOriginCustomOriginConfig {
  const CloudfrontMultitenantDistributionOriginCustomOriginConfig({
    required this.httpPort,
    required this.httpsPort,
    this.ipAddressType,
    this.originKeepaliveTimeout,
    required this.originProtocolPolicy,
    this.originReadTimeout,
    required this.originSslProtocols,
    this.originMtlsConfig,
  });

  final TfArg<num> httpPort;

  final TfArg<num> httpsPort;

  final TfArg<String>? ipAddressType;

  final TfArg<num>? originKeepaliveTimeout;

  final TfArg<String> originProtocolPolicy;

  final TfArg<num>? originReadTimeout;

  final TfArg<List<Object?>> originSslProtocols;

  final List<
    CloudfrontMultitenantDistributionOriginCustomOriginConfigOriginMtlsConfig
  >?
  originMtlsConfig;

  Map<String, Object?> encode() => {
    'http_port': httpPort.toTfJson(),
    'https_port': httpsPort.toTfJson(),
    if (ipAddressType != null) 'ip_address_type': ipAddressType!.toTfJson(),
    if (originKeepaliveTimeout != null)
      'origin_keepalive_timeout': originKeepaliveTimeout!.toTfJson(),
    'origin_protocol_policy': originProtocolPolicy.toTfJson(),
    if (originReadTimeout != null)
      'origin_read_timeout': originReadTimeout!.toTfJson(),
    'origin_ssl_protocols': originSslProtocols.toTfJson(),
    if (originMtlsConfig != null)
      'origin_mtls_config': [for (final e in originMtlsConfig!) e.encode()],
  };
}

/// Typed helper for the `origin.custom_origin_config.origin_mtls_config` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionOriginCustomOriginConfigOriginMtlsConfig {
  const CloudfrontMultitenantDistributionOriginCustomOriginConfigOriginMtlsConfig({
    required this.clientCertificateArn,
  });

  final TfArg<String> clientCertificateArn;

  Map<String, Object?> encode() => {
    'client_certificate_arn': clientCertificateArn.toTfJson(),
  };
}

/// Typed helper for the `origin.origin_shield` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionOriginOriginShield {
  const CloudfrontMultitenantDistributionOriginOriginShield({
    required this.enabled,
    this.originShieldRegion,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? originShieldRegion;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (originShieldRegion != null)
      'origin_shield_region': originShieldRegion!.toTfJson(),
  };
}

/// Typed helper for the `origin.vpc_origin_config` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionOriginVpcOriginConfig {
  const CloudfrontMultitenantDistributionOriginVpcOriginConfig({
    this.originKeepaliveTimeout,
    this.originReadTimeout,
    required this.vpcOriginId,
  });

  final TfArg<num>? originKeepaliveTimeout;

  final TfArg<num>? originReadTimeout;

  final TfArg<String> vpcOriginId;

  Map<String, Object?> encode() => {
    if (originKeepaliveTimeout != null)
      'origin_keepalive_timeout': originKeepaliveTimeout!.toTfJson(),
    if (originReadTimeout != null)
      'origin_read_timeout': originReadTimeout!.toTfJson(),
    'vpc_origin_id': vpcOriginId.toTfJson(),
  };
}

/// Typed helper for the `origin_group` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionOriginGroup {
  const CloudfrontMultitenantDistributionOriginGroup({
    required this.id,
    this.failoverCriteria,
    this.member,
  });

  final TfArg<String> id;

  final List<CloudfrontMultitenantDistributionOriginGroupFailoverCriteria>?
  failoverCriteria;

  final List<CloudfrontMultitenantDistributionOriginGroupMember>? member;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (failoverCriteria != null)
      'failover_criteria': [for (final e in failoverCriteria!) e.encode()],
    if (member != null) 'member': [for (final e in member!) e.encode()],
  };
}

/// Typed helper for the `origin_group.failover_criteria` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionOriginGroupFailoverCriteria {
  const CloudfrontMultitenantDistributionOriginGroupFailoverCriteria({
    required this.statusCodes,
  });

  final TfArg<List<Object?>> statusCodes;

  Map<String, Object?> encode() => {'status_codes': statusCodes.toTfJson()};
}

/// Typed helper for the `origin_group.member` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionOriginGroupMember {
  const CloudfrontMultitenantDistributionOriginGroupMember({
    required this.originId,
  });

  final TfArg<String> originId;

  Map<String, Object?> encode() => {'origin_id': originId.toTfJson()};
}

/// Typed helper for the `restrictions` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionRestrictions {
  const CloudfrontMultitenantDistributionRestrictions({this.geoRestriction});

  final List<CloudfrontMultitenantDistributionRestrictionsGeoRestriction>?
  geoRestriction;

  Map<String, Object?> encode() => {
    if (geoRestriction != null)
      'geo_restriction': [for (final e in geoRestriction!) e.encode()],
  };
}

/// Typed helper for the `restrictions.geo_restriction` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionRestrictionsGeoRestriction {
  const CloudfrontMultitenantDistributionRestrictionsGeoRestriction({
    this.items,
    required this.restrictionType,
  });

  final TfArg<List<Object?>>? items;

  final TfArg<String> restrictionType;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
    'restriction_type': restrictionType.toTfJson(),
  };
}

/// Typed helper for the `tenant_config` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionTenantConfig {
  const CloudfrontMultitenantDistributionTenantConfig({
    this.parameterDefinition,
  });

  final List<CloudfrontMultitenantDistributionTenantConfigParameterDefinition>?
  parameterDefinition;

  Map<String, Object?> encode() => {
    if (parameterDefinition != null)
      'parameter_definition': [
        for (final e in parameterDefinition!) e.encode(),
      ],
  };
}

/// Typed helper for the `tenant_config.parameter_definition` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionTenantConfigParameterDefinition {
  const CloudfrontMultitenantDistributionTenantConfigParameterDefinition({
    required this.name,
    this.definition,
  });

  final TfArg<String> name;

  final List<
    CloudfrontMultitenantDistributionTenantConfigParameterDefinitionDefinition
  >?
  definition;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (definition != null)
      'definition': [for (final e in definition!) e.encode()],
  };
}

/// Typed helper for the `tenant_config.parameter_definition.definition` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionTenantConfigParameterDefinitionDefinition {
  const CloudfrontMultitenantDistributionTenantConfigParameterDefinitionDefinition({
    this.stringSchema,
  });

  final List<
    CloudfrontMultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema
  >?
  stringSchema;

  Map<String, Object?> encode() => {
    if (stringSchema != null)
      'string_schema': [for (final e in stringSchema!) e.encode()],
  };
}

/// Typed helper for the `tenant_config.parameter_definition.definition.string_schema` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema {
  const CloudfrontMultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema({
    this.comment,
    this.defaultValue,
    required this.required,
  });

  final TfArg<String>? comment;

  final TfArg<String>? defaultValue;

  final TfArg<bool> required;

  Map<String, Object?> encode() => {
    if (comment != null) 'comment': comment!.toTfJson(),
    if (defaultValue != null) 'default_value': defaultValue!.toTfJson(),
    'required': required.toTfJson(),
  };
}

/// Typed helper for the `viewer_certificate` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionViewerCertificate {
  const CloudfrontMultitenantDistributionViewerCertificate({
    this.acmCertificateArn,
    this.cloudfrontDefaultCertificate,
    this.minimumProtocolVersion,
    this.sslSupportMethod,
  });

  final TfArg<String>? acmCertificateArn;

  final TfArg<bool>? cloudfrontDefaultCertificate;

  final TfArg<String>? minimumProtocolVersion;

  final TfArg<String>? sslSupportMethod;

  Map<String, Object?> encode() => {
    if (acmCertificateArn != null)
      'acm_certificate_arn': acmCertificateArn!.toTfJson(),
    if (cloudfrontDefaultCertificate != null)
      'cloudfront_default_certificate': cloudfrontDefaultCertificate!
          .toTfJson(),
    if (minimumProtocolVersion != null)
      'minimum_protocol_version': minimumProtocolVersion!.toTfJson(),
    if (sslSupportMethod != null)
      'ssl_support_method': sslSupportMethod!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_multitenant_distribution`.
final class AwsCloudfrontMultitenantDistribution extends Resource {
  static const String tfType = 'aws_cloudfront_multitenant_distribution';

  AwsCloudfrontMultitenantDistribution({
    required super.localName,
    required TfArg<String> comment,
    TfArg<String>? defaultRootObject,
    required TfArg<bool> enabled,
    TfArg<String>? httpVersion,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? webAclId,
    List<CloudfrontMultitenantDistributionActiveTrustedKeyGroups>?
    activeTrustedKeyGroups,
    List<CloudfrontMultitenantDistributionCacheBehavior>? cacheBehavior,
    List<CloudfrontMultitenantDistributionCustomErrorResponse>?
    customErrorResponse,
    List<CloudfrontMultitenantDistributionDefaultCacheBehavior>?
    defaultCacheBehavior,
    List<CloudfrontMultitenantDistributionOrigin>? origin,
    List<CloudfrontMultitenantDistributionOriginGroup>? originGroup,
    List<CloudfrontMultitenantDistributionRestrictions>? restrictions,
    List<CloudfrontMultitenantDistributionTenantConfig>? tenantConfig,
    List<CloudfrontMultitenantDistributionViewerCertificate>? viewerCertificate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'comment': comment,
           if (defaultRootObject != null)
             'default_root_object': defaultRootObject,
           'enabled': enabled,
           if (httpVersion != null) 'http_version': httpVersion,
           if (tags != null) 'tags': tags,
           if (webAclId != null) 'web_acl_id': webAclId,
           if (activeTrustedKeyGroups != null)
             'active_trusted_key_groups': TfArg.literal([
               for (final e in activeTrustedKeyGroups) e.encode(),
             ]),
           if (cacheBehavior != null)
             'cache_behavior': TfArg.literal([
               for (final e in cacheBehavior) e.encode(),
             ]),
           if (customErrorResponse != null)
             'custom_error_response': TfArg.literal([
               for (final e in customErrorResponse) e.encode(),
             ]),
           if (defaultCacheBehavior != null)
             'default_cache_behavior': TfArg.literal([
               for (final e in defaultCacheBehavior) e.encode(),
             ]),
           if (origin != null)
             'origin': TfArg.literal([for (final e in origin) e.encode()]),
           if (originGroup != null)
             'origin_group': TfArg.literal([
               for (final e in originGroup) e.encode(),
             ]),
           if (restrictions != null)
             'restrictions': TfArg.literal([
               for (final e in restrictions) e.encode(),
             ]),
           if (tenantConfig != null)
             'tenant_config': TfArg.literal([
               for (final e in tenantConfig) e.encode(),
             ]),
           if (viewerCertificate != null)
             'viewer_certificate': TfArg.literal([
               for (final e in viewerCertificate) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudfrontMultitenantDistributionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `caller_reference` attribute.
  TfRef<String> get callerReference =>
      TfRef.attribute<String>(this, 'caller_reference');

  /// Reference to `connection_mode` attribute.
  TfRef<String> get connectionMode =>
      TfRef.attribute<String>(this, 'connection_mode');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `in_progress_invalidation_batches` attribute.
  TfRef<num> get inProgressInvalidationBatches =>
      TfRef.attribute<num>(this, 'in_progress_invalidation_batches');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
