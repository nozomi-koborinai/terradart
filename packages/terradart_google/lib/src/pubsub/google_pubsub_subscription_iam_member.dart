// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_subscription.dart'
    show GooglePubsubSubscription;

/// Sensitive field paths for `google_pubsub_subscription_iam_member`.
const Set<String> _googlePubsubSubscriptionIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_pubsub_subscription_iam_member` (derived from provider schema).
@immutable
final class PubsubSubscriptionIamMemberCondition {
  const PubsubSubscriptionIamMemberCondition({
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

/// Factory wrapper for `google_pubsub_subscription_iam_member`.
///
/// Pub/Sub Subscription IAM is part of the curated surface. (Cloud
/// Scheduler IAM is not in the curated surface -- open an issue to request
/// curation.)
final class GooglePubsubSubscriptionIamMember extends Resource {
  static const String tfType = 'google_pubsub_subscription_iam_member';

  GooglePubsubSubscriptionIamMember({
    required super.localName,
    required RefTo<GooglePubsubSubscription> subscription,
    required TfArg<String> role,
    required TfArg<String> member,
    PubsubSubscriptionIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'subscription': subscription.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? subscription.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePubsubSubscriptionIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePubsubSubscriptionIamMember>`.
  RefTo<GooglePubsubSubscriptionIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `subscription` attribute.
  TfRef<String> get subscriptionRef =>
      TfRef.attribute<String>(this, 'subscription');
}
