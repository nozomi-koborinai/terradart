// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../alloydb/google_alloydb_cluster.dart' show GoogleAlloydbCluster;
import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_alloydb_instance`.
const Set<String> _googleAlloydbInstanceSensitive = <String>{};

/// `instance_type` — primary, read pool, or secondary.
enum AlloydbInstanceType implements TerraformEnum {
  primary('PRIMARY'),
  readPool('READ_POOL'),
  secondary('SECONDARY');

  const AlloydbInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `client_connection_config` block of
/// `google_alloydb_instance` (derived from provider schema).
@immutable
final class AlloydbInstanceClientConnectionConfig {
  const AlloydbInstanceClientConnectionConfig({
    this.requireConnectors,
    this.sslConfig,
  });

  final TfArg<bool>? requireConnectors;

  final AlloydbInstanceSslConfig? sslConfig;

  Map<String, Object?> encode() => {
    'require_connectors': ?requireConnectors?.toTfJson(),
    'ssl_config': ?sslConfig?.encode(),
  };
}

/// Typed helper for the `client_connection_config.ssl_config` block of
/// `google_alloydb_instance` (derived from provider schema).
@immutable
final class AlloydbInstanceSslConfig {
  const AlloydbInstanceSslConfig({this.sslMode});

  final TfArg<AlloydbInstanceSslMode>? sslMode;

  Map<String, Object?> encode() => {'ssl_mode': ?sslMode?.toTfJson()};
}

/// `ssl_mode` — derived from the provider schema description.
enum AlloydbInstanceSslMode implements TerraformEnum {
  encryptedOnly('ENCRYPTED_ONLY'),
  allowUnencryptedAndEncrypted('ALLOW_UNENCRYPTED_AND_ENCRYPTED');

  const AlloydbInstanceSslMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `connection_pool_config` block of
/// `google_alloydb_instance` (derived from provider schema).
@immutable
final class AlloydbInstanceConnectionPoolConfig {
  const AlloydbInstanceConnectionPoolConfig({
    required this.enabled,
    this.flags,
  });

  final TfArg<bool> enabled;

  final TfArg<Map<String, String>>? flags;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'flags': ?flags?.toTfJson(),
  };
}

/// Typed helper for the `machine_config` block of
/// `google_alloydb_instance` (derived from provider schema).
@immutable
final class AlloydbInstanceMachineConfig {
  const AlloydbInstanceMachineConfig({this.cpuCount, this.machineType});

  final TfArg<num>? cpuCount;

  final TfArg<String>? machineType;

  Map<String, Object?> encode() => {
    'cpu_count': ?cpuCount?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
  };
}

/// Typed helper for the `network_config` block of
/// `google_alloydb_instance` (derived from provider schema).
@immutable
final class AlloydbInstanceNetworkConfig {
  const AlloydbInstanceNetworkConfig({
    this.allocatedIpRangeOverride,
    this.enableOutboundPublicIp,
    this.enablePublicIp,
    this.authorizedExternalNetworks,
  });

  final TfArg<String>? allocatedIpRangeOverride;

  final TfArg<bool>? enableOutboundPublicIp;

  final TfArg<bool>? enablePublicIp;

  final List<AlloydbInstanceAuthorizedExternalNetworks>?
  authorizedExternalNetworks;

  Map<String, Object?> encode() => {
    'allocated_ip_range_override': ?allocatedIpRangeOverride?.toTfJson(),
    'enable_outbound_public_ip': ?enableOutboundPublicIp?.toTfJson(),
    'enable_public_ip': ?enablePublicIp?.toTfJson(),
    if (authorizedExternalNetworks != null)
      'authorized_external_networks': [
        for (final e in authorizedExternalNetworks!) e.encode(),
      ],
  };
}

/// Typed helper for the `network_config.authorized_external_networks` block of
/// `google_alloydb_instance` (derived from provider schema).
@immutable
final class AlloydbInstanceAuthorizedExternalNetworks {
  const AlloydbInstanceAuthorizedExternalNetworks({this.cidrRange});

  final TfArg<String>? cidrRange;

  Map<String, Object?> encode() => {'cidr_range': ?cidrRange?.toTfJson()};
}

/// Typed helper for the `psc_instance_config` block of
/// `google_alloydb_instance` (derived from provider schema).
@immutable
final class AlloydbInstancePscInstanceConfig {
  const AlloydbInstancePscInstanceConfig({
    this.allowedConsumerProjects,
    this.pscAutoConnections,
    this.pscInterfaceConfigs,
  });

  final TfArg<List<String>>? allowedConsumerProjects;

  final List<AlloydbInstancePscAutoConnections>? pscAutoConnections;

  final List<AlloydbInstancePscInterfaceConfigs>? pscInterfaceConfigs;

  Map<String, Object?> encode() => {
    'allowed_consumer_projects': ?allowedConsumerProjects?.toTfJson(),
    if (pscAutoConnections != null)
      'psc_auto_connections': [for (final e in pscAutoConnections!) e.encode()],
    if (pscInterfaceConfigs != null)
      'psc_interface_configs': [
        for (final e in pscInterfaceConfigs!) e.encode(),
      ],
  };
}

/// Typed helper for the `psc_instance_config.psc_auto_connections` block of
/// `google_alloydb_instance` (derived from provider schema).
@immutable
final class AlloydbInstancePscAutoConnections {
  const AlloydbInstancePscAutoConnections({
    this.consumerNetwork,
    this.consumerProject,
  });

  final RefTo<GoogleComputeNetwork>? consumerNetwork;

  final TfArg<String>? consumerProject;

  Map<String, Object?> encode() => {
    'consumer_network': ?consumerNetwork?.encodeAs('id').toTfJson(),
    'consumer_project': ?consumerProject?.toTfJson(),
  };
}

/// Typed helper for the `psc_instance_config.psc_interface_configs` block of
/// `google_alloydb_instance` (derived from provider schema).
@immutable
final class AlloydbInstancePscInterfaceConfigs {
  const AlloydbInstancePscInterfaceConfigs({this.networkAttachmentResource});

  final TfArg<String>? networkAttachmentResource;

  Map<String, Object?> encode() => {
    'network_attachment_resource': ?networkAttachmentResource?.toTfJson(),
  };
}

/// Typed helper for the `query_insights_config` block of
/// `google_alloydb_instance` (derived from provider schema).
@immutable
final class AlloydbInstanceQueryInsightsConfig {
  const AlloydbInstanceQueryInsightsConfig({
    this.queryPlansPerMinute,
    this.queryStringLength,
    this.recordApplicationTags,
    this.recordClientAddress,
  });

  final TfArg<num>? queryPlansPerMinute;

  final TfArg<num>? queryStringLength;

  final TfArg<bool>? recordApplicationTags;

  final TfArg<bool>? recordClientAddress;

  Map<String, Object?> encode() => {
    'query_plans_per_minute': ?queryPlansPerMinute?.toTfJson(),
    'query_string_length': ?queryStringLength?.toTfJson(),
    'record_application_tags': ?recordApplicationTags?.toTfJson(),
    'record_client_address': ?recordClientAddress?.toTfJson(),
  };
}

/// Typed helper for the `read_pool_config` block of
/// `google_alloydb_instance` (derived from provider schema).
@immutable
final class AlloydbInstanceReadPoolConfig {
  const AlloydbInstanceReadPoolConfig({this.nodeCount});

  final TfArg<num>? nodeCount;

  Map<String, Object?> encode() => {'node_count': ?nodeCount?.toTfJson()};
}

/// Factory wrapper for `google_alloydb_instance`.
///
/// A managed alloydb cluster instance.
///
/// AlloyDB instance — primary or read-pool node inside a
/// [GoogleAlloydbCluster].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [cluster]: parent cluster ID — `cluster.id`.
/// - [instanceId]: short instance ID within the cluster.
/// - [instanceType]: [AlloydbInstanceType.primary] for the first node.
/// - [machineConfig]: CPU count (and optional machine type).
///
/// Example:
/// ```dart
/// GoogleAlloydbInstance(
///   'primary',
///   cluster: cluster.ref,
///   instanceId: TfArg.literal('primary'),
///   instanceType: TfArg.literal(AlloydbInstanceType.primary),
///   machineConfig: AlloydbInstanceMachineConfig(
///     cpuCount: TfArg.literal(2),
///   ),
/// );
/// ```
final class GoogleAlloydbInstance extends Resource {
  static const String tfType = 'google_alloydb_instance';

  GoogleAlloydbInstance(
    super.localName, {
    required RefTo<GoogleAlloydbCluster> cluster,
    required TfArg<String> instanceId,
    required TfArg<AlloydbInstanceType> instanceType,
    AlloydbInstanceMachineConfig? machineConfig,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? activationPolicy,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? availabilityType,
    TfArg<Map<String, String>>? databaseFlags,
    TfArg<String>? gceZone,
    AlloydbInstanceClientConnectionConfig? clientConnectionConfig,
    AlloydbInstanceConnectionPoolConfig? connectionPoolConfig,
    AlloydbInstanceNetworkConfig? networkConfig,
    AlloydbInstancePscInstanceConfig? pscInstanceConfig,
    AlloydbInstanceQueryInsightsConfig? queryInsightsConfig,
    AlloydbInstanceReadPoolConfig? readPoolConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster.encodeAs('name'),
           'instance_id': instanceId,
           'instance_type': instanceType,
           if (machineConfig != null)
             'machine_config': TfArg.literal(machineConfig.encode()),
           'display_name': ?displayName,
           'labels': ?labels,
           'activation_policy': ?activationPolicy,
           'annotations': ?annotations,
           'availability_type': ?availabilityType,
           'database_flags': ?databaseFlags,
           'gce_zone': ?gceZone,
           if (clientConnectionConfig != null)
             'client_connection_config': TfArg.literal(
               clientConnectionConfig.encode(),
             ),
           if (connectionPoolConfig != null)
             'connection_pool_config': TfArg.literal(
               connectionPoolConfig.encode(),
             ),
           if (networkConfig != null)
             'network_config': TfArg.literal(networkConfig.encode()),
           if (pscInstanceConfig != null)
             'psc_instance_config': TfArg.literal(pscInstanceConfig.encode()),
           if (queryInsightsConfig != null)
             'query_insights_config': TfArg.literal(
               queryInsightsConfig.encode(),
             ),
           if (readPoolConfig != null)
             'read_pool_config': TfArg.literal(readPoolConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAlloydbInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAlloydbInstance>`.
  RefTo<GoogleAlloydbInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `outbound_public_ip_addresses` attribute.
  TfRef<List<String>> get outboundPublicIpAddresses =>
      TfRef.attribute<List<String>>(this, 'outbound_public_ip_addresses');

  /// Reference to `public_ip_address` attribute.
  TfRef<String> get publicIpAddress =>
      TfRef.attribute<String>(this, 'public_ip_address');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `activation_policy` attribute.
  TfRef<String> get activationPolicy =>
      TfRef.attribute<String>(this, 'activation_policy');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `availability_type` attribute.
  TfRef<String> get availabilityType =>
      TfRef.attribute<String>(this, 'availability_type');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `database_flags` attribute.
  TfRef<Map<String, String>> get databaseFlags =>
      TfRef.attribute<Map<String, String>>(this, 'database_flags');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `gce_zone` attribute.
  TfRef<String> get gceZone => TfRef.attribute<String>(this, 'gce_zone');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');
}
