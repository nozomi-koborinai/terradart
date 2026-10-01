// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_pull_time_update_exclusion`.
const Set<String> _awsEcrPullTimeUpdateExclusionSensitive = <String>{};

/// Factory wrapper for `aws_ecr_pull_time_update_exclusion`.
final class AwsEcrPullTimeUpdateExclusion extends Resource {
  static const String tfType = 'aws_ecr_pull_time_update_exclusion';

  AwsEcrPullTimeUpdateExclusion({
    required super.localName,
    required TfArg<String> principalArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'principal_arn': principalArn, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsEcrPullTimeUpdateExclusionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcrPullTimeUpdateExclusion>`.
  RefTo<AwsEcrPullTimeUpdateExclusion> get ref => RefTo.of(this);

  /// Reference to `principal_arn` attribute.
  TfRef<String> get principalArn =>
      TfRef.attribute<String>(this, 'principal_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
