// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_lite_topic`.
const Set<String> _googlePubsubLiteTopicSensitive = <String>{};

/// Typed helper for the `partition_config` block of
/// `google_pubsub_lite_topic` (derived from provider schema).
@immutable
final class PubsubLiteTopicPartitionConfig {
  const PubsubLiteTopicPartitionConfig({required this.count, this.capacity});

  final TfArg<num> count;

  final PubsubLiteTopicPartitionConfigCapacity? capacity;

  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    if (capacity != null) 'capacity': capacity!.encode(),
  };
}

/// Typed helper for the `partition_config.capacity` block of
/// `google_pubsub_lite_topic` (derived from provider schema).
@immutable
final class PubsubLiteTopicPartitionConfigCapacity {
  const PubsubLiteTopicPartitionConfigCapacity({
    required this.publishMibPerSec,
    required this.subscribeMibPerSec,
  });

  final TfArg<num> publishMibPerSec;

  final TfArg<num> subscribeMibPerSec;

  Map<String, Object?> encode() => {
    'publish_mib_per_sec': publishMibPerSec.toTfJson(),
    'subscribe_mib_per_sec': subscribeMibPerSec.toTfJson(),
  };
}

/// Typed helper for the `reservation_config` block of
/// `google_pubsub_lite_topic` (derived from provider schema).
@immutable
final class PubsubLiteTopicReservationConfig {
  const PubsubLiteTopicReservationConfig({this.throughputReservation});

  final TfArg<String>? throughputReservation;

  Map<String, Object?> encode() => {
    if (throughputReservation != null)
      'throughput_reservation': throughputReservation!.toTfJson(),
  };
}

/// Typed helper for the `retention_config` block of
/// `google_pubsub_lite_topic` (derived from provider schema).
@immutable
final class PubsubLiteTopicRetentionConfig {
  const PubsubLiteTopicRetentionConfig({
    required this.perPartitionBytes,
    this.period,
  });

  final TfArg<String> perPartitionBytes;

  final TfArg<String>? period;

  Map<String, Object?> encode() => {
    'per_partition_bytes': perPartitionBytes.toTfJson(),
    if (period != null) 'period': period!.toTfJson(),
  };
}

/// Factory wrapper for `google_pubsub_lite_topic`.
///
/// A named resource to which messages are sent by publishers.
///
/// Pub/Sub Lite **topic** — partitioned topic that draws capacity from a
/// [GooglePubsubLiteReservation] (or topic-level publish/subscribe units).
///
/// **Cost / apply:** Pub/Sub Lite `3A1B-66C4-2BAE` Publisher Throughput
/// Capacity Allocated North America SKU `CE6F-6EC1-8463` **$0.00625/MiBy·h**
/// (+ Subscriber `DB2E-0351-AE15` **$0.003125/MiBy·h**, Storage
/// `13A4-C375-427E` **$0.04/GiBy·mo**) while capacity is allocated; usually
/// paired with a never_apply reservation. Debt-only on `terradart-validate`.
/// **Never** wire into apply-smoke.
final class GooglePubsubLiteTopic extends Resource {
  static const String tfType = 'google_pubsub_lite_topic';

  GooglePubsubLiteTopic({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? zone,
    PubsubLiteTopicPartitionConfig? partitionConfig,
    PubsubLiteTopicRetentionConfig? retentionConfig,
    PubsubLiteTopicReservationConfig? reservationConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (zone != null) 'zone': zone,
           if (partitionConfig != null)
             'partition_config': TfArg.literal(partitionConfig.encode()),
           if (retentionConfig != null)
             'retention_config': TfArg.literal(retentionConfig.encode()),
           if (reservationConfig != null)
             'reservation_config': TfArg.literal(reservationConfig.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubLiteTopicSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
