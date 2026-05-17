// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_topic_iam_member`.
const Set<String> _googlePubsubTopicIamMemberSensitive = <String>{};

/// Factory wrapper for `google_pubsub_topic_iam_member`.
///
/// Adds a single IAM `role` → `member` binding on a topic. For
/// multi-member binding semantics, prefer `google_pubsub_topic_iam_binding`
/// (available via `terradart codegen` until it lands as a curated factory).
final class GooglePubsubTopicIamMember extends Resource {
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
  Set<String> get $sensitiveFields => _googlePubsubTopicIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
