// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_managed_kafka_cluster`.
const Set<String> _googleManagedKafkaClusterSensitive = <String>{};

/// Typed helper for the `broker_capacity_config` block of
/// `google_managed_kafka_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaClusterBrokerCapacityConfig {
  const ManagedKafkaClusterBrokerCapacityConfig({this.diskSizeGib});

  final TfArg<String>? diskSizeGib;

  Map<String, Object?> encode() => {'disk_size_gib': ?diskSizeGib?.toTfJson()};
}

/// Typed helper for the `capacity_config` block of
/// `google_managed_kafka_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaClusterCapacityConfig {
  const ManagedKafkaClusterCapacityConfig({
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
/// `google_managed_kafka_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaClusterGcpConfig {
  const ManagedKafkaClusterGcpConfig({this.kmsKey, required this.accessConfig});

  final RefTo<GoogleKmsCryptoKey>? kmsKey;

  final ManagedKafkaClusterGcpConfigAccessConfig accessConfig;

  Map<String, Object?> encode() => {
    'kms_key': ?kmsKey?.encodeAs('id').toTfJson(),
    'access_config': accessConfig.encode(),
  };
}

/// Typed helper for the `gcp_config.access_config` block of
/// `google_managed_kafka_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaClusterGcpConfigAccessConfig {
  const ManagedKafkaClusterGcpConfigAccessConfig({
    required this.networkConfigs,
    this.publicClusterConfig,
  });

  final List<ManagedKafkaClusterGcpConfigAccessConfigNetworkConfigs>
  networkConfigs;

  final ManagedKafkaClusterGcpConfigAccessConfigPublicClusterConfig?
  publicClusterConfig;

  Map<String, Object?> encode() => {
    'network_configs': [for (final e in networkConfigs) e.encode()],
    'public_cluster_config': ?publicClusterConfig?.encode(),
  };
}

/// Typed helper for the `gcp_config.access_config.network_configs` block of
/// `google_managed_kafka_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaClusterGcpConfigAccessConfigNetworkConfigs {
  const ManagedKafkaClusterGcpConfigAccessConfigNetworkConfigs({
    required this.subnet,
  });

  final RefTo<GoogleComputeSubnetwork> subnet;

  Map<String, Object?> encode() => {'subnet': subnet.encodeAs('id').toTfJson()};
}

/// Typed helper for the `gcp_config.access_config.public_cluster_config` block of
/// `google_managed_kafka_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaClusterGcpConfigAccessConfigPublicClusterConfig {
  const ManagedKafkaClusterGcpConfigAccessConfigPublicClusterConfig({
    required this.allowedSourceIpRanges,
  });

  final TfArg<List<Object?>> allowedSourceIpRanges;

  Map<String, Object?> encode() => {
    'allowed_source_ip_ranges': allowedSourceIpRanges.toTfJson(),
  };
}

/// Typed helper for the `rebalance_config` block of
/// `google_managed_kafka_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaClusterRebalanceConfig {
  const ManagedKafkaClusterRebalanceConfig({this.mode});

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {'mode': ?mode?.toTfJson()};
}

/// Typed helper for the `tls_config` block of
/// `google_managed_kafka_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaClusterTlsConfig {
  const ManagedKafkaClusterTlsConfig({
    this.sslPrincipalMappingRules,
    this.trustConfig,
  });

  final TfArg<String>? sslPrincipalMappingRules;

  final ManagedKafkaClusterTlsConfigTrustConfig? trustConfig;

  Map<String, Object?> encode() => {
    'ssl_principal_mapping_rules': ?sslPrincipalMappingRules?.toTfJson(),
    'trust_config': ?trustConfig?.encode(),
  };
}

/// Typed helper for the `tls_config.trust_config` block of
/// `google_managed_kafka_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaClusterTlsConfigTrustConfig {
  const ManagedKafkaClusterTlsConfigTrustConfig({this.casConfigs});

  final List<ManagedKafkaClusterTlsConfigTrustConfigCasConfigs>? casConfigs;

  Map<String, Object?> encode() => {
    if (casConfigs != null)
      'cas_configs': [for (final e in casConfigs!) e.encode()],
  };
}

/// Typed helper for the `tls_config.trust_config.cas_configs` block of
/// `google_managed_kafka_cluster` (derived from provider schema).
@immutable
final class ManagedKafkaClusterTlsConfigTrustConfigCasConfigs {
  const ManagedKafkaClusterTlsConfigTrustConfigCasConfigs({
    required this.caPool,
  });

  final TfArg<String> caPool;

  Map<String, Object?> encode() => {'ca_pool': caPool.toTfJson()};
}

/// Factory wrapper for `google_managed_kafka_cluster`.
///
/// A Managed Service for Apache Kafka cluster. Apache Kafka is a trademark
/// owned by the Apache Software Foundation.
///
/// Managed Service for Apache Kafka **cluster** — regional Kafka with
/// provisioned vCPU / memory (Data Compute Units).
///
/// **Cost:** Cloud Billing Catalog service `9544-7B1C-811D` bills **Data
/// Compute Units** (us-central1 SKU `2837-8C0C-F431` **$0.09/h**) plus
/// local storage (SKU `1533-0F96-68AD` **$0.17/GiBy·mo**) while the
/// cluster exists. Destroy stops compute charges. Too expensive for
/// apply-smoke — factories ship without a quickstart.
///
/// Requires [capacityConfig] (vCPU + memory) and [gcpConfig] (VPC subnet
/// under `access_config.network_configs`). Enable
/// `managedkafka.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleManagedKafkaCluster(
///   localName: 'mk',
///   clusterId: TfArg.literal('terradart-mk'),
///   location: TfArg.literal('us-central1'),
///   capacityConfig: ManagedKafkaClusterCapacityConfig(
///     vcpuCount: TfArg.literal(3),
///     memoryBytes: TfArg.literal(3221225472), // 3 GiB
///   ),
///   gcpConfig: ManagedKafkaClusterGcpConfig(
///     accessConfig: ManagedKafkaClusterGcpConfigAccessConfig(
///       networkConfigs: [
///         ManagedKafkaClusterGcpConfigAccessConfigNetworkConfigs(
///           subnet: TfArg.ref(subnet.id),
///         ),
///       ],
///     ),
///   ),
/// );
/// ```
final class GoogleManagedKafkaCluster extends Resource {
  static const String tfType = 'google_managed_kafka_cluster';

  GoogleManagedKafkaCluster({
    required super.localName,
    required TfArg<String> clusterId,
    required TfArg<String> location,
    required ManagedKafkaClusterCapacityConfig capacityConfig,
    required ManagedKafkaClusterGcpConfig gcpConfig,
    TfArg<Map<String, String>>? labels,
    ManagedKafkaClusterBrokerCapacityConfig? brokerCapacityConfig,
    ManagedKafkaClusterRebalanceConfig? rebalanceConfig,
    ManagedKafkaClusterTlsConfig? tlsConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           'location': location,
           'capacity_config': TfArg.literal(capacityConfig.encode()),
           'gcp_config': TfArg.literal(gcpConfig.encode()),
           'labels': ?labels,
           if (brokerCapacityConfig != null)
             'broker_capacity_config': TfArg.literal(
               brokerCapacityConfig.encode(),
             ),
           if (rebalanceConfig != null)
             'rebalance_config': TfArg.literal(rebalanceConfig.encode()),
           if (tlsConfig != null)
             'tls_config': TfArg.literal(tlsConfig.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleManagedKafkaClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleManagedKafkaCluster>`.
  RefTo<GoogleManagedKafkaCluster> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bootstrap_address` attribute.
  TfRef<String> get bootstrapAddress =>
      TfRef.attribute<String>(this, 'bootstrap_address');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `public_cluster_details` attribute.
  TfRef<List<Map<String, Object?>>> get publicClusterDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'public_cluster_details',
      );

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterIdRef => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
