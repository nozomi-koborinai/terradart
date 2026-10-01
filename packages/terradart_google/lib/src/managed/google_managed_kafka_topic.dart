// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_managed_kafka_topic`.
const Set<String> _googleManagedKafkaTopicSensitive = <String>{};

/// Factory wrapper for `google_managed_kafka_topic`.
///
/// A Managed Service for Apache Kafka topic. Apache Kafka is a trademark owned
/// by the Apache Software Foundation.
///
/// Kafka **topic** on a [GoogleManagedKafkaCluster].
///
/// **Cost:** no separate Cloud Billing Catalog SKU under Managed Service
/// for Apache Kafka (`9544-7B1C-811D`) — topics are metadata on the parent
/// cluster (cluster compute/storage bills). Deferred with the cluster
/// (no apply-smoke quickstart).
///
/// Example:
/// ```dart
/// GoogleManagedKafkaTopic(
///   'events',
///   topicId: TfArg.literal('events'),
///   cluster: cluster.clusterId,
///   location: TfArg.literal('us-central1'),
///   replicationFactor: TfArg.literal(3),
///   partitionCount: TfArg.literal(3),
/// );
/// ```
final class GoogleManagedKafkaTopic extends Resource {
  static const String tfType = 'google_managed_kafka_topic';

  GoogleManagedKafkaTopic(
    super.localName, {
    required TfArg<String> topicId,
    required TfArg<String> cluster,
    required TfArg<String> location,
    required TfArg<num> replicationFactor,
    TfArg<num>? partitionCount,
    TfArg<Map<String, String>>? configs,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'topic_id': topicId,
           'cluster': cluster,
           'location': location,
           'replication_factor': replicationFactor,
           'partition_count': ?partitionCount,
           'configs': ?configs,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleManagedKafkaTopicSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleManagedKafkaTopic>`.
  RefTo<GoogleManagedKafkaTopic> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `configs` attribute.
  TfRef<Map<String, String>> get configs =>
      TfRef.attribute<Map<String, String>>(this, 'configs');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `partition_count` attribute.
  TfRef<num> get partitionCount =>
      TfRef.attribute<num>(this, 'partition_count');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `replication_factor` attribute.
  TfRef<num> get replicationFactor =>
      TfRef.attribute<num>(this, 'replication_factor');

  /// Reference to `topic_id` attribute.
  TfRef<String> get topicId => TfRef.attribute<String>(this, 'topic_id');
}
