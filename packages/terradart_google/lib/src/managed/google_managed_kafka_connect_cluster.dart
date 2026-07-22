// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_managed_kafka_connect_cluster`.
const Set<String> _googleManagedKafkaConnectClusterSensitive = <String>{};

/// Typed helper for the `capacity_config` block of
/// `google_managed_kafka_connect_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaConnectClusterCapacityConfig {
  const ManagedKafkaConnectClusterCapacityConfig({
    required this.memoryBytes,
    required this.vcpuCount,
  });

  final TfArg<String> memoryBytes;

  final TfArg<String> vcpuCount;

  Map<String, Object?> encode() => {
    'memory_bytes': memoryBytes.toTfJson(),
    'vcpu_count': vcpuCount.toTfJson(),
  };
}

/// Typed helper for the `gcp_config` block of
/// `google_managed_kafka_connect_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaConnectClusterGcpConfig {
  const ManagedKafkaConnectClusterGcpConfig({required this.accessConfig});

  final ManagedKafkaConnectClusterGcpConfigAccessConfig accessConfig;

  Map<String, Object?> encode() => {'access_config': accessConfig.encode()};
}

/// Typed helper for the `gcp_config.access_config` block of
/// `google_managed_kafka_connect_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaConnectClusterGcpConfigAccessConfig {
  const ManagedKafkaConnectClusterGcpConfigAccessConfig({
    required this.networkConfigs,
  });

  final List<ManagedKafkaConnectClusterGcpConfigAccessConfigNetworkConfigs>
  networkConfigs;

  Map<String, Object?> encode() => {
    'network_configs': [for (final e in networkConfigs) e.encode()],
  };
}

/// Typed helper for the `gcp_config.access_config.network_configs` block of
/// `google_managed_kafka_connect_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaConnectClusterGcpConfigAccessConfigNetworkConfigs {
  const ManagedKafkaConnectClusterGcpConfigAccessConfigNetworkConfigs({
    this.additionalSubnets,
    this.dnsDomainNames,
    required this.primarySubnet,
  });

  final TfArg<List<Object?>>? additionalSubnets;

  final TfArg<List<Object?>>? dnsDomainNames;

  final TfArg<String> primarySubnet;

  Map<String, Object?> encode() => {
    if (additionalSubnets != null)
      'additional_subnets': additionalSubnets!.toTfJson(),
    if (dnsDomainNames != null) 'dns_domain_names': dnsDomainNames!.toTfJson(),
    'primary_subnet': primarySubnet.toTfJson(),
  };
}

/// Factory wrapper for `google_managed_kafka_connect_cluster`.
///
/// A Managed Service for Kafka Connect cluster.
///
/// Managed **Kafka Connect** cluster attached to a Kafka cluster.
///
/// **Cost:** Cloud Billing Catalog bills **Managed Kafka Connect Data
/// Compute Units** (us-central1 SKU `12FB-6837-84CF` **$0.12/h**) while
/// the Connect cluster exists. Destroy stops compute charges. Too
/// expensive for apply-smoke — factories ship without a quickstart.
///
/// Requires [capacityConfig] and [gcpConfig] (primary subnet). Enable
/// `managedkafka.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleManagedKafkaConnectCluster(
///   localName: 'connect',
///   connectClusterId: TfArg.literal('terradart-connect'),
///   kafkaCluster: TfArg.ref(cluster.nameRef),
///   location: TfArg.literal('us-central1'),
///   capacityConfig: ManagedKafkaConnectClusterCapacityConfig(
///     vcpuCount: TfArg.literal(3),
///     memoryBytes: TfArg.literal(3221225472),
///   ),
///   gcpConfig: ManagedKafkaConnectClusterGcpConfig(
///     accessConfig: ManagedKafkaConnectClusterGcpConfigAccessConfig(
///       networkConfigs: [
///         ManagedKafkaConnectClusterGcpConfigAccessConfigNetworkConfigs(
///           primarySubnet: TfArg.ref(subnet.id),
///         ),
///       ],
///     ),
///   ),
/// );
/// ```
final class GoogleManagedKafkaConnectCluster extends Resource {
  static const String tfType = 'google_managed_kafka_connect_cluster';

  GoogleManagedKafkaConnectCluster({
    required super.localName,
    required TfArg<String> connectClusterId,
    required TfArg<String> kafkaCluster,
    required TfArg<String> location,
    required ManagedKafkaConnectClusterCapacityConfig capacityConfig,
    required ManagedKafkaConnectClusterGcpConfig gcpConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connect_cluster_id': connectClusterId,
           'kafka_cluster': kafkaCluster,
           'location': location,
           'capacity_config': TfArg.literal(capacityConfig.encode()),
           'gcp_config': TfArg.literal(gcpConfig.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleManagedKafkaConnectClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `connect_cluster_id` attribute.
  TfRef<String> get connectClusterIdRef =>
      TfRef.attribute<String>(this, 'connect_cluster_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
