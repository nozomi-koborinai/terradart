// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_groups`.
const Set<String> _awsCloudwatchLogGroupsSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_groups`.
final class DataAwsCloudwatchLogGroups extends Data {
  static const String tfType = 'aws_cloudwatch_log_groups';

  DataAwsCloudwatchLogGroups({
    required super.localName,
    TfArg<String>? logGroupNamePrefix,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (logGroupNamePrefix != null)
             'log_group_name_prefix': logGroupNamePrefix,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogGroupsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');

  /// Reference to `log_group_names` attribute.
  TfRef<List<String>> get logGroupNames =>
      TfRef.attribute<List<String>>(this, 'log_group_names');
}
