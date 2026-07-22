// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_managed_kafka_connector`.
const Set<String> _googleManagedKafkaConnectorSensitive = <String>{};

/// Typed helper for the `task_restart_policy` block of
/// `google_managed_kafka_connector` (derived from provider schema).
@immutable
final class ManagedKafkaConnectorTaskRestartPolicy {
  const ManagedKafkaConnectorTaskRestartPolicy({
    this.maximumBackoff,
    this.minimumBackoff,
  });

  final TfArg<String>? maximumBackoff;

  final TfArg<String>? minimumBackoff;

  Map<String, Object?> encode() => {
    if (maximumBackoff != null) 'maximum_backoff': maximumBackoff!.toTfJson(),
    if (minimumBackoff != null) 'minimum_backoff': minimumBackoff!.toTfJson(),
  };
}

/// Factory wrapper for `google_managed_kafka_connector`.
///
/// A Managed Service for Kafka Connect Connectors.
///
/// Kafka Connect **connector** on a [GoogleManagedKafkaConnectCluster].
///
/// **Cost:** no separate Cloud Billing Catalog SKU — connector config on
/// the parent Connect cluster (Connect DCU bills). Deferred with Connect
/// (no apply-smoke quickstart).
///
/// Example:
/// ```dart
/// GoogleManagedKafkaConnector(
///   localName: 'sink',
///   connectorId: TfArg.literal('gcs-sink'),
///   connectCluster: TfArg.ref(connect.connectClusterIdRef),
///   location: TfArg.literal('us-central1'),
///   configs: {
///     'connector.class': TfArg.literal('com.example.SinkConnector'),
///     'tasks.max': TfArg.literal('1'),
///   },
/// );
/// ```
final class GoogleManagedKafkaConnector extends Resource {
  static const String tfType = 'google_managed_kafka_connector';

  GoogleManagedKafkaConnector({
    required super.localName,
    required TfArg<String> connectorId,
    required TfArg<String> connectCluster,
    required TfArg<String> location,
    TfArg<Map<String, String>>? configs,
    ManagedKafkaConnectorTaskRestartPolicy? taskRestartPolicy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connector_id': connectorId,
           'connect_cluster': connectCluster,
           'location': location,
           if (configs != null) 'configs': configs,
           if (taskRestartPolicy != null)
             'task_restart_policy': TfArg.literal(taskRestartPolicy.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleManagedKafkaConnectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `connector_id` attribute.
  TfRef<String> get connectorIdRef =>
      TfRef.attribute<String>(this, 'connector_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
