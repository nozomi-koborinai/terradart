// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_subscription_iam_binding`.
const Set<String> _googlePubsubSubscriptionIamBindingSensitive = <String>{};

/// Factory wrapper for `google_pubsub_subscription_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Pub/Sub subscription.
///
/// Replaces the entire member list for that role. Prefer
/// [GooglePubsubSubscriptionIamMember] for additive grants.
final class GooglePubsubSubscriptionIamBinding extends Resource {
  static const String tfType = 'google_pubsub_subscription_iam_binding';

  GooglePubsubSubscriptionIamBinding({
    required super.localName,
    required TfArg<String> subscription,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'subscription': subscription,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePubsubSubscriptionIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
