// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cloudwatch_log_destination`.
const Set<String> _awsCloudwatchLogDestinationSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_destination`.
final class AwsCloudwatchLogDestination extends Resource {
  static const String tfType = 'aws_cloudwatch_log_destination';

  AwsCloudwatchLogDestination({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'target_arn': targetArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogDestinationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogDestination>`.
  RefTo<AwsCloudwatchLogDestination> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_arn` attribute.
  TfRef<String> get targetArnRef => TfRef.attribute<String>(this, 'target_arn');
}
