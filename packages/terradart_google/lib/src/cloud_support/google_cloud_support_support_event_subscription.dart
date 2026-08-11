// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_support_support_event_subscription`.
const Set<String> _googleCloudSupportSupportEventSubscriptionSensitive =
    <String>{};

/// Factory wrapper for `google_cloud_support_support_event_subscription`.
///
/// A support event subscription for receiving notifications from Cloud Support
/// API.
///
/// Cloud Support **event subscription** — publishes support-case events
/// from an organization to a Pub/Sub topic.
///
/// Requires a real [organization] ID (org-scoped; not creatable inside
/// `terradart-validate`).
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (`list_services` name=Cloud Support → no service;
/// Support `2062-016F-44A2` `list_skus` keyword=event → 0).
/// billing-behavior: subscription metadata only — Cloud Support plan
/// fees are separate org entitlements. Org-only; ships via
/// `tool/example_debt.yaml`.
final class GoogleCloudSupportSupportEventSubscription extends Resource {
  static const String tfType =
      'google_cloud_support_support_event_subscription';

  GoogleCloudSupportSupportEventSubscription({
    required super.localName,
    required TfArg<String> organization,
    required TfArg<String> pubSubTopic,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'organization': organization,
           'pub_sub_topic': pubSubTopic,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudSupportSupportEventSubscriptionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `purge_time` attribute.
  TfRef<String> get purgeTime => TfRef.attribute<String>(this, 'purge_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
