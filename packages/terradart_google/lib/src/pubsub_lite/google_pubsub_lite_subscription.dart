// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub_lite/google_pubsub_lite_topic.dart'
    show GooglePubsubLiteTopic;

/// Sensitive field paths for `google_pubsub_lite_subscription`.
const Set<String> _googlePubsubLiteSubscriptionSensitive = <String>{};

/// Typed helper for the `delivery_config` block of
/// `google_pubsub_lite_subscription` (derived from provider schema).
@immutable
final class PubsubLiteSubscriptionDeliveryConfig {
  const PubsubLiteSubscriptionDeliveryConfig({
    required this.deliveryRequirement,
  });

  final TfArg<PubsubLiteSubscriptionDeliveryRequirement> deliveryRequirement;

  Map<String, Object?> encode() => {
    'delivery_requirement': deliveryRequirement.toTfJson(),
  };
}

/// `delivery_requirement` — derived from the provider schema description.
enum PubsubLiteSubscriptionDeliveryRequirement implements TerraformEnum {
  deliverImmediately('DELIVER_IMMEDIATELY'),
  deliverAfterStored('DELIVER_AFTER_STORED'),
  deliveryRequirementUnspecified('DELIVERY_REQUIREMENT_UNSPECIFIED');

  const PubsubLiteSubscriptionDeliveryRequirement(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_pubsub_lite_subscription`.
///
/// A named resource representing the stream of messages from a single, specific
/// topic, to be delivered to the subscribing application.
///
/// Pub/Sub Lite **subscription** on a [GooglePubsubLiteTopic].
///
/// **Cost / apply:** subscriber throughput bills under Pub/Sub Lite
/// `3A1B-66C4-2BAE` (North America SKU `DB2E-0351-AE15` **$0.003125/MiBy·h**)
/// while capacity is allocated; parent topic/reservation are never_apply.
/// Debt-only on `terradart-validate`. **Never** wire into apply-smoke.
final class GooglePubsubLiteSubscription extends Resource {
  static const String tfType = 'google_pubsub_lite_subscription';

  GooglePubsubLiteSubscription({
    required super.localName,
    required TfArg<String> name,
    required RefTo<GooglePubsubLiteTopic> topic,
    TfArg<String>? region,
    TfArg<String>? zone,
    PubsubLiteSubscriptionDeliveryConfig? deliveryConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'topic': topic.encodeAs('name'),
           'region': ?region,
           'zone': ?zone,
           if (deliveryConfig != null)
             'delivery_config': TfArg.literal(deliveryConfig.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubLiteSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePubsubLiteSubscription>`.
  RefTo<GooglePubsubLiteSubscription> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `topic` attribute.
  TfRef<String> get topic => TfRef.attribute<String>(this, 'topic');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
