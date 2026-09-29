// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_cloudfront_distribution`.
const Set<String> _awsCloudfrontDistributionSensitive = <String>{};

/// Cloudfront Distribution Http enum for `http_version`.
enum CloudfrontDistributionHttpVersion implements TerraformEnum {
  http1p1('http1.1'),
  http2('http2'),
  http3('http3'),
  http2and3('http2and3');

  const CloudfrontDistributionHttpVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudfront Distribution Price enum for `price_class`.
enum CloudfrontDistributionPriceClass implements TerraformEnum {
  priceclass100('PriceClass_100'),
  priceclass200('PriceClass_200'),
  priceclassAll('PriceClass_All'),
  none('None');

  const CloudfrontDistributionPriceClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cache_tag_config` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionCacheTagConfig {
  const CloudfrontDistributionCacheTagConfig({required this.headerName});

  final TfArg<String> headerName;

  Map<String, Object?> encode() => {'header_name': headerName.toTfJson()};
}

/// Typed helper for the `connection_function_association` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionConnectionFunctionAssociation {
  const CloudfrontDistributionConnectionFunctionAssociation({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `custom_error_response` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionCustomErrorResponse {
  const CloudfrontDistributionCustomErrorResponse({
    this.errorCachingMinTtl,
    required this.errorCode,
    this.responseCode,
    this.responsePagePath,
  });

  final TfArg<num>? errorCachingMinTtl;

  final TfArg<num> errorCode;

  final TfArg<num>? responseCode;

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
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionDefaultCacheBehavior {
  const CloudfrontDistributionDefaultCacheBehavior({
    required this.allowedMethods,
    this.cachePolicyId,
    required this.cachedMethods,
    this.compress,
    this.defaultTtl,
    this.fieldLevelEncryptionId,
    this.maxTtl,
    this.minTtl,
    this.originRequestPolicyId,
    this.realtimeLogConfigArn,
    this.responseHeadersPolicyId,
    this.smoothStreaming,
    required this.targetOriginId,
    this.trustedKeyGroups,
    this.trustedSigners,
    required this.viewerProtocolPolicy,
    this.forwardedValues,
    this.functionAssociation,
    this.grpcConfig,
    this.lambdaFunctionAssociation,
  });

  final TfArg<List<Object?>> allowedMethods;

  final TfArg<String>? cachePolicyId;

  final TfArg<List<Object?>> cachedMethods;

  final TfArg<bool>? compress;

  final TfArg<num>? defaultTtl;

  final TfArg<String>? fieldLevelEncryptionId;

  final TfArg<num>? maxTtl;

  final TfArg<num>? minTtl;

  final TfArg<String>? originRequestPolicyId;

  final TfArg<String>? realtimeLogConfigArn;

  final TfArg<String>? responseHeadersPolicyId;

  final TfArg<bool>? smoothStreaming;

  final TfArg<String> targetOriginId;

  final TfArg<List<Object?>>? trustedKeyGroups;

  final TfArg<List<Object?>>? trustedSigners;

  final TfArg<CloudfrontDistributionDefaultCacheBehaviorViewerProtocolPolicy>
  viewerProtocolPolicy;

  final CloudfrontDistributionDefaultCacheBehaviorForwardedValues?
  forwardedValues;

  final List<CloudfrontDistributionDefaultCacheBehaviorFunctionAssociation>?
  functionAssociation;

  final CloudfrontDistributionDefaultCacheBehaviorGrpcConfig? grpcConfig;

  final List<
    CloudfrontDistributionDefaultCacheBehaviorLambdaFunctionAssociation
  >?
  lambdaFunctionAssociation;

  Map<String, Object?> encode() => {
    'allowed_methods': allowedMethods.toTfJson(),
    if (cachePolicyId != null) 'cache_policy_id': cachePolicyId!.toTfJson(),
    'cached_methods': cachedMethods.toTfJson(),
    if (compress != null) 'compress': compress!.toTfJson(),
    if (defaultTtl != null) 'default_ttl': defaultTtl!.toTfJson(),
    if (fieldLevelEncryptionId != null)
      'field_level_encryption_id': fieldLevelEncryptionId!.toTfJson(),
    if (maxTtl != null) 'max_ttl': maxTtl!.toTfJson(),
    if (minTtl != null) 'min_ttl': minTtl!.toTfJson(),
    if (originRequestPolicyId != null)
      'origin_request_policy_id': originRequestPolicyId!.toTfJson(),
    if (realtimeLogConfigArn != null)
      'realtime_log_config_arn': realtimeLogConfigArn!.toTfJson(),
    if (responseHeadersPolicyId != null)
      'response_headers_policy_id': responseHeadersPolicyId!.toTfJson(),
    if (smoothStreaming != null)
      'smooth_streaming': smoothStreaming!.toTfJson(),
    'target_origin_id': targetOriginId.toTfJson(),
    if (trustedKeyGroups != null)
      'trusted_key_groups': trustedKeyGroups!.toTfJson(),
    if (trustedSigners != null) 'trusted_signers': trustedSigners!.toTfJson(),
    'viewer_protocol_policy': viewerProtocolPolicy.toTfJson(),
    if (forwardedValues != null) 'forwarded_values': forwardedValues!.encode(),
    if (functionAssociation != null)
      'function_association': [
        for (final e in functionAssociation!) e.encode(),
      ],
    if (grpcConfig != null) 'grpc_config': grpcConfig!.encode(),
    if (lambdaFunctionAssociation != null)
      'lambda_function_association': [
        for (final e in lambdaFunctionAssociation!) e.encode(),
      ],
  };
}

/// `viewer_protocol_policy` — derived from the provider schema description.
enum CloudfrontDistributionDefaultCacheBehaviorViewerProtocolPolicy
    implements TerraformEnum {
  allowAll('allow-all'),
  httpsOnly('https-only'),
  redirectToHttps('redirect-to-https');

  const CloudfrontDistributionDefaultCacheBehaviorViewerProtocolPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_cache_behavior.forwarded_values` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionDefaultCacheBehaviorForwardedValues {
  const CloudfrontDistributionDefaultCacheBehaviorForwardedValues({
    this.headers,
    required this.queryString,
    this.queryStringCacheKeys,
    required this.cookies,
  });

  final TfArg<List<Object?>>? headers;

  final TfArg<bool> queryString;

  final TfArg<List<Object?>>? queryStringCacheKeys;

  final CloudfrontDistributionDefaultCacheBehaviorForwardedValuesCookies
  cookies;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': headers!.toTfJson(),
    'query_string': queryString.toTfJson(),
    if (queryStringCacheKeys != null)
      'query_string_cache_keys': queryStringCacheKeys!.toTfJson(),
    'cookies': cookies.encode(),
  };
}

/// Typed helper for the `default_cache_behavior.forwarded_values.cookies` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionDefaultCacheBehaviorForwardedValuesCookies {
  const CloudfrontDistributionDefaultCacheBehaviorForwardedValuesCookies({
    required this.forward,
    this.whitelistedNames,
  });

  final TfArg<
    CloudfrontDistributionDefaultCacheBehaviorForwardedValuesCookiesForward
  >
  forward;

  final TfArg<List<Object?>>? whitelistedNames;

  Map<String, Object?> encode() => {
    'forward': forward.toTfJson(),
    if (whitelistedNames != null)
      'whitelisted_names': whitelistedNames!.toTfJson(),
  };
}

/// `forward` — derived from the provider schema description.
enum CloudfrontDistributionDefaultCacheBehaviorForwardedValuesCookiesForward
    implements TerraformEnum {
  none('none'),
  whitelist('whitelist'),
  all('all');

  const CloudfrontDistributionDefaultCacheBehaviorForwardedValuesCookiesForward(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_cache_behavior.function_association` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionDefaultCacheBehaviorFunctionAssociation {
  const CloudfrontDistributionDefaultCacheBehaviorFunctionAssociation({
    required this.eventType,
    required this.functionArn,
  });

  final TfArg<
    CloudfrontDistributionDefaultCacheBehaviorFunctionAssociationEventType
  >
  eventType;

  final TfArg<String> functionArn;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    'function_arn': functionArn.toTfJson(),
  };
}

/// `event_type` — derived from the provider schema description.
enum CloudfrontDistributionDefaultCacheBehaviorFunctionAssociationEventType
    implements TerraformEnum {
  viewerRequest('viewer-request'),
  viewerResponse('viewer-response'),
  originRequest('origin-request'),
  originResponse('origin-response');

  const CloudfrontDistributionDefaultCacheBehaviorFunctionAssociationEventType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_cache_behavior.grpc_config` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionDefaultCacheBehaviorGrpcConfig {
  const CloudfrontDistributionDefaultCacheBehaviorGrpcConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `default_cache_behavior.lambda_function_association` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionDefaultCacheBehaviorLambdaFunctionAssociation {
  const CloudfrontDistributionDefaultCacheBehaviorLambdaFunctionAssociation({
    required this.eventType,
    this.includeBody,
    required this.lambdaArn,
  });

  final TfArg<
    CloudfrontDistributionDefaultCacheBehaviorLambdaFunctionAssociationEventType
  >
  eventType;

  final TfArg<bool>? includeBody;

  final RefTo<AwsLambdaFunction> lambdaArn;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    if (includeBody != null) 'include_body': includeBody!.toTfJson(),
    'lambda_arn': lambdaArn.encodeAs('qualified_arn').toTfJson(),
  };
}

/// `event_type` — derived from the provider schema description.
enum CloudfrontDistributionDefaultCacheBehaviorLambdaFunctionAssociationEventType
    implements TerraformEnum {
  viewerRequest('viewer-request'),
  viewerResponse('viewer-response'),
  originRequest('origin-request'),
  originResponse('origin-response');

  const CloudfrontDistributionDefaultCacheBehaviorLambdaFunctionAssociationEventType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_config` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionLoggingConfig {
  const CloudfrontDistributionLoggingConfig({
    this.bucket,
    this.includeCookies,
    this.prefix,
  });

  final RefTo<AwsS3Bucket>? bucket;

  final TfArg<bool>? includeCookies;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    if (bucket != null)
      'bucket': bucket!.encodeAs('bucket_domain_name').toTfJson(),
    if (includeCookies != null) 'include_cookies': includeCookies!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Typed helper for the `ordered_cache_behavior` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOrderedCacheBehavior {
  const CloudfrontDistributionOrderedCacheBehavior({
    required this.allowedMethods,
    this.cachePolicyId,
    required this.cachedMethods,
    this.compress,
    this.defaultTtl,
    this.fieldLevelEncryptionId,
    this.maxTtl,
    this.minTtl,
    this.originRequestPolicyId,
    required this.pathPattern,
    this.realtimeLogConfigArn,
    this.responseHeadersPolicyId,
    this.smoothStreaming,
    required this.targetOriginId,
    this.trustedKeyGroups,
    this.trustedSigners,
    required this.viewerProtocolPolicy,
    this.forwardedValues,
    this.functionAssociation,
    this.grpcConfig,
    this.lambdaFunctionAssociation,
  });

  final TfArg<List<Object?>> allowedMethods;

  final TfArg<String>? cachePolicyId;

  final TfArg<List<Object?>> cachedMethods;

  final TfArg<bool>? compress;

  final TfArg<num>? defaultTtl;

  final TfArg<String>? fieldLevelEncryptionId;

  final TfArg<num>? maxTtl;

  final TfArg<num>? minTtl;

  final TfArg<String>? originRequestPolicyId;

  final TfArg<String> pathPattern;

  final TfArg<String>? realtimeLogConfigArn;

  final TfArg<String>? responseHeadersPolicyId;

  final TfArg<bool>? smoothStreaming;

  final TfArg<String> targetOriginId;

  final TfArg<List<Object?>>? trustedKeyGroups;

  final TfArg<List<Object?>>? trustedSigners;

  final TfArg<CloudfrontDistributionOrderedCacheBehaviorViewerProtocolPolicy>
  viewerProtocolPolicy;

  final CloudfrontDistributionOrderedCacheBehaviorForwardedValues?
  forwardedValues;

  final List<CloudfrontDistributionOrderedCacheBehaviorFunctionAssociation>?
  functionAssociation;

  final CloudfrontDistributionOrderedCacheBehaviorGrpcConfig? grpcConfig;

  final List<
    CloudfrontDistributionOrderedCacheBehaviorLambdaFunctionAssociation
  >?
  lambdaFunctionAssociation;

  Map<String, Object?> encode() => {
    'allowed_methods': allowedMethods.toTfJson(),
    if (cachePolicyId != null) 'cache_policy_id': cachePolicyId!.toTfJson(),
    'cached_methods': cachedMethods.toTfJson(),
    if (compress != null) 'compress': compress!.toTfJson(),
    if (defaultTtl != null) 'default_ttl': defaultTtl!.toTfJson(),
    if (fieldLevelEncryptionId != null)
      'field_level_encryption_id': fieldLevelEncryptionId!.toTfJson(),
    if (maxTtl != null) 'max_ttl': maxTtl!.toTfJson(),
    if (minTtl != null) 'min_ttl': minTtl!.toTfJson(),
    if (originRequestPolicyId != null)
      'origin_request_policy_id': originRequestPolicyId!.toTfJson(),
    'path_pattern': pathPattern.toTfJson(),
    if (realtimeLogConfigArn != null)
      'realtime_log_config_arn': realtimeLogConfigArn!.toTfJson(),
    if (responseHeadersPolicyId != null)
      'response_headers_policy_id': responseHeadersPolicyId!.toTfJson(),
    if (smoothStreaming != null)
      'smooth_streaming': smoothStreaming!.toTfJson(),
    'target_origin_id': targetOriginId.toTfJson(),
    if (trustedKeyGroups != null)
      'trusted_key_groups': trustedKeyGroups!.toTfJson(),
    if (trustedSigners != null) 'trusted_signers': trustedSigners!.toTfJson(),
    'viewer_protocol_policy': viewerProtocolPolicy.toTfJson(),
    if (forwardedValues != null) 'forwarded_values': forwardedValues!.encode(),
    if (functionAssociation != null)
      'function_association': [
        for (final e in functionAssociation!) e.encode(),
      ],
    if (grpcConfig != null) 'grpc_config': grpcConfig!.encode(),
    if (lambdaFunctionAssociation != null)
      'lambda_function_association': [
        for (final e in lambdaFunctionAssociation!) e.encode(),
      ],
  };
}

/// `viewer_protocol_policy` — derived from the provider schema description.
enum CloudfrontDistributionOrderedCacheBehaviorViewerProtocolPolicy
    implements TerraformEnum {
  allowAll('allow-all'),
  httpsOnly('https-only'),
  redirectToHttps('redirect-to-https');

  const CloudfrontDistributionOrderedCacheBehaviorViewerProtocolPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ordered_cache_behavior.forwarded_values` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOrderedCacheBehaviorForwardedValues {
  const CloudfrontDistributionOrderedCacheBehaviorForwardedValues({
    this.headers,
    required this.queryString,
    this.queryStringCacheKeys,
    required this.cookies,
  });

  final TfArg<List<Object?>>? headers;

  final TfArg<bool> queryString;

  final TfArg<List<Object?>>? queryStringCacheKeys;

  final CloudfrontDistributionOrderedCacheBehaviorForwardedValuesCookies
  cookies;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': headers!.toTfJson(),
    'query_string': queryString.toTfJson(),
    if (queryStringCacheKeys != null)
      'query_string_cache_keys': queryStringCacheKeys!.toTfJson(),
    'cookies': cookies.encode(),
  };
}

/// Typed helper for the `ordered_cache_behavior.forwarded_values.cookies` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOrderedCacheBehaviorForwardedValuesCookies {
  const CloudfrontDistributionOrderedCacheBehaviorForwardedValuesCookies({
    required this.forward,
    this.whitelistedNames,
  });

  final TfArg<
    CloudfrontDistributionOrderedCacheBehaviorForwardedValuesCookiesForward
  >
  forward;

  final TfArg<List<Object?>>? whitelistedNames;

  Map<String, Object?> encode() => {
    'forward': forward.toTfJson(),
    if (whitelistedNames != null)
      'whitelisted_names': whitelistedNames!.toTfJson(),
  };
}

/// `forward` — derived from the provider schema description.
enum CloudfrontDistributionOrderedCacheBehaviorForwardedValuesCookiesForward
    implements TerraformEnum {
  none('none'),
  whitelist('whitelist'),
  all('all');

  const CloudfrontDistributionOrderedCacheBehaviorForwardedValuesCookiesForward(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ordered_cache_behavior.function_association` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOrderedCacheBehaviorFunctionAssociation {
  const CloudfrontDistributionOrderedCacheBehaviorFunctionAssociation({
    required this.eventType,
    required this.functionArn,
  });

  final TfArg<
    CloudfrontDistributionOrderedCacheBehaviorFunctionAssociationEventType
  >
  eventType;

  final TfArg<String> functionArn;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    'function_arn': functionArn.toTfJson(),
  };
}

/// `event_type` — derived from the provider schema description.
enum CloudfrontDistributionOrderedCacheBehaviorFunctionAssociationEventType
    implements TerraformEnum {
  viewerRequest('viewer-request'),
  viewerResponse('viewer-response'),
  originRequest('origin-request'),
  originResponse('origin-response');

  const CloudfrontDistributionOrderedCacheBehaviorFunctionAssociationEventType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ordered_cache_behavior.grpc_config` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOrderedCacheBehaviorGrpcConfig {
  const CloudfrontDistributionOrderedCacheBehaviorGrpcConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `ordered_cache_behavior.lambda_function_association` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOrderedCacheBehaviorLambdaFunctionAssociation {
  const CloudfrontDistributionOrderedCacheBehaviorLambdaFunctionAssociation({
    required this.eventType,
    this.includeBody,
    required this.lambdaArn,
  });

  final TfArg<
    CloudfrontDistributionOrderedCacheBehaviorLambdaFunctionAssociationEventType
  >
  eventType;

  final TfArg<bool>? includeBody;

  final RefTo<AwsLambdaFunction> lambdaArn;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    if (includeBody != null) 'include_body': includeBody!.toTfJson(),
    'lambda_arn': lambdaArn.encodeAs('qualified_arn').toTfJson(),
  };
}

/// `event_type` — derived from the provider schema description.
enum CloudfrontDistributionOrderedCacheBehaviorLambdaFunctionAssociationEventType
    implements TerraformEnum {
  viewerRequest('viewer-request'),
  viewerResponse('viewer-response'),
  originRequest('origin-request'),
  originResponse('origin-response');

  const CloudfrontDistributionOrderedCacheBehaviorLambdaFunctionAssociationEventType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `origin` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOrigin {
  const CloudfrontDistributionOrigin({
    this.connectionAttempts,
    this.connectionTimeout,
    required this.domainName,
    this.originAccessControlId,
    required this.originId,
    this.originPath,
    this.responseCompletionTimeout,
    this.customHeader,
    this.customOriginConfig,
    this.originShield,
    this.s3OriginConfig,
    this.vpcOriginConfig,
  });

  final TfArg<num>? connectionAttempts;

  final TfArg<num>? connectionTimeout;

  final TfArg<String> domainName;

  final TfArg<String>? originAccessControlId;

  final TfArg<String> originId;

  final TfArg<String>? originPath;

  final TfArg<num>? responseCompletionTimeout;

  final List<CloudfrontDistributionOriginCustomHeader>? customHeader;

  final CloudfrontDistributionOriginCustomOriginConfig? customOriginConfig;

  final CloudfrontDistributionOriginOriginShield? originShield;

  final CloudfrontDistributionOriginS3OriginConfig? s3OriginConfig;

  final CloudfrontDistributionOriginVpcOriginConfig? vpcOriginConfig;

  Map<String, Object?> encode() => {
    if (connectionAttempts != null)
      'connection_attempts': connectionAttempts!.toTfJson(),
    if (connectionTimeout != null)
      'connection_timeout': connectionTimeout!.toTfJson(),
    'domain_name': domainName.toTfJson(),
    if (originAccessControlId != null)
      'origin_access_control_id': originAccessControlId!.toTfJson(),
    'origin_id': originId.toTfJson(),
    if (originPath != null) 'origin_path': originPath!.toTfJson(),
    if (responseCompletionTimeout != null)
      'response_completion_timeout': responseCompletionTimeout!.toTfJson(),
    if (customHeader != null)
      'custom_header': [for (final e in customHeader!) e.encode()],
    if (customOriginConfig != null)
      'custom_origin_config': customOriginConfig!.encode(),
    if (originShield != null) 'origin_shield': originShield!.encode(),
    if (s3OriginConfig != null) 's3_origin_config': s3OriginConfig!.encode(),
    if (vpcOriginConfig != null) 'vpc_origin_config': vpcOriginConfig!.encode(),
  };
}

/// Typed helper for the `origin.custom_header` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOriginCustomHeader {
  const CloudfrontDistributionOriginCustomHeader({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `origin.custom_origin_config` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOriginCustomOriginConfig {
  const CloudfrontDistributionOriginCustomOriginConfig({
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

  final TfArg<CloudfrontDistributionOriginCustomOriginConfigIpAddressType>?
  ipAddressType;

  final TfArg<num>? originKeepaliveTimeout;

  final TfArg<
    CloudfrontDistributionOriginCustomOriginConfigOriginProtocolPolicy
  >
  originProtocolPolicy;

  final TfArg<num>? originReadTimeout;

  final List<
    TfArg<CloudfrontDistributionOriginCustomOriginConfigOriginSslProtocols>
  >
  originSslProtocols;

  final CloudfrontDistributionOriginCustomOriginConfigOriginMtlsConfig?
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
    'origin_ssl_protocols': [for (final e in originSslProtocols) e.toTfJson()],
    if (originMtlsConfig != null)
      'origin_mtls_config': originMtlsConfig!.encode(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
enum CloudfrontDistributionOriginCustomOriginConfigIpAddressType
    implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6'),
  dualstack('dualstack');

  const CloudfrontDistributionOriginCustomOriginConfigIpAddressType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `origin_protocol_policy` — derived from the provider schema description.
enum CloudfrontDistributionOriginCustomOriginConfigOriginProtocolPolicy
    implements TerraformEnum {
  httpOnly('http-only'),
  matchViewer('match-viewer'),
  httpsOnly('https-only');

  const CloudfrontDistributionOriginCustomOriginConfigOriginProtocolPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `origin_ssl_protocols` — derived from the provider schema description.
enum CloudfrontDistributionOriginCustomOriginConfigOriginSslProtocols
    implements TerraformEnum {
  sslv3('SSLv3'),
  tlsv1('TLSv1'),
  tlsv1p1('TLSv1.1'),
  tlsv1p2('TLSv1.2');

  const CloudfrontDistributionOriginCustomOriginConfigOriginSslProtocols(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `origin.custom_origin_config.origin_mtls_config` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOriginCustomOriginConfigOriginMtlsConfig {
  const CloudfrontDistributionOriginCustomOriginConfigOriginMtlsConfig({
    required this.clientCertificateArn,
  });

  final TfArg<String> clientCertificateArn;

  Map<String, Object?> encode() => {
    'client_certificate_arn': clientCertificateArn.toTfJson(),
  };
}

/// Typed helper for the `origin.origin_shield` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOriginOriginShield {
  const CloudfrontDistributionOriginOriginShield({
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

/// Typed helper for the `origin.s3_origin_config` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOriginS3OriginConfig {
  const CloudfrontDistributionOriginS3OriginConfig({
    required this.originAccessIdentity,
  });

  final TfArg<String> originAccessIdentity;

  Map<String, Object?> encode() => {
    'origin_access_identity': originAccessIdentity.toTfJson(),
  };
}

/// Typed helper for the `origin.vpc_origin_config` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOriginVpcOriginConfig {
  const CloudfrontDistributionOriginVpcOriginConfig({
    this.originKeepaliveTimeout,
    this.originReadTimeout,
    this.ownerAccountId,
    required this.vpcOriginId,
  });

  final TfArg<num>? originKeepaliveTimeout;

  final TfArg<num>? originReadTimeout;

  final TfArg<String>? ownerAccountId;

  final TfArg<String> vpcOriginId;

  Map<String, Object?> encode() => {
    if (originKeepaliveTimeout != null)
      'origin_keepalive_timeout': originKeepaliveTimeout!.toTfJson(),
    if (originReadTimeout != null)
      'origin_read_timeout': originReadTimeout!.toTfJson(),
    if (ownerAccountId != null) 'owner_account_id': ownerAccountId!.toTfJson(),
    'vpc_origin_id': vpcOriginId.toTfJson(),
  };
}

/// Typed helper for the `origin_group` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOriginGroup {
  const CloudfrontDistributionOriginGroup({
    required this.originId,
    required this.failoverCriteria,
    required this.member,
  });

  final TfArg<String> originId;

  final CloudfrontDistributionOriginGroupFailoverCriteria failoverCriteria;

  final List<CloudfrontDistributionOriginGroupMember> member;

  Map<String, Object?> encode() => {
    'origin_id': originId.toTfJson(),
    'failover_criteria': failoverCriteria.encode(),
    'member': [for (final e in member) e.encode()],
  };
}

/// Typed helper for the `origin_group.failover_criteria` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOriginGroupFailoverCriteria {
  const CloudfrontDistributionOriginGroupFailoverCriteria({
    required this.statusCodes,
  });

  final TfArg<List<Object?>> statusCodes;

  Map<String, Object?> encode() => {'status_codes': statusCodes.toTfJson()};
}

/// Typed helper for the `origin_group.member` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionOriginGroupMember {
  const CloudfrontDistributionOriginGroupMember({required this.originId});

  final TfArg<String> originId;

  Map<String, Object?> encode() => {'origin_id': originId.toTfJson()};
}

/// Typed helper for the `restrictions` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionRestrictions {
  const CloudfrontDistributionRestrictions({required this.geoRestriction});

  final CloudfrontDistributionRestrictionsGeoRestriction geoRestriction;

  Map<String, Object?> encode() => {'geo_restriction': geoRestriction.encode()};
}

/// Typed helper for the `restrictions.geo_restriction` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionRestrictionsGeoRestriction {
  const CloudfrontDistributionRestrictionsGeoRestriction({
    this.locations,
    required this.restrictionType,
  });

  final TfArg<List<Object?>>? locations;

  final TfArg<CloudfrontDistributionRestrictionsGeoRestrictionRestrictionType>
  restrictionType;

  Map<String, Object?> encode() => {
    if (locations != null) 'locations': locations!.toTfJson(),
    'restriction_type': restrictionType.toTfJson(),
  };
}

/// `restriction_type` — derived from the provider schema description.
enum CloudfrontDistributionRestrictionsGeoRestrictionRestrictionType
    implements TerraformEnum {
  blacklist('blacklist'),
  whitelist('whitelist'),
  none('none');

  const CloudfrontDistributionRestrictionsGeoRestrictionRestrictionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `viewer_certificate` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionViewerCertificate {
  const CloudfrontDistributionViewerCertificate({
    this.acmCertificateArn,
    this.cloudfrontDefaultCertificate,
    this.iamCertificateId,
    this.minimumProtocolVersion,
    this.sslSupportMethod,
  });

  final TfArg<String>? acmCertificateArn;

  final TfArg<bool>? cloudfrontDefaultCertificate;

  final TfArg<String>? iamCertificateId;

  final TfArg<CloudfrontDistributionViewerCertificateMinimumProtocolVersion>?
  minimumProtocolVersion;

  final TfArg<CloudfrontDistributionViewerCertificateSslSupportMethod>?
  sslSupportMethod;

  Map<String, Object?> encode() => {
    if (acmCertificateArn != null)
      'acm_certificate_arn': acmCertificateArn!.toTfJson(),
    if (cloudfrontDefaultCertificate != null)
      'cloudfront_default_certificate': cloudfrontDefaultCertificate!
          .toTfJson(),
    if (iamCertificateId != null)
      'iam_certificate_id': iamCertificateId!.toTfJson(),
    if (minimumProtocolVersion != null)
      'minimum_protocol_version': minimumProtocolVersion!.toTfJson(),
    if (sslSupportMethod != null)
      'ssl_support_method': sslSupportMethod!.toTfJson(),
  };
}

/// `minimum_protocol_version` — derived from the provider schema description.
enum CloudfrontDistributionViewerCertificateMinimumProtocolVersion
    implements TerraformEnum {
  sslv3('SSLv3'),
  tlsv1('TLSv1'),
  tlsv12016('TLSv1_2016'),
  tlsv1p1x2016('TLSv1.1_2016'),
  tlsv1p2x2018('TLSv1.2_2018'),
  tlsv1p2x2019('TLSv1.2_2019'),
  tlsv1p2x2021('TLSv1.2_2021'),
  tlsv1p3x2025('TLSv1.3_2025'),
  tlsv1p2x2025('TLSv1.2_2025');

  const CloudfrontDistributionViewerCertificateMinimumProtocolVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `ssl_support_method` — derived from the provider schema description.
enum CloudfrontDistributionViewerCertificateSslSupportMethod
    implements TerraformEnum {
  sniOnly('sni-only'),
  vip('vip'),
  staticIp('static-ip');

  const CloudfrontDistributionViewerCertificateSslSupportMethod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `viewer_mtls_config` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionViewerMtlsConfig {
  const CloudfrontDistributionViewerMtlsConfig({
    this.mode,
    this.trustStoreConfig,
  });

  final TfArg<CloudfrontDistributionViewerMtlsConfigMode>? mode;

  final CloudfrontDistributionViewerMtlsConfigTrustStoreConfig?
  trustStoreConfig;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (trustStoreConfig != null)
      'trust_store_config': trustStoreConfig!.encode(),
  };
}

/// `mode` — derived from the provider schema description.
enum CloudfrontDistributionViewerMtlsConfigMode implements TerraformEnum {
  required('required'),
  optional('optional'),
  passthrough('passthrough');

  const CloudfrontDistributionViewerMtlsConfigMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `viewer_mtls_config.trust_store_config` block of
/// `aws_cloudfront_distribution` (derived from provider schema).
@immutable
final class CloudfrontDistributionViewerMtlsConfigTrustStoreConfig {
  const CloudfrontDistributionViewerMtlsConfigTrustStoreConfig({
    this.advertiseTrustStoreCaNames,
    this.ignoreCertificateExpiry,
    required this.trustStoreId,
  });

  final TfArg<bool>? advertiseTrustStoreCaNames;

  final TfArg<bool>? ignoreCertificateExpiry;

  final TfArg<String> trustStoreId;

  Map<String, Object?> encode() => {
    if (advertiseTrustStoreCaNames != null)
      'advertise_trust_store_ca_names': advertiseTrustStoreCaNames!.toTfJson(),
    if (ignoreCertificateExpiry != null)
      'ignore_certificate_expiry': ignoreCertificateExpiry!.toTfJson(),
    'trust_store_id': trustStoreId.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_distribution`.
final class AwsCloudfrontDistribution extends Resource {
  static const String tfType = 'aws_cloudfront_distribution';

  AwsCloudfrontDistribution({
    required super.localName,
    TfArg<List<String>>? aliases,
    TfArg<String>? anycastIpListId,
    TfArg<String>? comment,
    TfArg<String>? continuousDeploymentPolicyId,
    TfArg<String>? defaultRootObject,
    required TfArg<bool> enabled,
    TfArg<CloudfrontDistributionHttpVersion>? httpVersion,
    TfArg<bool>? isIpv6Enabled,
    TfArg<CloudfrontDistributionPriceClass>? priceClass,
    TfArg<bool>? retainOnDelete,
    TfArg<bool>? staging,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? waitForDeployment,
    TfArg<String>? webAclId,
    CloudfrontDistributionCacheTagConfig? cacheTagConfig,
    CloudfrontDistributionConnectionFunctionAssociation?
    connectionFunctionAssociation,
    List<CloudfrontDistributionCustomErrorResponse>? customErrorResponse,
    required CloudfrontDistributionDefaultCacheBehavior defaultCacheBehavior,
    CloudfrontDistributionLoggingConfig? loggingConfig,
    List<CloudfrontDistributionOrderedCacheBehavior>? orderedCacheBehavior,
    required List<CloudfrontDistributionOrigin> origin,
    List<CloudfrontDistributionOriginGroup>? originGroup,
    required CloudfrontDistributionRestrictions restrictions,
    required CloudfrontDistributionViewerCertificate viewerCertificate,
    CloudfrontDistributionViewerMtlsConfig? viewerMtlsConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (aliases != null) 'aliases': aliases,
           if (anycastIpListId != null) 'anycast_ip_list_id': anycastIpListId,
           if (comment != null) 'comment': comment,
           if (continuousDeploymentPolicyId != null)
             'continuous_deployment_policy_id': continuousDeploymentPolicyId,
           if (defaultRootObject != null)
             'default_root_object': defaultRootObject,
           'enabled': enabled,
           if (httpVersion != null) 'http_version': httpVersion,
           if (isIpv6Enabled != null) 'is_ipv6_enabled': isIpv6Enabled,
           if (priceClass != null) 'price_class': priceClass,
           if (retainOnDelete != null) 'retain_on_delete': retainOnDelete,
           if (staging != null) 'staging': staging,
           if (tags != null) 'tags': tags,
           if (waitForDeployment != null)
             'wait_for_deployment': waitForDeployment,
           if (webAclId != null) 'web_acl_id': webAclId,
           if (cacheTagConfig != null)
             'cache_tag_config': TfArg.literal(cacheTagConfig.encode()),
           if (connectionFunctionAssociation != null)
             'connection_function_association': TfArg.literal(
               connectionFunctionAssociation.encode(),
             ),
           if (customErrorResponse != null)
             'custom_error_response': TfArg.literal([
               for (final e in customErrorResponse) e.encode(),
             ]),
           'default_cache_behavior': TfArg.literal(
             defaultCacheBehavior.encode(),
           ),
           if (loggingConfig != null)
             'logging_config': TfArg.literal(loggingConfig.encode()),
           if (orderedCacheBehavior != null)
             'ordered_cache_behavior': TfArg.literal([
               for (final e in orderedCacheBehavior) e.encode(),
             ]),
           'origin': TfArg.literal([for (final e in origin) e.encode()]),
           if (originGroup != null)
             'origin_group': TfArg.literal([
               for (final e in originGroup) e.encode(),
             ]),
           'restrictions': TfArg.literal(restrictions.encode()),
           'viewer_certificate': TfArg.literal(viewerCertificate.encode()),
           if (viewerMtlsConfig != null)
             'viewer_mtls_config': TfArg.literal(viewerMtlsConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontDistributionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudfrontDistribution>`.
  RefTo<AwsCloudfrontDistribution> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `caller_reference` attribute.
  TfRef<String> get callerReference =>
      TfRef.attribute<String>(this, 'caller_reference');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `in_progress_validation_batches` attribute.
  TfRef<num> get inProgressValidationBatches =>
      TfRef.attribute<num>(this, 'in_progress_validation_batches');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `logging_v1_enabled` attribute.
  TfRef<bool> get loggingV1Enabled =>
      TfRef.attribute<bool>(this, 'logging_v1_enabled');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `trusted_key_groups` attribute.
  TfRef<List<Map<String, Object?>>> get trustedKeyGroups =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trusted_key_groups');

  /// Reference to `trusted_signers` attribute.
  TfRef<List<Map<String, Object?>>> get trustedSigners =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trusted_signers');
}
