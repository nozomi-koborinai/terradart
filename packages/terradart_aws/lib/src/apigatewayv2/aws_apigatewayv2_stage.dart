// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_stage`.
const Set<String> _awsApigatewayv2StageSensitive = <String>{};

/// Typed helper for the `access_log_settings` block of
/// `aws_apigatewayv2_stage` (derived from provider schema).
@immutable
final class Apigatewayv2StageAccessLogSettings {
  const Apigatewayv2StageAccessLogSettings({
    required this.destinationArn,
    required this.format,
  });

  final TfArg<String> destinationArn;

  final TfArg<String> format;

  Map<String, Object?> encode() => {
    'destination_arn': destinationArn.toTfJson(),
    'format': format.toTfJson(),
  };
}

/// Typed helper for the `default_route_settings` block of
/// `aws_apigatewayv2_stage` (derived from provider schema).
@immutable
final class Apigatewayv2StageDefaultRouteSettings {
  const Apigatewayv2StageDefaultRouteSettings({
    this.dataTraceEnabled,
    this.detailedMetricsEnabled,
    this.loggingLevel,
    this.throttlingBurstLimit,
    this.throttlingRateLimit,
  });

  final TfArg<bool>? dataTraceEnabled;

  final TfArg<bool>? detailedMetricsEnabled;

  final TfArg<Apigatewayv2StageDefaultRouteSettingsLoggingLevel>? loggingLevel;

  final TfArg<num>? throttlingBurstLimit;

  final TfArg<num>? throttlingRateLimit;

  Map<String, Object?> encode() => {
    'data_trace_enabled': ?dataTraceEnabled?.toTfJson(),
    'detailed_metrics_enabled': ?detailedMetricsEnabled?.toTfJson(),
    'logging_level': ?loggingLevel?.toTfJson(),
    'throttling_burst_limit': ?throttlingBurstLimit?.toTfJson(),
    'throttling_rate_limit': ?throttlingRateLimit?.toTfJson(),
  };
}

/// `logging_level` — derived from the provider schema description.
enum Apigatewayv2StageDefaultRouteSettingsLoggingLevel
    implements TerraformEnum {
  error('ERROR'),
  info('INFO'),
  off('OFF');

  const Apigatewayv2StageDefaultRouteSettingsLoggingLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `route_settings` block of
/// `aws_apigatewayv2_stage` (derived from provider schema).
@immutable
final class Apigatewayv2StageRouteSettings {
  const Apigatewayv2StageRouteSettings({
    this.dataTraceEnabled,
    this.detailedMetricsEnabled,
    this.loggingLevel,
    required this.routeKey,
    this.throttlingBurstLimit,
    this.throttlingRateLimit,
  });

  final TfArg<bool>? dataTraceEnabled;

  final TfArg<bool>? detailedMetricsEnabled;

  final TfArg<Apigatewayv2StageRouteSettingsLoggingLevel>? loggingLevel;

  final TfArg<String> routeKey;

  final TfArg<num>? throttlingBurstLimit;

  final TfArg<num>? throttlingRateLimit;

  Map<String, Object?> encode() => {
    'data_trace_enabled': ?dataTraceEnabled?.toTfJson(),
    'detailed_metrics_enabled': ?detailedMetricsEnabled?.toTfJson(),
    'logging_level': ?loggingLevel?.toTfJson(),
    'route_key': routeKey.toTfJson(),
    'throttling_burst_limit': ?throttlingBurstLimit?.toTfJson(),
    'throttling_rate_limit': ?throttlingRateLimit?.toTfJson(),
  };
}

/// `logging_level` — derived from the provider schema description.
enum Apigatewayv2StageRouteSettingsLoggingLevel implements TerraformEnum {
  error('ERROR'),
  info('INFO'),
  off('OFF');

  const Apigatewayv2StageRouteSettingsLoggingLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_apigatewayv2_stage`.
final class AwsApigatewayv2Stage extends Resource {
  static const String tfType = 'aws_apigatewayv2_stage';

  AwsApigatewayv2Stage({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<bool>? autoDeploy,
    TfArg<String>? clientCertificateId,
    TfArg<String>? deploymentId,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? stageVariables,
    TfArg<Map<String, String>>? tags,
    Apigatewayv2StageAccessLogSettings? accessLogSettings,
    Apigatewayv2StageDefaultRouteSettings? defaultRouteSettings,
    List<Apigatewayv2StageRouteSettings>? routeSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           'auto_deploy': ?autoDeploy,
           'client_certificate_id': ?clientCertificateId,
           'deployment_id': ?deploymentId,
           'description': ?description,
           'name': name,
           'region': ?region,
           'stage_variables': ?stageVariables,
           'tags': ?tags,
           if (accessLogSettings != null)
             'access_log_settings': TfArg.literal(accessLogSettings.encode()),
           if (defaultRouteSettings != null)
             'default_route_settings': TfArg.literal(
               defaultRouteSettings.encode(),
             ),
           if (routeSettings != null)
             'route_settings': TfArg.literal([
               for (final e in routeSettings) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2StageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2Stage>`.
  RefTo<AwsApigatewayv2Stage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `execution_arn` attribute.
  TfRef<String> get executionArn =>
      TfRef.attribute<String>(this, 'execution_arn');

  /// Reference to `invoke_url` attribute.
  TfRef<String> get invokeUrl => TfRef.attribute<String>(this, 'invoke_url');
}
