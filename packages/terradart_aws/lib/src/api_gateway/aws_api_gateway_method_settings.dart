// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_method_settings`.
const Set<String> _awsApiGatewayMethodSettingsSensitive = <String>{};

/// Typed helper for the `settings` block of
/// `aws_api_gateway_method_settings` (derived from provider schema).
@immutable
final class ApiGatewayMethodSettingsSettings {
  const ApiGatewayMethodSettingsSettings({
    this.cacheDataEncrypted,
    this.cacheTtlInSeconds,
    this.cachingEnabled,
    this.dataTraceEnabled,
    this.loggingLevel,
    this.metricsEnabled,
    this.requireAuthorizationForCacheControl,
    this.throttlingBurstLimit,
    this.throttlingRateLimit,
    this.unauthorizedCacheControlHeaderStrategy,
  });

  final TfArg<bool>? cacheDataEncrypted;

  final TfArg<num>? cacheTtlInSeconds;

  final TfArg<bool>? cachingEnabled;

  final TfArg<bool>? dataTraceEnabled;

  final TfArg<String>? loggingLevel;

  final TfArg<bool>? metricsEnabled;

  final TfArg<bool>? requireAuthorizationForCacheControl;

  final TfArg<num>? throttlingBurstLimit;

  final TfArg<num>? throttlingRateLimit;

  final TfArg<String>? unauthorizedCacheControlHeaderStrategy;

  Map<String, Object?> encode() => {
    if (cacheDataEncrypted != null)
      'cache_data_encrypted': cacheDataEncrypted!.toTfJson(),
    if (cacheTtlInSeconds != null)
      'cache_ttl_in_seconds': cacheTtlInSeconds!.toTfJson(),
    if (cachingEnabled != null) 'caching_enabled': cachingEnabled!.toTfJson(),
    if (dataTraceEnabled != null)
      'data_trace_enabled': dataTraceEnabled!.toTfJson(),
    if (loggingLevel != null) 'logging_level': loggingLevel!.toTfJson(),
    if (metricsEnabled != null) 'metrics_enabled': metricsEnabled!.toTfJson(),
    if (requireAuthorizationForCacheControl != null)
      'require_authorization_for_cache_control':
          requireAuthorizationForCacheControl!.toTfJson(),
    if (throttlingBurstLimit != null)
      'throttling_burst_limit': throttlingBurstLimit!.toTfJson(),
    if (throttlingRateLimit != null)
      'throttling_rate_limit': throttlingRateLimit!.toTfJson(),
    if (unauthorizedCacheControlHeaderStrategy != null)
      'unauthorized_cache_control_header_strategy':
          unauthorizedCacheControlHeaderStrategy!.toTfJson(),
  };
}

/// Factory wrapper for `aws_api_gateway_method_settings`.
final class AwsApiGatewayMethodSettings extends Resource {
  static const String tfType = 'aws_api_gateway_method_settings';

  AwsApiGatewayMethodSettings({
    required super.localName,
    required TfArg<String> methodPath,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    required TfArg<String> stageName,
    required ApiGatewayMethodSettingsSettings settings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'method_path': methodPath,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
           'stage_name': stageName,
           'settings': TfArg.literal(settings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayMethodSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
