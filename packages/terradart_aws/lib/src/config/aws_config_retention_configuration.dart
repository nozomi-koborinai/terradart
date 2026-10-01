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
           'region': ?region,
           'retention_period_in_days': retentionPeriodInDays,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigRetentionConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigRetentionConfiguration>`.
  RefTo<AwsConfigRetentionConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `retention_period_in_days` attribute.
  TfRef<num> get retentionPeriodInDays =>
      TfRef.attribute<num>(this, 'retention_period_in_days');
}
