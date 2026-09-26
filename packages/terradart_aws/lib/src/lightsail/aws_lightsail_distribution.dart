// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_distribution`.
const Set<String> _awsLightsailDistributionSensitive = <String>{};

/// Typed helper for the `cache_behavior` block of
/// `aws_lightsail_distribution` (derived from provider schema).
@immutable
final class LightsailDistributionCacheBehavior {
  const LightsailDistributionCacheBehavior({
    required this.behavior,
    required this.path,
  });

  final TfArg<String> behavior;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `cache_behavior_settings` block of
/// `aws_lightsail_distribution` (derived from provider schema).
@immutable
final class LightsailDistributionCacheBehaviorSettings {
  const LightsailDistributionCacheBehaviorSettings({
    this.allowedHttpMethods,
    this.cachedHttpMethods,
    this.defaultTtl,
    this.maximumTtl,
    this.minimumTtl,
    this.forwardedCookies,
    this.forwardedHeaders,
    this.forwardedQueryStrings,
  });

  final TfArg<String>? allowedHttpMethods;

  final TfArg<String>? cachedHttpMethods;

  final TfArg<num>? defaultTtl;

  final TfArg<num>? maximumTtl;

  final TfArg<num>? minimumTtl;

  final LightsailDistributionCacheBehaviorSettingsForwardedCookies?
  forwardedCookies;

  final LightsailDistributionCacheBehaviorSettingsForwardedHeaders?
  forwardedHeaders;

  final LightsailDistributionCacheBehaviorSettingsForwardedQueryStrings?
  forwardedQueryStrings;

  Map<String, Object?> encode() => {
    if (allowedHttpMethods != null)
      'allowed_http_methods': allowedHttpMethods!.toTfJson(),
    if (cachedHttpMethods != null)
      'cached_http_methods': cachedHttpMethods!.toTfJson(),
    if (defaultTtl != null) 'default_ttl': defaultTtl!.toTfJson(),
    if (maximumTtl != null) 'maximum_ttl': maximumTtl!.toTfJson(),
    if (minimumTtl != null) 'minimum_ttl': minimumTtl!.toTfJson(),
    if (forwardedCookies != null)
      'forwarded_cookies': forwardedCookies!.encode(),
    if (forwardedHeaders != null)
      'forwarded_headers': forwardedHeaders!.encode(),
    if (forwardedQueryStrings != null)
      'forwarded_query_strings': forwardedQueryStrings!.encode(),
  };
}

/// Typed helper for the `cache_behavior_settings.forwarded_cookies` block of
/// `aws_lightsail_distribution` (derived from provider schema).
@immutable
final class LightsailDistributionCacheBehaviorSettingsForwardedCookies {
  const LightsailDistributionCacheBehaviorSettingsForwardedCookies({
    this.cookiesAllowList,
    this.option,
  });

  final TfArg<List<Object?>>? cookiesAllowList;

  final TfArg<String>? option;

  Map<String, Object?> encode() => {
    if (cookiesAllowList != null)
      'cookies_allow_list': cookiesAllowList!.toTfJson(),
    if (option != null) 'option': option!.toTfJson(),
  };
}

/// Typed helper for the `cache_behavior_settings.forwarded_headers` block of
/// `aws_lightsail_distribution` (derived from provider schema).
@immutable
final class LightsailDistributionCacheBehaviorSettingsForwardedHeaders {
  const LightsailDistributionCacheBehaviorSettingsForwardedHeaders({
    this.headersAllowList,
    this.option,
  });

  final TfArg<List<Object?>>? headersAllowList;

  final TfArg<String>? option;

  Map<String, Object?> encode() => {
    if (headersAllowList != null)
      'headers_allow_list': headersAllowList!.toTfJson(),
    if (option != null) 'option': option!.toTfJson(),
  };
}

/// Typed helper for the `cache_behavior_settings.forwarded_query_strings` block of
/// `aws_lightsail_distribution` (derived from provider schema).
@immutable
final class LightsailDistributionCacheBehaviorSettingsForwardedQueryStrings {
  const LightsailDistributionCacheBehaviorSettingsForwardedQueryStrings({
    this.option,
    this.queryStringsAllowedList,
  });

  final TfArg<bool>? option;

  final TfArg<List<Object?>>? queryStringsAllowedList;

  Map<String, Object?> encode() => {
    if (option != null) 'option': option!.toTfJson(),
    if (queryStringsAllowedList != null)
      'query_strings_allowed_list': queryStringsAllowedList!.toTfJson(),
  };
}

/// Typed helper for the `default_cache_behavior` block of
/// `aws_lightsail_distribution` (derived from provider schema).
@immutable
final class LightsailDistributionDefaultCacheBehavior {
  const LightsailDistributionDefaultCacheBehavior({required this.behavior});

  final TfArg<String> behavior;

  Map<String, Object?> encode() => {'behavior': behavior.toTfJson()};
}

/// Typed helper for the `origin` block of
/// `aws_lightsail_distribution` (derived from provider schema).
@immutable
final class LightsailDistributionOrigin {
  const LightsailDistributionOrigin({
    required this.name,
    this.protocolPolicy,
    required this.regionName,
  });

  final TfArg<String> name;

  final TfArg<String>? protocolPolicy;

  final TfArg<String> regionName;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (protocolPolicy != null) 'protocol_policy': protocolPolicy!.toTfJson(),
    'region_name': regionName.toTfJson(),
  };
}

/// Factory wrapper for `aws_lightsail_distribution`.
final class AwsLightsailDistribution extends Resource {
  static const String tfType = 'aws_lightsail_distribution';

  AwsLightsailDistribution({
    required super.localName,
    required TfArg<String> bundleId,
    TfArg<String>? certificateName,
    TfArg<String>? ipAddressType,
    TfArg<bool>? isEnabled,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<LightsailDistributionCacheBehavior>? cacheBehavior,
    LightsailDistributionCacheBehaviorSettings? cacheBehaviorSettings,
    required LightsailDistributionDefaultCacheBehavior defaultCacheBehavior,
    required LightsailDistributionOrigin origin,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bundle_id': bundleId,
           if (certificateName != null) 'certificate_name': certificateName,
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           if (isEnabled != null) 'is_enabled': isEnabled,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (cacheBehavior != null)
             'cache_behavior': TfArg.literal([
               for (final e in cacheBehavior) e.encode(),
             ]),
           if (cacheBehaviorSettings != null)
             'cache_behavior_settings': TfArg.literal(
               cacheBehaviorSettings.encode(),
             ),
           'default_cache_behavior': TfArg.literal(
             defaultCacheBehavior.encode(),
           ),
           'origin': TfArg.literal(origin.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailDistributionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alternative_domain_names` attribute.
  TfRef<List<String>> get alternativeDomainNames =>
      TfRef.attribute<List<String>>(this, 'alternative_domain_names');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `location` attribute.
  TfRef<List<Map<String, Object?>>> get location =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'location');

  /// Reference to `origin_public_dns` attribute.
  TfRef<String> get originPublicDns =>
      TfRef.attribute<String>(this, 'origin_public_dns');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `support_code` attribute.
  TfRef<String> get supportCode =>
      TfRef.attribute<String>(this, 'support_code');
}
