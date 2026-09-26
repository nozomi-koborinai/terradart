// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_retention_configuration`.
const Set<String> _awsConfigRetentionConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_config_retention_configuration`.
final class AwsConfigRetentionConfiguration extends Resource {
  static const String tfType = 'aws_config_retention_configuration';

  AwsConfigRetentionConfiguration({
    required super.localName,
    TfArg<String>? region,
    required TfArg<num> retentionPeriodInDays,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'retention_period_in_days': retentionPeriodInDays,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigRetentionConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
