// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_subscription_iam_member`.
const Set<String> _googlePubsubSubscriptionIamMemberSensitive = <String>{};

/// Factory wrapper for `google_pubsub_subscription_iam_member`.
///
/// Pub/Sub Subscription IAM is part of the curated surface. (Cloud
/// Scheduler IAM is not; use `terradart codegen` if you need it.)
final class GooglePubsubSubscriptionIamMember extends Resource {
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
      _googlePubsubSubscriptionIamMemberSensitive;

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
