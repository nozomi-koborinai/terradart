// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_response_headers_policy`.
const Set<String> _awsCloudfrontResponseHeadersPolicySensitive = <String>{};

/// Typed helper for the `cors_config` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicyCorsConfig {
  const CloudfrontResponseHeadersPolicyCorsConfig({
    required this.accessControlAllowCredentials,
    this.accessControlMaxAgeSec,
    required this.originOverride,
    required this.accessControlAllowHeaders,
    required this.accessControlAllowMethods,
    required this.accessControlAllowOrigins,
    this.accessControlExposeHeaders,
  });

  final TfArg<bool> accessControlAllowCredentials;

  final TfArg<num>? accessControlMaxAgeSec;

  final TfArg<bool> originOverride;

  final CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowHeaders
  accessControlAllowHeaders;

  final CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowMethods
  accessControlAllowMethods;

  final CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowOrigins
  accessControlAllowOrigins;

  final CloudfrontResponseHeadersPolicyCorsConfigAccessControlExposeHeaders?
  accessControlExposeHeaders;

  Map<String, Object?> encode() => {
    'access_control_allow_credentials': accessControlAllowCredentials
        .toTfJson(),
    if (accessControlMaxAgeSec != null)
      'access_control_max_age_sec': accessControlMaxAgeSec!.toTfJson(),
    'origin_override': originOverride.toTfJson(),
    'access_control_allow_headers': accessControlAllowHeaders.encode(),
    'access_control_allow_methods': accessControlAllowMethods.encode(),
    'access_control_allow_origins': accessControlAllowOrigins.encode(),
    if (accessControlExposeHeaders != null)
      'access_control_expose_headers': accessControlExposeHeaders!.encode(),
  };
}

/// Typed helper for the `cors_config.access_control_allow_headers` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowHeaders {
  const CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowHeaders({
    this.items,
  });

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Typed helper for the `cors_config.access_control_allow_methods` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowMethods {
  const CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowMethods({
    this.items,
  });

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Typed helper for the `cors_config.access_control_allow_origins` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowOrigins {
  const CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowOrigins({
    this.items,
  });

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Typed helper for the `cors_config.access_control_expose_headers` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicyCorsConfigAccessControlExposeHeaders {
  const CloudfrontResponseHeadersPolicyCorsConfigAccessControlExposeHeaders({
    this.items,
  });

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Typed helper for the `custom_headers_config` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicyCustomHeadersConfig {
  const CloudfrontResponseHeadersPolicyCustomHeadersConfig({this.items});

  final List<CloudfrontResponseHeadersPolicyCustomHeadersConfigItems>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `custom_headers_config.items` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicyCustomHeadersConfigItems {
  const CloudfrontResponseHeadersPolicyCustomHeadersConfigItems({
    required this.header,
    required this.override,
    required this.value,
  });

  final TfArg<String> header;

  final TfArg<bool> override;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'header': header.toTfJson(),
    'override': override.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `remove_headers_config` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicyRemoveHeadersConfig {
  const CloudfrontResponseHeadersPolicyRemoveHeadersConfig({this.items});

  final List<CloudfrontResponseHeadersPolicyRemoveHeadersConfigItems>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `remove_headers_config.items` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicyRemoveHeadersConfigItems {
  const CloudfrontResponseHeadersPolicyRemoveHeadersConfigItems({
    required this.header,
  });

  final TfArg<String> header;

  Map<String, Object?> encode() => {'header': header.toTfJson()};
}

/// Typed helper for the `security_headers_config` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicySecurityHeadersConfig {
  const CloudfrontResponseHeadersPolicySecurityHeadersConfig({
    this.contentSecurityPolicy,
    this.contentTypeOptions,
    this.frameOptions,
    this.referrerPolicy,
    this.strictTransportSecurity,
    this.xssProtection,
  });

  final CloudfrontResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy?
  contentSecurityPolicy;

  final CloudfrontResponseHeadersPolicySecurityHeadersConfigContentTypeOptions?
  contentTypeOptions;

  final CloudfrontResponseHeadersPolicySecurityHeadersConfigFrameOptions?
  frameOptions;

  final CloudfrontResponseHeadersPolicySecurityHeadersConfigReferrerPolicy?
  referrerPolicy;

  final CloudfrontResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity?
  strictTransportSecurity;

  final CloudfrontResponseHeadersPolicySecurityHeadersConfigXssProtection?
  xssProtection;

  Map<String, Object?> encode() => {
    if (contentSecurityPolicy != null)
      'content_security_policy': contentSecurityPolicy!.encode(),
    if (contentTypeOptions != null)
      'content_type_options': contentTypeOptions!.encode(),
    if (frameOptions != null) 'frame_options': frameOptions!.encode(),
    if (referrerPolicy != null) 'referrer_policy': referrerPolicy!.encode(),
    if (strictTransportSecurity != null)
      'strict_transport_security': strictTransportSecurity!.encode(),
    if (xssProtection != null) 'xss_protection': xssProtection!.encode(),
  };
}

/// Typed helper for the `security_headers_config.content_security_policy` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy {
  const CloudfrontResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy({
    required this.contentSecurityPolicy,
    required this.override,
  });

  final TfArg<String> contentSecurityPolicy;

  final TfArg<bool> override;

  Map<String, Object?> encode() => {
    'content_security_policy': contentSecurityPolicy.toTfJson(),
    'override': override.toTfJson(),
  };
}

/// Typed helper for the `security_headers_config.content_type_options` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicySecurityHeadersConfigContentTypeOptions {
  const CloudfrontResponseHeadersPolicySecurityHeadersConfigContentTypeOptions({
    required this.override,
  });

  final TfArg<bool> override;

  Map<String, Object?> encode() => {'override': override.toTfJson()};
}

/// Typed helper for the `security_headers_config.frame_options` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicySecurityHeadersConfigFrameOptions {
  const CloudfrontResponseHeadersPolicySecurityHeadersConfigFrameOptions({
    required this.frameOption,
    required this.override,
  });

  final TfArg<String> frameOption;

  final TfArg<bool> override;

  Map<String, Object?> encode() => {
    'frame_option': frameOption.toTfJson(),
    'override': override.toTfJson(),
  };
}

/// Typed helper for the `security_headers_config.referrer_policy` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicySecurityHeadersConfigReferrerPolicy {
  const CloudfrontResponseHeadersPolicySecurityHeadersConfigReferrerPolicy({
    required this.override,
    required this.referrerPolicy,
  });

  final TfArg<bool> override;

  final TfArg<String> referrerPolicy;

  Map<String, Object?> encode() => {
    'override': override.toTfJson(),
    'referrer_policy': referrerPolicy.toTfJson(),
  };
}

/// Typed helper for the `security_headers_config.strict_transport_security` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity {
  const CloudfrontResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity({
    required this.accessControlMaxAgeSec,
    this.includeSubdomains,
    required this.override,
    this.preload,
  });

  final TfArg<num> accessControlMaxAgeSec;

  final TfArg<bool>? includeSubdomains;

  final TfArg<bool> override;

  final TfArg<bool>? preload;

  Map<String, Object?> encode() => {
    'access_control_max_age_sec': accessControlMaxAgeSec.toTfJson(),
    if (includeSubdomains != null)
      'include_subdomains': includeSubdomains!.toTfJson(),
    'override': override.toTfJson(),
    if (preload != null) 'preload': preload!.toTfJson(),
  };
}

/// Typed helper for the `security_headers_config.xss_protection` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicySecurityHeadersConfigXssProtection {
  const CloudfrontResponseHeadersPolicySecurityHeadersConfigXssProtection({
    this.modeBlock,
    required this.override,
    required this.protection,
    this.reportUri,
  });

  final TfArg<bool>? modeBlock;

  final TfArg<bool> override;

  final TfArg<bool> protection;

  final TfArg<String>? reportUri;

  Map<String, Object?> encode() => {
    if (modeBlock != null) 'mode_block': modeBlock!.toTfJson(),
    'override': override.toTfJson(),
    'protection': protection.toTfJson(),
    if (reportUri != null) 'report_uri': reportUri!.toTfJson(),
  };
}

/// Typed helper for the `server_timing_headers_config` block of
/// `aws_cloudfront_response_headers_policy` (derived from provider schema).
@immutable
final class CloudfrontResponseHeadersPolicyServerTimingHeadersConfig {
  const CloudfrontResponseHeadersPolicyServerTimingHeadersConfig({
    required this.enabled,
    required this.samplingRate,
  });

  final TfArg<bool> enabled;

  final TfArg<num> samplingRate;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'sampling_rate': samplingRate.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_response_headers_policy`.
final class AwsCloudfrontResponseHeadersPolicy extends Resource {
  static const String tfType = 'aws_cloudfront_response_headers_policy';

  AwsCloudfrontResponseHeadersPolicy({
    required super.localName,
    TfArg<String>? comment,
    required TfArg<String> name,
    CloudfrontResponseHeadersPolicyCorsConfig? corsConfig,
    CloudfrontResponseHeadersPolicyCustomHeadersConfig? customHeadersConfig,
    CloudfrontResponseHeadersPolicyRemoveHeadersConfig? removeHeadersConfig,
    CloudfrontResponseHeadersPolicySecurityHeadersConfig? securityHeadersConfig,
    CloudfrontResponseHeadersPolicyServerTimingHeadersConfig?
    serverTimingHeadersConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           'name': name,
           if (corsConfig != null)
             'cors_config': TfArg.literal(corsConfig.encode()),
           if (customHeadersConfig != null)
             'custom_headers_config': TfArg.literal(
               customHeadersConfig.encode(),
             ),
           if (removeHeadersConfig != null)
             'remove_headers_config': TfArg.literal(
               removeHeadersConfig.encode(),
             ),
           if (securityHeadersConfig != null)
             'security_headers_config': TfArg.literal(
               securityHeadersConfig.encode(),
             ),
           if (serverTimingHeadersConfig != null)
             'server_timing_headers_config': TfArg.literal(
               serverTimingHeadersConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudfrontResponseHeadersPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
