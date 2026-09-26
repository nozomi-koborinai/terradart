// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_storage_tier_policy`.
const Set<String> _awsCloudwatchLogStorageTierPolicySensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_storage_tier_policy`.
///
/// Manages a CloudWatch Logs account-level storage tier policy. When set to
/// `INTELLIGENT_TIERING`, CloudWatch Logs automatically moves log data to the
/// most cost-effective storage tier based on access frequency.
final class AwsCloudwatchLogStorageTierPolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_log_storage_tier_policy';

  AwsCloudwatchLogStorageTierPolicy({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> storageTier,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'storage_tier': storageTier,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogStorageTierPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
