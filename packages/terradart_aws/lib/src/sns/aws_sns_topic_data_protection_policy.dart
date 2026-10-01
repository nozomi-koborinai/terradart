// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sns_topic_data_protection_policy`.
const Set<String> _awsSnsTopicDataProtectionPolicySensitive = <String>{};

/// Factory wrapper for `aws_sns_topic_data_protection_policy`.
final class AwsSnsTopicDataProtectionPolicy extends Resource {
  static const String tfType = 'aws_sns_topic_data_protection_policy';

  AwsSnsTopicDataProtectionPolicy({
    required super.localName,
    required TfArg<String> arn,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': arn, 'policy': policy, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsSnsTopicDataProtectionPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSnsTopicDataProtectionPolicy>`.
  RefTo<AwsSnsTopicDataProtectionPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
