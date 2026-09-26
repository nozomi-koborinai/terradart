// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicequotas_template`.
const Set<String> _awsServicequotasTemplateSensitive = <String>{};

/// Factory wrapper for `aws_servicequotas_template`.
final class AwsServicequotasTemplate extends Resource {
  static const String tfType = 'aws_servicequotas_template';

  AwsServicequotasTemplate({
    required super.localName,
    TfArg<String>? awsRegion,
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
           if (awsRegion != null) 'aws_region': awsRegion,
           'quota_code': quotaCode,
           if (region != null) 'region': region,
           'service_code': serviceCode,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicequotasTemplateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `global_quota` attribute.
  TfRef<bool> get globalQuota => TfRef.attribute<bool>(this, 'global_quota');

  /// Reference to `quota_name` attribute.
  TfRef<String> get quotaName => TfRef.attribute<String>(this, 'quota_name');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `unit` attribute.
  TfRef<String> get unit => TfRef.attribute<String>(this, 'unit');
}
