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

  @internal
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

  final Apigatewayv2StageLoggingLevel? loggingLevel;

  final TfArg<num>? throttlingBurstLimit;

  final TfArg<num>? throttlingRateLimit;

  @internal
  Map<String, Object?> encode() => {
    'data_trace_enabled': ?dataTraceEnabled?.toTfJson(),
    'detailed_metrics_enabled': ?detailedMetricsEnabled?.toTfJson(),
    'logging_level': ?loggingLevel?.toTfJson(),
    'throttling_burst_limit': ?throttlingBurstLimit?.toTfJson(),
    'throttling_rate_limit': ?throttlingRateLimit?.toTfJson(),
  };
}

/// `logging_level` — derived from the provider schema description.
extension type const Apigatewayv2StageLoggingLevel._(TfArg<String> _)
    implements TfArg<String> {
  Apigatewayv2StageLoggingLevel.variable(String name)
    : this._(TfArg.variable(name));
  Apigatewayv2StageLoggingLevel.expression(String template)
    : this._(TfArg.expression(template));
  const Apigatewayv2StageLoggingLevel.arg(TfArg<String> arg) : this._(arg);

  static const error = Apigatewayv2StageLoggingLevel._(TfArgLiteral('ERROR'));
  static const info = Apigatewayv2StageLoggingLevel._(TfArgLiteral('INFO'));
  static const off = Apigatewayv2StageLoggingLevel._(TfArgLiteral('OFF'));

  static const List<Apigatewayv2StageLoggingLevel> values = [error, info, off];
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

  final Apigatewayv2StageLoggingLevel? loggingLevel;

  final TfArg<String> routeKey;

  final TfArg<num>? throttlingBurstLimit;

  final TfArg<num>? throttlingRateLimit;

  @internal
  Map<String, Object?> encode() => {
    'data_trace_enabled': ?dataTraceEnabled?.toTfJson(),
    'detailed_metrics_enabled': ?detailedMetricsEnabled?.toTfJson(),
    'logging_level': ?loggingLevel?.toTfJson(),
    'route_key': routeKey.toTfJson(),
    'throttling_burst_limit': ?throttlingBurstLimit?.toTfJson(),
    'throttling_rate_limit': ?throttlingRateLimit?.toTfJson(),
  };
}

/// Factory wrapper for `aws_apigatewayv2_stage`.
final class AwsApigatewayv2Stage extends Resource {
  static const String tfType = 'aws_apigatewayv2_stage';

  AwsApigatewayv2Stage(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `execution_arn` attribute.
  TfRef<String> get executionArn =>
      TfRef.attribute<String>(this, 'execution_arn');

  /// Reference to `invoke_url` attribute.
  TfRef<String> get invokeUrl => TfRef.attribute<String>(this, 'invoke_url');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `auto_deploy` attribute.
  TfRef<bool> get autoDeploy => TfRef.attribute<bool>(this, 'auto_deploy');

  /// Reference to `client_certificate_id` attribute.
  TfRef<String> get clientCertificateId =>
      TfRef.attribute<String>(this, 'client_certificate_id');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `stage_variables` attribute.
  TfRef<Map<String, String>> get stageVariables =>
      TfRef.attribute<Map<String, String>>(this, 'stage_variables');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
