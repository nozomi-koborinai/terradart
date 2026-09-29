// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_subscription_iam_member`.
const Set<String> _googlePubsubSubscriptionIamMemberSensitive = <String>{};

/// Factory wrapper for `google_pubsub_subscription_iam_member`.
///
/// Pub/Sub Subscription IAM is part of the curated surface. (Cloud
/// Scheduler IAM is not in the curated surface -- open an issue to request
/// curation.)
final class GooglePubsubSubscriptionIamMember extends Resource {
  static const String tfType = 'google_pubsub_subscription_iam_member';

  GooglePubsubSubscriptionIamMember({
    required super.localName,
    required TfArg<String> subscription,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'subscription': subscription,
           'role': role,
           'member': member,
           'condition': ?condition,
           'project': ?project,
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
}
