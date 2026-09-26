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
         argMap: {
           'arn': arn,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSnsTopicDataProtectionPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
