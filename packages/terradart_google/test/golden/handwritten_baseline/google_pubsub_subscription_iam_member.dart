// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_pubsub_subscription_iam_member.schema.dart'
    show
        $GooglePubsubSubscriptionIamMember,
        googlePubsubSubscriptionIamMemberSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline. `noSuchMethod` satisfies the abstract field
// getters; they are never invoked in v0.0.x.
class _GooglePubsubSubscriptionIamMemberSchemaInstance
    implements $GooglePubsubSubscriptionIamMember {
  const _GooglePubsubSubscriptionIamMemberSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// Factory wrapper for `google_pubsub_subscription_iam_member`.
///
/// Pub/Sub Subscription IAM is in Tier 1 scope. (Cloud Scheduler IAM is
/// not.)
final class GooglePubsubSubscriptionIamMember
    extends Resource<$GooglePubsubSubscriptionIamMember> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_pubsub_subscription_iam_member';

  GooglePubsubSubscriptionIamMember({
    required super.localName,
    required TfArg<String> subscription,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GooglePubsubSubscriptionIamMemberSchemaInstance(),
         argMap: {
           'subscription': subscription,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      googlePubsubSubscriptionIamMemberSensitive;

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
