// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sqs_queue_policy`.
const Set<String> _awsSqsQueuePolicySensitive = <String>{};

/// Factory wrapper for `aws_sqs_queue_policy`.
final class AwsSqsQueuePolicy extends Resource {
  static const String tfType = 'aws_sqs_queue_policy';

  AwsSqsQueuePolicy({
    required super.localName,
    required TfArg<String> policy,
    required TfArg<String> queueUrl,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy': policy,
           'queue_url': queueUrl,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSqsQueuePolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
