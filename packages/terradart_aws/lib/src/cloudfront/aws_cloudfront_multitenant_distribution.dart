// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../acm/aws_acm_certificate.dart' show AwsAcmCertificate;
import '../cloudfront/aws_cloudfront_cache_policy.dart'
    show AwsCloudfrontCachePolicy;
import '../cloudfront/aws_cloudfront_origin_access_control.dart'
    show AwsCloudfrontOriginAccessControl;
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_cloudfront_multitenant_distribution`.
const Set<String> _awsCloudfrontMultitenantDistributionSensitive = <String>{};

/// Cloudfront Multitenant Distribution Http enum for `http_version`.
extension type const CloudfrontMultitenantDistributionHttpVersion._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontMultitenantDistributionHttpVersion.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontMultitenantDistributionHttpVersion.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontMultitenantDistributionHttpVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const http1p1 = CloudfrontMultitenantDistributionHttpVersion._(
    TfArgLiteral('http1.1'),
  );
  static const http2 = CloudfrontMultitenantDistributionHttpVersion._(
    TfArgLiteral('http2'),
  );
  static const http3 = CloudfrontMultitenantDistributionHttpVersion._(
    TfArgLiteral('http3'),
  );
  static const http2and3 = CloudfrontMultitenantDistributionHttpVersion._(
    TfArgLiteral('http2and3'),
  );

  static const List<CloudfrontMultitenantDistributionHttpVersion> values = [
    http1p1,
    http2,
    http3,
    http2and3,
  ];
}

/// Typed helper for the `active_trusted_key_groups` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionActiveTrustedKeyGroups {
  const CloudfrontMultitenantDistributionActiveTrustedKeyGroups({this.items});

  final List<CloudfrontMultitenantDistributionItems>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `active_trusted_key_groups.items` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionItems {
  const CloudfrontMultitenantDistributionItems();

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

  final RefTo<AwsCloudfrontCachePolicy>? cachePolicyId;

  final TfArg<bool>? compress;

  final TfArg<String>? fieldLevelEncryptionId;

  final TfArg<String>? originRequestPolicyId;

  final TfArg<String> pathPattern;

  final TfArg<String>? realtimeLogConfigArn;

  final TfArg<String>? responseHeadersPolicyId;

  final TfArg<String> targetOriginId;

  final CloudfrontMultitenantDistributionViewerProtocolPolicy
  viewerProtocolPolicy;

  final List<CloudfrontMultitenantDistributionAllowedMethods>? allowedMethods;

  final List<CloudfrontMultitenantDistributionFunctionAssociation>?
  functionAssociation;

  final List<CloudfrontMultitenantDistributionLambdaFunctionAssociation>?
  lambdaFunctionAssociation;

  final List<CloudfrontMultitenantDistributionTrustedKeyGroups>?
  trustedKeyGroups;

  Map<String, Object?> encode() => {
    'cache_policy_id': ?cachePolicyId?.encodeAs('id').toTfJson(),
    'compress': ?compress?.toTfJson(),
    'field_level_encryption_id': ?fieldLevelEncryptionId?.toTfJson(),
    'origin_request_policy_id': ?originRequestPolicyId?.toTfJson(),
    'path_pattern': pathPattern.toTfJson(),
    'realtime_log_config_arn': ?realtimeLogConfigArn?.toTfJson(),
    'response_headers_policy_id': ?responseHeadersPolicyId?.toTfJson(),
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

/// `viewer_protocol_policy` — derived from the provider schema description.
extension type const CloudfrontMultitenantDistributionViewerProtocolPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontMultitenantDistributionViewerProtocolPolicy.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontMultitenantDistributionViewerProtocolPolicy.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CloudfrontMultitenantDistributionViewerProtocolPolicy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allowAll =
      CloudfrontMultitenantDistributionViewerProtocolPolicy._(
        TfArgLiteral('allow-all'),
      );
  static const httpsOnly =
      CloudfrontMultitenantDistributionViewerProtocolPolicy._(
        TfArgLiteral('https-only'),
      );
  static const redirectToHttps =
      CloudfrontMultitenantDistributionViewerProtocolPolicy._(
        TfArgLiteral('redirect-to-https'),
      );

  static const List<CloudfrontMultitenantDistributionViewerProtocolPolicy>
  values = [allowAll, httpsOnly, redirectToHttps];
}

/// Typed helper for the `cache_behavior.allowed_methods` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudfrontMultitenantDistributionAllowedMethods {
  const CloudfrontMultitenantDistributionAllowedMethods({
    required this.cachedMethods,
    required this.items,
  });

  final List<CloudfrontMultitenantDistributionCachedMethods> cachedMethods;

  final TfArg<List<String>> items;

  Map<String, Object?> encode() => {
    'cached_methods': [for (final e in cachedMethods) e.toTfJson()],
    'items': items.toTfJson(),
  };
}

/// `cached_methods` — derived from the provider schema description.
extension type const CloudfrontMultitenantDistributionCachedMethods._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontMultitenantDistributionCachedMethods.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontMultitenantDistributionCachedMethods.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontMultitenantDistributionCachedMethods.arg(TfArg<String> arg)
    : this._(arg);

  static const get = CloudfrontMultitenantDistributionCachedMethods._(
    TfArgLiteral('GET'),
  );
  static const head = CloudfrontMultitenantDistributionCachedMethods._(
    TfArgLiteral('HEAD'),
  );
  static const post = CloudfrontMultitenantDistributionCachedMethods._(
    TfArgLiteral('POST'),
  );
  static const put = CloudfrontMultitenantDistributionCachedMethods._(
    TfArgLiteral('PUT'),
  );
  static const patch = CloudfrontMultitenantDistributionCachedMethods._(
    TfArgLiteral('PATCH'),
  );
  static const options = CloudfrontMultitenantDistributionCachedMethods._(
    TfArgLiteral('OPTIONS'),
  );
  static const delete = CloudfrontMultitenantDistributionCachedMethods._(
    TfArgLiteral('DELETE'),
  );

  static const List<CloudfrontMultitenantDistributionCachedMethods> values = [
    get,
    head,
    post,
    put,
    patch,
    options,
    delete,
  ];
}

/// Typed helper for the `cache_behavior.function_association` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudfrontMultitenantDistributionFunctionAssociation {
  const CloudfrontMultitenantDistributionFunctionAssociation({
    required this.eventType,
    required this.functionArn,
  });

  final CloudfrontMultitenantDistributionEventType eventType;

  final TfArg<String> functionArn;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    'function_arn': functionArn.toTfJson(),
  };
}

/// `event_type` — derived from the provider schema description.
extension type const CloudfrontMultitenantDistributionEventType._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontMultitenantDistributionEventType.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontMultitenantDistributionEventType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontMultitenantDistributionEventType.arg(TfArg<String> arg)
    : this._(arg);

  static const viewerRequest = CloudfrontMultitenantDistributionEventType._(
    TfArgLiteral('viewer-request'),
  );
  static const viewerResponse = CloudfrontMultitenantDistributionEventType._(
    TfArgLiteral('viewer-response'),
  );
  static const originRequest = CloudfrontMultitenantDistributionEventType._(
    TfArgLiteral('origin-request'),
  );
  static const originResponse = CloudfrontMultitenantDistributionEventType._(
    TfArgLiteral('origin-response'),
  );

  static const List<CloudfrontMultitenantDistributionEventType> values = [
    viewerRequest,
    viewerResponse,
    originRequest,
    originResponse,
  ];
}

/// Typed helper for the `cache_behavior.lambda_function_association` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudfrontMultitenantDistributionLambdaFunctionAssociation {
  const CloudfrontMultitenantDistributionLambdaFunctionAssociation({
    required this.eventType,
    this.includeBody,
    required this.lambdaFunctionArn,
  });

  final CloudfrontMultitenantDistributionEventType eventType;

  final TfArg<bool>? includeBody;

  final RefTo<AwsLambdaFunction> lambdaFunctionArn;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    'include_body': ?includeBody?.toTfJson(),
    'lambda_function_arn': lambdaFunctionArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `cache_behavior.trusted_key_groups` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudfrontMultitenantDistributionTrustedKeyGroups {
  const CloudfrontMultitenantDistributionTrustedKeyGroups({
    this.enabled,
    this.items,
  });

  final TfArg<bool>? enabled;

  final TfArg<List<String>>? items;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'items': ?items?.toTfJson(),
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
    'error_caching_min_ttl': ?errorCachingMinTtl?.toTfJson(),
    'error_code': errorCode.toTfJson(),
    'response_code': ?responseCode?.toTfJson(),
    'response_page_path': ?responsePagePath?.toTfJson(),
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

  final RefTo<AwsCloudfrontCachePolicy>? cachePolicyId;

  final TfArg<bool>? compress;

  final TfArg<String>? fieldLevelEncryptionId;

  final TfArg<String>? originRequestPolicyId;

  final TfArg<String>? realtimeLogConfigArn;

  final TfArg<String>? responseHeadersPolicyId;

  final TfArg<String> targetOriginId;

  final CloudfrontMultitenantDistributionViewerProtocolPolicy
  viewerProtocolPolicy;

  final List<CloudfrontMultitenantDistributionAllowedMethods>? allowedMethods;

  final List<CloudfrontMultitenantDistributionFunctionAssociation>?
  functionAssociation;

  final List<CloudfrontMultitenantDistributionLambdaFunctionAssociation>?
  lambdaFunctionAssociation;

  final List<CloudfrontMultitenantDistributionTrustedKeyGroups>?
  trustedKeyGroups;

  Map<String, Object?> encode() => {
    'cache_policy_id': ?cachePolicyId?.encodeAs('id').toTfJson(),
    'compress': ?compress?.toTfJson(),
    'field_level_encryption_id': ?fieldLevelEncryptionId?.toTfJson(),
    'origin_request_policy_id': ?originRequestPolicyId?.toTfJson(),
    'realtime_log_config_arn': ?realtimeLogConfigArn?.toTfJson(),
    'response_headers_policy_id': ?responseHeadersPolicyId?.toTfJson(),
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

  final RefTo<AwsCloudfrontOriginAccessControl>? originAccessControlId;

  final TfArg<String>? originPath;

  final TfArg<num>? responseCompletionTimeout;

  final List<CloudfrontMultitenantDistributionCustomHeader>? customHeader;

  final List<CloudfrontMultitenantDistributionCustomOriginConfig>?
  customOriginConfig;

  final List<CloudfrontMultitenantDistributionOriginShield>? originShield;

  final List<CloudfrontMultitenantDistributionVpcOriginConfig>? vpcOriginConfig;

  Map<String, Object?> encode() => {
    'connection_attempts': ?connectionAttempts?.toTfJson(),
    'connection_timeout': ?connectionTimeout?.toTfJson(),
    'domain_name': domainName.toTfJson(),
    'id': id.toTfJson(),
    'origin_access_control_id': ?originAccessControlId
        ?.encodeAs('id')
        .toTfJson(),
    'origin_path': ?originPath?.toTfJson(),
    'response_completion_timeout': ?responseCompletionTimeout?.toTfJson(),
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
final class CloudfrontMultitenantDistributionCustomHeader {
  const CloudfrontMultitenantDistributionCustomHeader({
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
final class CloudfrontMultitenantDistributionCustomOriginConfig {
  const CloudfrontMultitenantDistributionCustomOriginConfig({
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

  final CloudfrontMultitenantDistributionIpAddressType? ipAddressType;

  final TfArg<num>? originKeepaliveTimeout;

  final CloudfrontMultitenantDistributionOriginProtocolPolicy
  originProtocolPolicy;

  final TfArg<num>? originReadTimeout;

  final List<CloudfrontMultitenantDistributionOriginSslProtocols>
  originSslProtocols;

  final List<CloudfrontMultitenantDistributionOriginMtlsConfig>?
  originMtlsConfig;

  Map<String, Object?> encode() => {
    'http_port': httpPort.toTfJson(),
    'https_port': httpsPort.toTfJson(),
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'origin_keepalive_timeout': ?originKeepaliveTimeout?.toTfJson(),
    'origin_protocol_policy': originProtocolPolicy.toTfJson(),
    'origin_read_timeout': ?originReadTimeout?.toTfJson(),
    'origin_ssl_protocols': [for (final e in originSslProtocols) e.toTfJson()],
    if (originMtlsConfig != null)
      'origin_mtls_config': [for (final e in originMtlsConfig!) e.encode()],
  };
}

/// `ip_address_type` — derived from the provider schema description.
extension type const CloudfrontMultitenantDistributionIpAddressType._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontMultitenantDistributionIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontMultitenantDistributionIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontMultitenantDistributionIpAddressType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = CloudfrontMultitenantDistributionIpAddressType._(
    TfArgLiteral('ipv4'),
  );
  static const ipv6 = CloudfrontMultitenantDistributionIpAddressType._(
    TfArgLiteral('ipv6'),
  );
  static const dualstack = CloudfrontMultitenantDistributionIpAddressType._(
    TfArgLiteral('dualstack'),
  );

  static const List<CloudfrontMultitenantDistributionIpAddressType> values = [
    ipv4,
    ipv6,
    dualstack,
  ];
}

/// `origin_protocol_policy` — derived from the provider schema description.
extension type const CloudfrontMultitenantDistributionOriginProtocolPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontMultitenantDistributionOriginProtocolPolicy.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontMultitenantDistributionOriginProtocolPolicy.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CloudfrontMultitenantDistributionOriginProtocolPolicy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const httpOnly =
      CloudfrontMultitenantDistributionOriginProtocolPolicy._(
        TfArgLiteral('http-only'),
      );
  static const matchViewer =
      CloudfrontMultitenantDistributionOriginProtocolPolicy._(
        TfArgLiteral('match-viewer'),
      );
  static const httpsOnly =
      CloudfrontMultitenantDistributionOriginProtocolPolicy._(
        TfArgLiteral('https-only'),
      );

  static const List<CloudfrontMultitenantDistributionOriginProtocolPolicy>
  values = [httpOnly, matchViewer, httpsOnly];
}

/// `origin_ssl_protocols` — derived from the provider schema description.
extension type const CloudfrontMultitenantDistributionOriginSslProtocols._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontMultitenantDistributionOriginSslProtocols.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontMultitenantDistributionOriginSslProtocols.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CloudfrontMultitenantDistributionOriginSslProtocols.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const sslv3 = CloudfrontMultitenantDistributionOriginSslProtocols._(
    TfArgLiteral('SSLv3'),
  );
  static const tlsv1 = CloudfrontMultitenantDistributionOriginSslProtocols._(
    TfArgLiteral('TLSv1'),
  );
  static const tlsv1p1 = CloudfrontMultitenantDistributionOriginSslProtocols._(
    TfArgLiteral('TLSv1.1'),
  );
  static const tlsv1p2 = CloudfrontMultitenantDistributionOriginSslProtocols._(
    TfArgLiteral('TLSv1.2'),
  );

  static const List<CloudfrontMultitenantDistributionOriginSslProtocols>
  values = [sslv3, tlsv1, tlsv1p1, tlsv1p2];
}

/// Typed helper for the `origin.custom_origin_config.origin_mtls_config` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionOriginMtlsConfig {
  const CloudfrontMultitenantDistributionOriginMtlsConfig({
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
final class CloudfrontMultitenantDistributionOriginShield {
  const CloudfrontMultitenantDistributionOriginShield({
    required this.enabled,
    this.originShieldRegion,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? originShieldRegion;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'origin_shield_region': ?originShieldRegion?.toTfJson(),
  };
}

/// Typed helper for the `origin.vpc_origin_config` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionVpcOriginConfig {
  const CloudfrontMultitenantDistributionVpcOriginConfig({
    this.originKeepaliveTimeout,
    this.originReadTimeout,
    required this.vpcOriginId,
  });

  final TfArg<num>? originKeepaliveTimeout;

  final TfArg<num>? originReadTimeout;

  final TfArg<String> vpcOriginId;

  Map<String, Object?> encode() => {
    'origin_keepalive_timeout': ?originKeepaliveTimeout?.toTfJson(),
    'origin_read_timeout': ?originReadTimeout?.toTfJson(),
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

  final List<CloudfrontMultitenantDistributionFailoverCriteria>?
  failoverCriteria;

  final List<CloudfrontMultitenantDistributionMember>? member;

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
final class CloudfrontMultitenantDistributionFailoverCriteria {
  const CloudfrontMultitenantDistributionFailoverCriteria({
    required this.statusCodes,
  });

  final TfArg<List<num>> statusCodes;

  Map<String, Object?> encode() => {'status_codes': statusCodes.toTfJson()};
}

/// Typed helper for the `origin_group.member` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionMember {
  const CloudfrontMultitenantDistributionMember({required this.originId});

  final TfArg<String> originId;

  Map<String, Object?> encode() => {'origin_id': originId.toTfJson()};
}

/// Typed helper for the `restrictions` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionRestrictions {
  const CloudfrontMultitenantDistributionRestrictions({this.geoRestriction});

  final List<CloudfrontMultitenantDistributionGeoRestriction>? geoRestriction;

  Map<String, Object?> encode() => {
    if (geoRestriction != null)
      'geo_restriction': [for (final e in geoRestriction!) e.encode()],
  };
}

/// Typed helper for the `restrictions.geo_restriction` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionGeoRestriction {
  const CloudfrontMultitenantDistributionGeoRestriction({
    this.items,
    required this.restrictionType,
  });

  final TfArg<List<String>>? items;

  final CloudfrontMultitenantDistributionRestrictionType restrictionType;

  Map<String, Object?> encode() => {
    'items': ?items?.toTfJson(),
    'restriction_type': restrictionType.toTfJson(),
  };
}

/// `restriction_type` — derived from the provider schema description.
extension type const CloudfrontMultitenantDistributionRestrictionType._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontMultitenantDistributionRestrictionType.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontMultitenantDistributionRestrictionType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontMultitenantDistributionRestrictionType.arg(TfArg<String> arg)
    : this._(arg);

  static const blacklist = CloudfrontMultitenantDistributionRestrictionType._(
    TfArgLiteral('blacklist'),
  );
  static const whitelist = CloudfrontMultitenantDistributionRestrictionType._(
    TfArgLiteral('whitelist'),
  );
  static const none = CloudfrontMultitenantDistributionRestrictionType._(
    TfArgLiteral('none'),
  );

  static const List<CloudfrontMultitenantDistributionRestrictionType> values = [
    blacklist,
    whitelist,
    none,
  ];
}

/// Typed helper for the `tenant_config` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionTenantConfig {
  const CloudfrontMultitenantDistributionTenantConfig({
    this.parameterDefinition,
  });

  final List<CloudfrontMultitenantDistributionParameterDefinition>?
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
final class CloudfrontMultitenantDistributionParameterDefinition {
  const CloudfrontMultitenantDistributionParameterDefinition({
    required this.name,
    this.definition,
  });

  final TfArg<String> name;

  final List<CloudfrontMultitenantDistributionDefinition>? definition;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (definition != null)
      'definition': [for (final e in definition!) e.encode()],
  };
}

/// Typed helper for the `tenant_config.parameter_definition.definition` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionDefinition {
  const CloudfrontMultitenantDistributionDefinition({this.stringSchema});

  final List<CloudfrontMultitenantDistributionStringSchema>? stringSchema;

  Map<String, Object?> encode() => {
    if (stringSchema != null)
      'string_schema': [for (final e in stringSchema!) e.encode()],
  };
}

/// Typed helper for the `tenant_config.parameter_definition.definition.string_schema` block of
/// `aws_cloudfront_multitenant_distribution` (derived from provider schema).
@immutable
final class CloudfrontMultitenantDistributionStringSchema {
  const CloudfrontMultitenantDistributionStringSchema({
    this.comment,
    this.defaultValue,
    required this.required,
  });

  final TfArg<String>? comment;

  final TfArg<String>? defaultValue;

  final TfArg<bool> required;

  Map<String, Object?> encode() => {
    'comment': ?comment?.toTfJson(),
    'default_value': ?defaultValue?.toTfJson(),
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

  final RefTo<AwsAcmCertificate>? acmCertificateArn;

  final TfArg<bool>? cloudfrontDefaultCertificate;

  final CloudfrontMultitenantDistributionMinimumProtocolVersion?
  minimumProtocolVersion;

  final CloudfrontMultitenantDistributionSslSupportMethod? sslSupportMethod;

  Map<String, Object?> encode() => {
    'acm_certificate_arn': ?acmCertificateArn?.encodeAs('arn').toTfJson(),
    'cloudfront_default_certificate': ?cloudfrontDefaultCertificate?.toTfJson(),
    'minimum_protocol_version': ?minimumProtocolVersion?.toTfJson(),
    'ssl_support_method': ?sslSupportMethod?.toTfJson(),
  };
}

/// `minimum_protocol_version` — derived from the provider schema description.
extension type const CloudfrontMultitenantDistributionMinimumProtocolVersion._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontMultitenantDistributionMinimumProtocolVersion.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontMultitenantDistributionMinimumProtocolVersion.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CloudfrontMultitenantDistributionMinimumProtocolVersion.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const sslv3 =
      CloudfrontMultitenantDistributionMinimumProtocolVersion._(
        TfArgLiteral('SSLv3'),
      );
  static const tlsv1 =
      CloudfrontMultitenantDistributionMinimumProtocolVersion._(
        TfArgLiteral('TLSv1'),
      );
  static const tlsv12016 =
      CloudfrontMultitenantDistributionMinimumProtocolVersion._(
        TfArgLiteral('TLSv1_2016'),
      );
  static const tlsv1p1x2016 =
      CloudfrontMultitenantDistributionMinimumProtocolVersion._(
        TfArgLiteral('TLSv1.1_2016'),
      );
  static const tlsv1p2x2018 =
      CloudfrontMultitenantDistributionMinimumProtocolVersion._(
        TfArgLiteral('TLSv1.2_2018'),
      );
  static const tlsv1p2x2019 =
      CloudfrontMultitenantDistributionMinimumProtocolVersion._(
        TfArgLiteral('TLSv1.2_2019'),
      );
  static const tlsv1p2x2021 =
      CloudfrontMultitenantDistributionMinimumProtocolVersion._(
        TfArgLiteral('TLSv1.2_2021'),
      );
  static const tlsv1p3x2025 =
      CloudfrontMultitenantDistributionMinimumProtocolVersion._(
        TfArgLiteral('TLSv1.3_2025'),
      );
  static const tlsv1p2x2025 =
      CloudfrontMultitenantDistributionMinimumProtocolVersion._(
        TfArgLiteral('TLSv1.2_2025'),
      );

  static const List<CloudfrontMultitenantDistributionMinimumProtocolVersion>
  values = [
    sslv3,
    tlsv1,
    tlsv12016,
    tlsv1p1x2016,
    tlsv1p2x2018,
    tlsv1p2x2019,
    tlsv1p2x2021,
    tlsv1p3x2025,
    tlsv1p2x2025,
  ];
}

/// `ssl_support_method` — derived from the provider schema description.
extension type const CloudfrontMultitenantDistributionSslSupportMethod._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontMultitenantDistributionSslSupportMethod.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontMultitenantDistributionSslSupportMethod.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontMultitenantDistributionSslSupportMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const sniOnly = CloudfrontMultitenantDistributionSslSupportMethod._(
    TfArgLiteral('sni-only'),
  );
  static const vip = CloudfrontMultitenantDistributionSslSupportMethod._(
    TfArgLiteral('vip'),
  );
  static const staticIp = CloudfrontMultitenantDistributionSslSupportMethod._(
    TfArgLiteral('static-ip'),
  );

  static const List<CloudfrontMultitenantDistributionSslSupportMethod> values =
      [sniOnly, vip, staticIp];
}

/// Factory wrapper for `aws_cloudfront_multitenant_distribution`.
final class AwsCloudfrontMultitenantDistribution extends Resource {
  static const String tfType = 'aws_cloudfront_multitenant_distribution';

  AwsCloudfrontMultitenantDistribution(
    super.localName, {
    required TfArg<String> comment,
    TfArg<String>? defaultRootObject,
    required TfArg<bool> enabled,
    CloudfrontMultitenantDistributionHttpVersion? httpVersion,
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
           'default_root_object': ?defaultRootObject,
           'enabled': enabled,
           'http_version': ?httpVersion,
           'tags': ?tags,
           'web_acl_id': ?webAclId,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudfrontMultitenantDistribution>`.
  RefTo<AwsCloudfrontMultitenantDistribution> get ref => RefTo.of(this);

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

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `default_root_object` attribute.
  TfRef<String> get defaultRootObject =>
      TfRef.attribute<String>(this, 'default_root_object');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `http_version` attribute.
  TfRef<String> get httpVersion =>
      TfRef.attribute<String>(this, 'http_version');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `web_acl_id` attribute.
  TfRef<String> get webAclId => TfRef.attribute<String>(this, 'web_acl_id');
}
