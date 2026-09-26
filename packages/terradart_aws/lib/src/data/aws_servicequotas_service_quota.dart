// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicequotas_service_quota`.
const Set<String> _awsServicequotasServiceQuotaSensitive = <String>{};

/// Factory wrapper for `aws_servicequotas_service_quota`.
final class DataAwsServicequotasServiceQuota extends Data {
  static const String tfType = 'aws_servicequotas_service_quota';

  DataAwsServicequotasServiceQuota({
    required super.localName,
    TfArg<String>? quotaCode,
    TfArg<String>? quotaName,
    TfArg<String>? region,
    required TfArg<String> serviceCode,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (quotaCode != null) 'quota_code': quotaCode,
           if (quotaName != null) 'quota_name': quotaName,
           if (region != null) 'region': region,
           'service_code': serviceCode,
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

  /// Reference to `global_quota` attribute.
  TfRef<bool> get globalQuota => TfRef.attribute<bool>(this, 'global_quota');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `usage_metric` attribute.
  TfRef<List<Map<String, Object?>>> get usageMetric =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'usage_metric');

  /// Reference to `value` attribute.
  TfRef<num> get value => TfRef.attribute<num>(this, 'value');
}
