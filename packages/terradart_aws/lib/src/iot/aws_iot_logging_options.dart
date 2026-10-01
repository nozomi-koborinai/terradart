// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_iot_logging_options`.
const Set<String> _awsIotLoggingOptionsSensitive = <String>{};

/// Iot Logging Options Default Log enum for `default_log_level`.
extension type const IotLoggingOptionsDefaultLogLevel._(TfArg<String> _)
    implements TfArg<String> {
  IotLoggingOptionsDefaultLogLevel.variable(String name)
    : this._(TfArg.variable(name));
  IotLoggingOptionsDefaultLogLevel.expression(String template)
    : this._(TfArg.expression(template));
  const IotLoggingOptionsDefaultLogLevel.arg(TfArg<String> arg) : this._(arg);

  static const debug = IotLoggingOptionsDefaultLogLevel._(
    TfArgLiteral('DEBUG'),
  );
  static const info = IotLoggingOptionsDefaultLogLevel._(TfArgLiteral('INFO'));
  static const error = IotLoggingOptionsDefaultLogLevel._(
    TfArgLiteral('ERROR'),
  );
  static const warn = IotLoggingOptionsDefaultLogLevel._(TfArgLiteral('WARN'));
  static const disabled = IotLoggingOptionsDefaultLogLevel._(
    TfArgLiteral('DISABLED'),
  );

  static const List<IotLoggingOptionsDefaultLogLevel> values = [
    debug,
    info,
    error,
    warn,
    disabled,
  ];
}

/// Factory wrapper for `aws_iot_logging_options`.
final class AwsIotLoggingOptions extends Resource {
  static const String tfType = 'aws_iot_logging_options';

  AwsIotLoggingOptions(
    super.localName, {
    required IotLoggingOptionsDefaultLogLevel defaultLogLevel,
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
  TfRef<String> get defaultLogLevel =>
      TfRef.attribute<String>(this, 'default_log_level');

  /// Reference to `disable_all_logs` attribute.
  TfRef<bool> get disableAllLogs =>
      TfRef.attribute<bool>(this, 'disable_all_logs');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');
}
