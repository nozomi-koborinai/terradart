// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_pubsub_topic_iam_member.schema.dart'
    show $GooglePubsubTopicIamMember, googlePubsubTopicIamMemberSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline. `noSuchMethod` satisfies the abstract field
// getters; they are never invoked in v0.0.x.
class _GooglePubsubTopicIamMemberSchemaInstance
    implements $GooglePubsubTopicIamMember {
  const _GooglePubsubTopicIamMemberSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// Factory wrapper for `google_pubsub_topic_iam_member`.
///
/// Adds a single IAM `role` → `member` binding on a topic. For
/// multi-member binding semantics, prefer `google_pubsub_topic_iam_binding`
/// (not in v0.0.x's Tier 1 surface).
final class GooglePubsubTopicIamMember
    extends Resource<$GooglePubsubTopicIamMember> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_pubsub_topic_iam_member';

  GooglePubsubTopicIamMember({
    required super.localName,
    required TfArg<String> topic,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GooglePubsubTopicIamMemberSchemaInstance(),
         argMap: {
           'topic': topic,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googlePubsubTopicIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
