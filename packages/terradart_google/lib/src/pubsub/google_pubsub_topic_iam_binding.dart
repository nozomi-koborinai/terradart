// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_pubsub_topic_iam_binding`.
const Set<String> _googlePubsubTopicIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_pubsub_topic_iam_binding` (derived from provider schema).
@immutable
final class PubsubTopicIamBindingCondition {
  const PubsubTopicIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_pubsub_topic_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Pub/Sub topic.
///
/// Replaces the entire member list for that role. Prefer
/// [GooglePubsubTopicIamMember] for additive grants.
final class GooglePubsubTopicIamBinding extends Resource {
  static const String tfType = 'google_pubsub_topic_iam_binding';

  GooglePubsubTopicIamBinding({
    required super.localName,
    required RefTo<GooglePubsubTopic> topic,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    PubsubTopicIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'topic': topic.encodeAs('id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubTopicIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePubsubTopicIamBinding>`.
  RefTo<GooglePubsubTopicIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
