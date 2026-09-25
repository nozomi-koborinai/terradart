// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_group`.
const Set<String> _awsCloudwatchLogGroupSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_group`.
///
/// AWS **CloudWatch Logs log group**. Declare a Lambda function's group
/// (`/aws/lambda/<function name>`) yourself to control
/// `retentionInDays`; otherwise Lambda creates it on first invocation
/// with no expiry, outside Terraform.
final class AwsCloudwatchLogGroup extends Resource {
  static const String tfType = 'aws_cloudwatch_log_group';

  AwsCloudwatchLogGroup({
    required super.localName,
    TfArg<String>? name,
    TfArg<num>? retentionInDays,
    TfArg<String>? logGroupClass,
    TfArg<String>? kmsKeyId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (retentionInDays != null) 'retention_in_days': retentionInDays,
           if (logGroupClass != null) 'log_group_class': logGroupClass,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
