// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;

/// Sensitive field paths for `aws_cloudwatch_log_stream`.
const Set<String> _awsCloudwatchLogStreamSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_stream`.
final class AwsCloudwatchLogStream extends Resource {
  static const String tfType = 'aws_cloudwatch_log_stream';

  AwsCloudwatchLogStream({
    required super.localName,
    required RefTo<AwsCloudwatchLogGroup> logGroupName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_group_name': logGroupName.encodeAs('name'),
           'name': name,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogStream>`.
  RefTo<AwsCloudwatchLogStream> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
