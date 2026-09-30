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

  final TfArg<ApiGatewayMethodSettingsSettingsLoggingLevel>? loggingLevel;

  final TfArg<bool>? metricsEnabled;

  final TfArg<bool>? requireAuthorizationForCacheControl;

  final TfArg<num>? throttlingBurstLimit;

  final TfArg<num>? throttlingRateLimit;

  final TfArg<
    ApiGatewayMethodSettingsSettingsUnauthorizedCacheControlHeaderStrategy
  >?
  unauthorizedCacheControlHeaderStrategy;

  Map<String, Object?> encode() => {
    'cache_data_encrypted': ?cacheDataEncrypted?.toTfJson(),
    'cache_ttl_in_seconds': ?cacheTtlInSeconds?.toTfJson(),
    'caching_enabled': ?cachingEnabled?.toTfJson(),
    'data_trace_enabled': ?dataTraceEnabled?.toTfJson(),
    'logging_level': ?loggingLevel?.toTfJson(),
    'metrics_enabled': ?metricsEnabled?.toTfJson(),
    'require_authorization_for_cache_control':
        ?requireAuthorizationForCacheControl?.toTfJson(),
    'throttling_burst_limit': ?throttlingBurstLimit?.toTfJson(),
    'throttling_rate_limit': ?throttlingRateLimit?.toTfJson(),
    'unauthorized_cache_control_header_strategy':
        ?unauthorizedCacheControlHeaderStrategy?.toTfJson(),
  };
}

/// `logging_level` — derived from the provider schema description.
enum ApiGatewayMethodSettingsSettingsLoggingLevel implements TerraformEnum {
  off('OFF'),
  error('ERROR'),
  info('INFO');

  const ApiGatewayMethodSettingsSettingsLoggingLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `unauthorized_cache_control_header_strategy` — derived from the provider schema description.
enum ApiGatewayMethodSettingsSettingsUnauthorizedCacheControlHeaderStrategy
    implements TerraformEnum {
  failWith403('FAIL_WITH_403'),
  succeedWithResponseHeader('SUCCEED_WITH_RESPONSE_HEADER'),
  succeedWithoutResponseHeader('SUCCEED_WITHOUT_RESPONSE_HEADER');

  const ApiGatewayMethodSettingsSettingsUnauthorizedCacheControlHeaderStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
           'region': ?region,
           'rest_api_id': restApiId,
           'stage_name': stageName,
           'settings': TfArg.literal(settings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayMethodSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayMethodSettings>`.
  RefTo<AwsApiGatewayMethodSettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `method_path` attribute.
  TfRef<String> get methodPathRef =>
      TfRef.attribute<String>(this, 'method_path');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiIdRef =>
      TfRef.attribute<String>(this, 'rest_api_id');

  /// Reference to `stage_name` attribute.
  TfRef<String> get stageNameRef => TfRef.attribute<String>(this, 'stage_name');
}
