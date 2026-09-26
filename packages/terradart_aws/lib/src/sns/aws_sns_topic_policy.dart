// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sns_topic_policy`.
const Set<String> _awsSnsTopicPolicySensitive = <String>{};

/// Factory wrapper for `aws_sns_topic_policy`.
final class AwsSnsTopicPolicy extends Resource {
  static const String tfType = 'aws_sns_topic_policy';

  AwsSnsTopicPolicy({
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
  Set<String> get sensitiveFields => _awsSnsTopicPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');
}
