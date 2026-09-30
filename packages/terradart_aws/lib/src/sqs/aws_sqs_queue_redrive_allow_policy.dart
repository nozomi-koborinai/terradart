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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSqsQueueRedriveAllowPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSqsQueueRedriveAllowPolicy>`.
  RefTo<AwsSqsQueueRedriveAllowPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `queue_url` attribute.
  TfRef<String> get queueUrlRef => TfRef.attribute<String>(this, 'queue_url');

  /// Reference to `redrive_allow_policy` attribute.
  TfRef<String> get redriveAllowPolicyRef =>
      TfRef.attribute<String>(this, 'redrive_allow_policy');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
