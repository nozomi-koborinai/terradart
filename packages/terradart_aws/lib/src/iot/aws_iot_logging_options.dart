// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_iot_logging_options`.
const Set<String> _awsIotLoggingOptionsSensitive = <String>{};

/// Iot Logging Options Default Log enum for `default_log_level`.
enum IotLoggingOptionsDefaultLogLevel implements TerraformEnum {
  debug('DEBUG'),
  info('INFO'),
  error('ERROR'),
  warn('WARN'),
  disabled('DISABLED');

  const IotLoggingOptionsDefaultLogLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_iot_logging_options`.
final class AwsIotLoggingOptions extends Resource {
  static const String tfType = 'aws_iot_logging_options';

  AwsIotLoggingOptions({
    required super.localName,
    required TfArg<IotLoggingOptionsDefaultLogLevel> defaultLogLevel,
    TfArg<bool>? disableAllLogs,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_log_level': defaultLogLevel,
           'disable_all_logs': ?disableAllLogs,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotLoggingOptionsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotLoggingOptions>`.
  RefTo<AwsIotLoggingOptions> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_log_level` attribute.
  TfRef<String> get defaultLogLevelRef =>
      TfRef.attribute<String>(this, 'default_log_level');

  /// Reference to `disable_all_logs` attribute.
  TfRef<bool> get disableAllLogsRef =>
      TfRef.attribute<bool>(this, 'disable_all_logs');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');
}
