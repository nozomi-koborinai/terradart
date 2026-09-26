// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicequotas_service_quota`.
const Set<String> _awsServicequotasServiceQuotaSensitive = <String>{};

/// Factory wrapper for `aws_servicequotas_service_quota`.
final class AwsServicequotasServiceQuota extends Resource {
  static const String tfType = 'aws_servicequotas_service_quota';

  AwsServicequotasServiceQuota({
    required super.localName,
    required TfArg<String> quotaCode,
    TfArg<String>? region,
    required TfArg<String> serviceCode,
    required TfArg<num> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'quota_code': quotaCode,
           if (region != null) 'region': region,
           'service_code': serviceCode,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicequotasServiceQuotaSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `adjustable` attribute.
  TfRef<bool> get adjustable => TfRef.attribute<bool>(this, 'adjustable');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_value` attribute.
  TfRef<num> get defaultValue => TfRef.attribute<num>(this, 'default_value');

  /// Reference to `quota_name` attribute.
  TfRef<String> get quotaName => TfRef.attribute<String>(this, 'quota_name');

  /// Reference to `request_id` attribute.
  TfRef<String> get requestId => TfRef.attribute<String>(this, 'request_id');

  /// Reference to `request_status` attribute.
  TfRef<String> get requestStatus =>
      TfRef.attribute<String>(this, 'request_status');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `usage_metric` attribute.
  TfRef<List<Map<String, Object?>>> get usageMetric =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'usage_metric');
}
