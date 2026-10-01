// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

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
    required RefTo<GooglePubsubTopic> topic,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'topic': topic.encodeAs('id'),
           'policy_data': policyData,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubTopicIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePubsubTopicIamPolicy>`.
  RefTo<GooglePubsubTopicIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `topic` attribute.
  TfRef<String> get topic => TfRef.attribute<String>(this, 'topic');
}
