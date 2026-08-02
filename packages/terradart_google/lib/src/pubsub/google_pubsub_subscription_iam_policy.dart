// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_subscription_iam_policy`.
const Set<String> _googlePubsubSubscriptionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_pubsub_subscription_iam_policy`.
///
/// Authoritative IAM policy for a Pub/Sub subscription.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GooglePubsubSubscriptionIamMember] for single-principal grants.
final class GooglePubsubSubscriptionIamPolicy extends Resource {
  static const String tfType = 'google_pubsub_subscription_iam_policy';

  GooglePubsubSubscriptionIamPolicy({
    required super.localName,
    required TfArg<String> subscription,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'subscription': subscription,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePubsubSubscriptionIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
