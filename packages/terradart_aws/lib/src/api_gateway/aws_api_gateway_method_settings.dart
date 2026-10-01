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
final class ApiGatewayMethodSettings {
  const ApiGatewayMethodSettings({
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

  final ApiGatewayMethodSettingsLoggingLevel? loggingLevel;

  final TfArg<bool>? metricsEnabled;

  final TfArg<bool>? requireAuthorizationForCacheControl;

  final TfArg<num>? throttlingBurstLimit;

  final TfArg<num>? throttlingRateLimit;

  final ApiGatewayMethodSettingsUnauthorizedCacheControlHeaderStrategy?
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
extension type const ApiGatewayMethodSettingsLoggingLevel._(TfArg<String> _)
    implements TfArg<String> {
  ApiGatewayMethodSettingsLoggingLevel.variable(String name)
    : this._(TfArg.variable(name));
  ApiGatewayMethodSettingsLoggingLevel.expression(String template)
    : this._(TfArg.expression(template));
  const ApiGatewayMethodSettingsLoggingLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const off = ApiGatewayMethodSettingsLoggingLevel._(
    TfArgLiteral('OFF'),
  );
  static const error = ApiGatewayMethodSettingsLoggingLevel._(
    TfArgLiteral('ERROR'),
  );
  static const info = ApiGatewayMethodSettingsLoggingLevel._(
    TfArgLiteral('INFO'),
  );

  static const List<ApiGatewayMethodSettingsLoggingLevel> values = [
    off,
    error,
    info,
  ];
}

/// `unauthorized_cache_control_header_strategy` — derived from the provider schema description.
extension type const ApiGatewayMethodSettingsUnauthorizedCacheControlHeaderStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  ApiGatewayMethodSettingsUnauthorizedCacheControlHeaderStrategy.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ApiGatewayMethodSettingsUnauthorizedCacheControlHeaderStrategy.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ApiGatewayMethodSettingsUnauthorizedCacheControlHeaderStrategy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const failWith403 =
      ApiGatewayMethodSettingsUnauthorizedCacheControlHeaderStrategy._(
        TfArgLiteral('FAIL_WITH_403'),
      );
  static const succeedWithResponseHeader =
      ApiGatewayMethodSettingsUnauthorizedCacheControlHeaderStrategy._(
        TfArgLiteral('SUCCEED_WITH_RESPONSE_HEADER'),
      );
  static const succeedWithoutResponseHeader =
      ApiGatewayMethodSettingsUnauthorizedCacheControlHeaderStrategy._(
        TfArgLiteral('SUCCEED_WITHOUT_RESPONSE_HEADER'),
      );

  static const List<
    ApiGatewayMethodSettingsUnauthorizedCacheControlHeaderStrategy
  >
  values = [
    failWith403,
    succeedWithResponseHeader,
    succeedWithoutResponseHeader,
  ];
}

/// Factory wrapper for `aws_api_gateway_method_settings`.
final class AwsApiGatewayMethodSettings extends Resource {
  static const String tfType = 'aws_api_gateway_method_settings';

  AwsApiGatewayMethodSettings(
    super.localName, {
    required TfArg<String> methodPath,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    required TfArg<String> stageName,
    required ApiGatewayMethodSettings settings,
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
  TfRef<String> get methodPath => TfRef.attribute<String>(this, 'method_path');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiId => TfRef.attribute<String>(this, 'rest_api_id');

  /// Reference to `stage_name` attribute.
  TfRef<String> get stageName => TfRef.attribute<String>(this, 'stage_name');
}
