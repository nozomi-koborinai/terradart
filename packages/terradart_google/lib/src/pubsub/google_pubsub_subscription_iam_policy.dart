// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_subscription.dart'
    show GooglePubsubSubscription;

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
    required RefTo<GooglePubsubSubscription> subscription,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'subscription': subscription.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? subscription.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePubsubSubscriptionIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePubsubSubscriptionIamPolicy>`.
  RefTo<GooglePubsubSubscriptionIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `subscription` attribute.
  TfRef<String> get subscription =>
      TfRef.attribute<String>(this, 'subscription');
}
