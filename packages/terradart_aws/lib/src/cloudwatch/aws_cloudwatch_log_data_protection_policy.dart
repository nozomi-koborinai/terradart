// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;

/// Sensitive field paths for `aws_cloudwatch_log_data_protection_policy`.
const Set<String> _awsCloudwatchLogDataProtectionPolicySensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_data_protection_policy`.
final class AwsCloudwatchLogDataProtectionPolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_log_data_protection_policy';

  AwsCloudwatchLogDataProtectionPolicy({
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
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogDataProtectionPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogDataProtectionPolicy>`.
  RefTo<AwsCloudwatchLogDataProtectionPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `log_group_name` attribute.
  TfRef<String> get logGroupNameRef =>
      TfRef.attribute<String>(this, 'log_group_name');

  /// Reference to `policy_document` attribute.
  TfRef<String> get policyDocumentRef =>
      TfRef.attribute<String>(this, 'policy_document');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
