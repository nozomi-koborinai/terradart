// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;

/// Sensitive field paths for `aws_cloudwatch_log_index_policy`.
const Set<String> _awsCloudwatchLogIndexPolicySensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_index_policy`.
final class AwsCloudwatchLogIndexPolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_log_index_policy';

  AwsCloudwatchLogIndexPolicy({
    required super.localName,
    required RefTo<AwsCloudwatchLogGroup> logGroupName,
    required TfArg<String> policyDocument,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_group_name': logGroupName.encodeAs('name'),
           'policy_document': policyDocument,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogIndexPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogIndexPolicy>`.
  RefTo<AwsCloudwatchLogIndexPolicy> get ref => RefTo.of(this);

  /// Reference to `log_group_name` attribute.
  TfRef<String> get logGroupName =>
      TfRef.attribute<String>(this, 'log_group_name');

  /// Reference to `policy_document` attribute.
  TfRef<String> get policyDocument =>
      TfRef.attribute<String>(this, 'policy_document');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
