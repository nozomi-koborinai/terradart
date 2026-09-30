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
///   localName: 'events',
///   topicId: TfArg.literal('events'),
///   cluster: TfArg.ref(cluster.clusterIdRef),
///   location: TfArg.literal('us-central1'),
///   replicationFactor: TfArg.literal(3),
///   partitionCount: TfArg.literal(3),
/// );
/// ```
final class GoogleManagedKafkaTopic extends Resource {
  static const String tfType = 'google_managed_kafka_topic';

  GoogleManagedKafkaTopic({
    required super.localName,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster` attribute.
  TfRef<String> get clusterRef => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `configs` attribute.
  TfRef<Map<String, String>> get configsRef =>
      TfRef.attribute<Map<String, String>>(this, 'configs');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `partition_count` attribute.
  TfRef<num> get partitionCountRef =>
      TfRef.attribute<num>(this, 'partition_count');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `replication_factor` attribute.
  TfRef<num> get replicationFactorRef =>
      TfRef.attribute<num>(this, 'replication_factor');

  /// Reference to `topic_id` attribute.
  TfRef<String> get topicIdRef => TfRef.attribute<String>(this, 'topic_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
