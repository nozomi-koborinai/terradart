// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_usage_plan`.
const Set<String> _awsApiGatewayUsagePlanSensitive = <String>{};

/// Typed helper for the `api_stages` block of
/// `aws_api_gateway_usage_plan` (derived from provider schema).
@immutable
final class ApiGatewayUsagePlanApiStages {
  const ApiGatewayUsagePlanApiStages({
    required this.apiId,
    required this.stage,
    this.throttle,
  });

  final TfArg<String> apiId;

  final TfArg<String> stage;

  final List<ApiGatewayUsagePlanThrottle>? throttle;

  Map<String, Object?> encode() => {
    'api_id': apiId.toTfJson(),
    'stage': stage.toTfJson(),
    if (throttle != null) 'throttle': [for (final e in throttle!) e.encode()],
  };
}

/// Typed helper for the `api_stages.throttle` block of
/// `aws_api_gateway_usage_plan` (derived from provider schema).
@immutable
final class ApiGatewayUsagePlanThrottle {
  const ApiGatewayUsagePlanThrottle({
    this.burstLimit,
    required this.path,
    this.rateLimit,
  });

  final TfArg<num>? burstLimit;

  final TfArg<String> path;

  final TfArg<num>? rateLimit;

  Map<String, Object?> encode() => {
    'burst_limit': ?burstLimit?.toTfJson(),
    'path': path.toTfJson(),
    'rate_limit': ?rateLimit?.toTfJson(),
  };
}

/// Typed helper for the `quota_settings` block of
/// `aws_api_gateway_usage_plan` (derived from provider schema).
@immutable
final class ApiGatewayUsagePlanQuotaSettings {
  const ApiGatewayUsagePlanQuotaSettings({
    required this.limit,
    this.offset,
    required this.period,
  });

  final TfArg<num> limit;

  final TfArg<num>? offset;

  final TfArg<ApiGatewayUsagePlanPeriod> period;

  Map<String, Object?> encode() => {
    'limit': limit.toTfJson(),
    'offset': ?offset?.toTfJson(),
    'period': period.toTfJson(),
  };
}

/// `period` — derived from the provider schema description.
enum ApiGatewayUsagePlanPeriod implements TerraformEnum {
  day('DAY'),
  week('WEEK'),
  month('MONTH');

  const ApiGatewayUsagePlanPeriod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `throttle_settings` block of
/// `aws_api_gateway_usage_plan` (derived from provider schema).
@immutable
final class ApiGatewayUsagePlanThrottleSettings {
  const ApiGatewayUsagePlanThrottleSettings({this.burstLimit, this.rateLimit});

  final TfArg<num>? burstLimit;

  final TfArg<num>? rateLimit;

  Map<String, Object?> encode() => {
    'burst_limit': ?burstLimit?.toTfJson(),
    'rate_limit': ?rateLimit?.toTfJson(),
  };
}

/// Factory wrapper for `aws_api_gateway_usage_plan`.
final class AwsApiGatewayUsagePlan extends Resource {
  static const String tfType = 'aws_api_gateway_usage_plan';

  AwsApiGatewayUsagePlan(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? productCode,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<ApiGatewayUsagePlanApiStages>? apiStages,
    ApiGatewayUsagePlanQuotaSettings? quotaSettings,
    ApiGatewayUsagePlanThrottleSettings? throttleSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'product_code': ?productCode,
           'region': ?region,
           'tags': ?tags,
           if (apiStages != null)
             'api_stages': TfArg.literal([
               for (final e in apiStages) e.encode(),
             ]),
           if (quotaSettings != null)
             'quota_settings': TfArg.literal(quotaSettings.encode()),
           if (throttleSettings != null)
             'throttle_settings': TfArg.literal(throttleSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayUsagePlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayUsagePlan>`.
  RefTo<AwsApiGatewayUsagePlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `product_code` attribute.
  TfRef<String> get productCode =>
      TfRef.attribute<String>(this, 'product_code');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
