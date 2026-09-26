// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_stage`.
const Set<String> _awsApiGatewayStageSensitive = <String>{};

/// Typed helper for the `access_log_settings` block of
/// `aws_api_gateway_stage` (derived from provider schema).
@immutable
final class ApiGatewayStageAccessLogSettings {
  const ApiGatewayStageAccessLogSettings({
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

/// Typed helper for the `canary_settings` block of
/// `aws_api_gateway_stage` (derived from provider schema).
@immutable
final class ApiGatewayStageCanarySettings {
  const ApiGatewayStageCanarySettings({
    required this.deploymentId,
    this.percentTraffic,
    this.stageVariableOverrides,
    this.useStageCache,
  });

  final TfArg<String> deploymentId;

  final TfArg<num>? percentTraffic;

  final TfArg<Map<String, String>>? stageVariableOverrides;

  final TfArg<bool>? useStageCache;

  Map<String, Object?> encode() => {
    'deployment_id': deploymentId.toTfJson(),
    if (percentTraffic != null) 'percent_traffic': percentTraffic!.toTfJson(),
    if (stageVariableOverrides != null)
      'stage_variable_overrides': stageVariableOverrides!.toTfJson(),
    if (useStageCache != null) 'use_stage_cache': useStageCache!.toTfJson(),
  };
}

/// Factory wrapper for `aws_api_gateway_stage`.
final class AwsApiGatewayStage extends Resource {
  static const String tfType = 'aws_api_gateway_stage';

  AwsApiGatewayStage({
    required super.localName,
    TfArg<bool>? cacheClusterEnabled,
    TfArg<String>? cacheClusterSize,
    TfArg<String>? clientCertificateId,
    required TfArg<String> deploymentId,
    TfArg<String>? description,
    TfArg<String>? documentationVersion,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    required TfArg<String> stageName,
    TfArg<Map<String, String>>? tags,
    TfArg<Map<String, String>>? variables,
    TfArg<bool>? xrayTracingEnabled,
    ApiGatewayStageAccessLogSettings? accessLogSettings,
    ApiGatewayStageCanarySettings? canarySettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cacheClusterEnabled != null)
             'cache_cluster_enabled': cacheClusterEnabled,
           if (cacheClusterSize != null) 'cache_cluster_size': cacheClusterSize,
           if (clientCertificateId != null)
             'client_certificate_id': clientCertificateId,
           'deployment_id': deploymentId,
           if (description != null) 'description': description,
           if (documentationVersion != null)
             'documentation_version': documentationVersion,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
           'stage_name': stageName,
           if (tags != null) 'tags': tags,
           if (variables != null) 'variables': variables,
           if (xrayTracingEnabled != null)
             'xray_tracing_enabled': xrayTracingEnabled,
           if (accessLogSettings != null)
             'access_log_settings': TfArg.literal(accessLogSettings.encode()),
           if (canarySettings != null)
             'canary_settings': TfArg.literal(canarySettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayStageSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `execution_arn` attribute.
  TfRef<String> get executionArn =>
      TfRef.attribute<String>(this, 'execution_arn');

  /// Reference to `invoke_url` attribute.
  TfRef<String> get invokeUrl => TfRef.attribute<String>(this, 'invoke_url');

  /// Reference to `web_acl_arn` attribute.
  TfRef<String> get webAclArn => TfRef.attribute<String>(this, 'web_acl_arn');
}
