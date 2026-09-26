// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sqs_queue_redrive_allow_policy`.
const Set<String> _awsSqsQueueRedriveAllowPolicySensitive = <String>{};

/// Factory wrapper for `aws_sqs_queue_redrive_allow_policy`.
final class AwsSqsQueueRedriveAllowPolicy extends Resource {
  static const String tfType = 'aws_sqs_queue_redrive_allow_policy';

  AwsSqsQueueRedriveAllowPolicy({
    required super.localName,
    required TfArg<String> queueUrl,
    required TfArg<String> redriveAllowPolicy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'queue_url': queueUrl,
           'redrive_allow_policy': redriveAllowPolicy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSqsQueueRedriveAllowPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
