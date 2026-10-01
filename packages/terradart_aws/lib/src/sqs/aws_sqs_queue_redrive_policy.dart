// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sqs_queue_redrive_policy`.
const Set<String> _awsSqsQueueRedrivePolicySensitive = <String>{};

/// Factory wrapper for `aws_sqs_queue_redrive_policy`.
final class AwsSqsQueueRedrivePolicy extends Resource {
  static const String tfType = 'aws_sqs_queue_redrive_policy';

  AwsSqsQueueRedrivePolicy(
    super.localName, {
    required TfArg<String> queueUrl,
    required TfArg<String> redrivePolicy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'queue_url': queueUrl,
           'redrive_policy': redrivePolicy,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSqsQueueRedrivePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSqsQueueRedrivePolicy>`.
  RefTo<AwsSqsQueueRedrivePolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `queue_url` attribute.
  TfRef<String> get queueUrl => TfRef.attribute<String>(this, 'queue_url');

  /// Reference to `redrive_policy` attribute.
  TfRef<String> get redrivePolicy =>
      TfRef.attribute<String>(this, 'redrive_policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
