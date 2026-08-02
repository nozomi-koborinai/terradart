// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_topic_iam_policy`.
const Set<String> _googlePubsubTopicIamPolicySensitive = <String>{};

/// Factory wrapper for `google_pubsub_topic_iam_policy`.
///
/// Authoritative IAM policy for a Pub/Sub topic.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GooglePubsubTopicIamMember] for single-principal grants.
final class GooglePubsubTopicIamPolicy extends Resource {
  static const String tfType = 'google_pubsub_topic_iam_policy';

  GooglePubsubTopicIamPolicy({
    required super.localName,
    required TfArg<String> topic,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'topic': topic,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubTopicIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
