// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_logging_options`.
const Set<String> _awsIotLoggingOptionsSensitive = <String>{};

/// Factory wrapper for `aws_iot_logging_options`.
final class AwsIotLoggingOptions extends Resource {
  static const String tfType = 'aws_iot_logging_options';

  AwsIotLoggingOptions({
    required super.localName,
    required TfArg<String> defaultLogLevel,
    TfArg<bool>? disableAllLogs,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_log_level': defaultLogLevel,
           if (disableAllLogs != null) 'disable_all_logs': disableAllLogs,
           if (region != null) 'region': region,
           'role_arn': roleArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotLoggingOptionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
