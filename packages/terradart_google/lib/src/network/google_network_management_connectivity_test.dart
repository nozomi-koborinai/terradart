// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_management_connectivity_test`.
const Set<String> _googleNetworkManagementConnectivityTestSensitive =
    <String>{};

/// Typed helper for the `destination` block of
/// `google_network_management_connectivity_test` (derived from provider schema).
@immutable
final class NetworkManagementConnectivityTestDestination {
  const NetworkManagementConnectivityTestDestination({
    this.cloudSqlInstance,
    this.forwardingRule,
    this.fqdn,
    this.gkeMasterCluster,
    this.gkePod,
    this.instance,
    this.ipAddress,
    this.network,
    this.networkType,
    this.port,
    this.projectId,
    this.redisCluster,
    this.redisInstance,
  });

  final TfArg<String>? cloudSqlInstance;

  final TfArg<String>? forwardingRule;

  final TfArg<String>? fqdn;

  final TfArg<String>? gkeMasterCluster;

  final TfArg<String>? gkePod;

  final TfArg<String>? instance;

  final TfArg<String>? ipAddress;

  final TfArg<String>? network;

  final TfArg<NetworkManagementConnectivityTestDestinationNetworkType>?
  networkType;

  final TfArg<num>? port;

  final TfArg<String>? projectId;

  final TfArg<String>? redisCluster;

  final TfArg<String>? redisInstance;

  Map<String, Object?> encode() => {
    if (cloudSqlInstance != null)
      'cloud_sql_instance': cloudSqlInstance!.toTfJson(),
    if (forwardingRule != null) 'forwarding_rule': forwardingRule!.toTfJson(),
    if (fqdn != null) 'fqdn': fqdn!.toTfJson(),
    if (gkeMasterCluster != null)
      'gke_master_cluster': gkeMasterCluster!.toTfJson(),
    if (gkePod != null) 'gke_pod': gkePod!.toTfJson(),
    if (instance != null) 'instance': instance!.toTfJson(),
    if (ipAddress != null) 'ip_address': ipAddress!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (networkType != null) 'network_type': networkType!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (projectId != null) 'project_id': projectId!.toTfJson(),
    if (redisCluster != null) 'redis_cluster': redisCluster!.toTfJson(),
    if (redisInstance != null) 'redis_instance': redisInstance!.toTfJson(),
  };
}

/// `network_type` — derived from the provider schema description.
enum NetworkManagementConnectivityTestDestinationNetworkType
    implements TerraformEnum {
  gcpNetwork('GCP_NETWORK'),
  nonGcpNetwork('NON_GCP_NETWORK'),
  internet('INTERNET');

  const NetworkManagementConnectivityTestDestinationNetworkType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `source` block of
/// `google_network_management_connectivity_test` (derived from provider schema).
@immutable
final class NetworkManagementConnectivityTestSource {
  const NetworkManagementConnectivityTestSource({
    this.cloudSqlInstance,
    this.gkeMasterCluster,
    this.instance,
    this.ipAddress,
    this.network,
    this.networkType,
    this.port,
    this.projectId,
    this.appEngineVersion,
    this.cloudFunction,
    this.cloudRunRevision,
  });

  final TfArg<String>? cloudSqlInstance;

  final TfArg<String>? gkeMasterCluster;

  final TfArg<String>? instance;

  final TfArg<String>? ipAddress;

  final TfArg<String>? network;

  final TfArg<NetworkManagementConnectivityTestSourceNetworkType>? networkType;

  final TfArg<num>? port;

  final TfArg<String>? projectId;

  final NetworkManagementConnectivityTestSourceAppEngineVersion?
  appEngineVersion;

  final NetworkManagementConnectivityTestSourceCloudFunction? cloudFunction;

  final NetworkManagementConnectivityTestSourceCloudRunRevision?
  cloudRunRevision;

  Map<String, Object?> encode() => {
    if (cloudSqlInstance != null)
      'cloud_sql_instance': cloudSqlInstance!.toTfJson(),
    if (gkeMasterCluster != null)
      'gke_master_cluster': gkeMasterCluster!.toTfJson(),
    if (instance != null) 'instance': instance!.toTfJson(),
    if (ipAddress != null) 'ip_address': ipAddress!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (networkType != null) 'network_type': networkType!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (projectId != null) 'project_id': projectId!.toTfJson(),
    if (appEngineVersion != null)
      'app_engine_version': appEngineVersion!.encode(),
    if (cloudFunction != null) 'cloud_function': cloudFunction!.encode(),
    if (cloudRunRevision != null)
      'cloud_run_revision': cloudRunRevision!.encode(),
  };
}

/// `network_type` — derived from the provider schema description.
enum NetworkManagementConnectivityTestSourceNetworkType
    implements TerraformEnum {
  gcpNetwork('GCP_NETWORK'),
  nonGcpNetwork('NON_GCP_NETWORK');

  const NetworkManagementConnectivityTestSourceNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `source.app_engine_version` block of
/// `google_network_management_connectivity_test` (derived from provider schema).
@immutable
final class NetworkManagementConnectivityTestSourceAppEngineVersion {
  const NetworkManagementConnectivityTestSourceAppEngineVersion({this.uri});

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {if (uri != null) 'uri': uri!.toTfJson()};
}

/// Typed helper for the `source.cloud_function` block of
/// `google_network_management_connectivity_test` (derived from provider schema).
@immutable
final class NetworkManagementConnectivityTestSourceCloudFunction {
  const NetworkManagementConnectivityTestSourceCloudFunction({this.uri});

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {if (uri != null) 'uri': uri!.toTfJson()};
}

/// Typed helper for the `source.cloud_run_revision` block of
/// `google_network_management_connectivity_test` (derived from provider schema).
@immutable
final class NetworkManagementConnectivityTestSourceCloudRunRevision {
  const NetworkManagementConnectivityTestSourceCloudRunRevision({this.uri});

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {if (uri != null) 'uri': uri!.toTfJson()};
}

/// Factory wrapper for `google_network_management_connectivity_test`.
///
/// A connectivity test are a static analysis of your resource configurations
/// that enables you to evaluate connectivity to and from Google Cloud resources
/// in your Virtual Private Cloud (VPC) network.
///
/// Network Management connectivity test — probes reachability between a
/// [source] and [destination] endpoint (IP, FQDN, GCE instance, etc.).
///
/// Enable `networkmanagement.googleapis.com` before apply.
///
/// Example:
/// ```dart
/// GoogleNetworkManagementConnectivityTest(
///   localName: 'dns_probe',
///   name: TfArg.literal('dns-probe'),
///   protocol: TfArg.literal('TCP'),
///   source: TfArg.literal([
///     {'ip_address': '10.0.0.1', 'port': 53},
///   ]),
///   destination: TfArg.literal([
///     {'ip_address': '8.8.8.8', 'port': 53},
///   ]),
/// );
/// ```
final class GoogleNetworkManagementConnectivityTest extends Resource {
  static const String tfType = 'google_network_management_connectivity_test';

  GoogleNetworkManagementConnectivityTest({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? protocol,
    required NetworkManagementConnectivityTestSource source,
    required NetworkManagementConnectivityTestDestination destination,
    TfArg<String>? description,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? bypassFirewallChecks,
    TfArg<List<String>>? relatedProjects,
    TfArg<bool>? roundTrip,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (protocol != null) 'protocol': protocol,
           'source': TfArg.literal(source.encode()),
           'destination': TfArg.literal(destination.encode()),
           if (description != null) 'description': description,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (bypassFirewallChecks != null)
             'bypass_firewall_checks': bypassFirewallChecks,
           if (relatedProjects != null) 'related_projects': relatedProjects,
           if (roundTrip != null) 'round_trip': roundTrip,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkManagementConnectivityTestSensitive;

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
