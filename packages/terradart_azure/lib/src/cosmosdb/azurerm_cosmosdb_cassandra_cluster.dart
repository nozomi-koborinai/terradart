// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_cassandra_cluster`.
const Set<String> _azurermCosmosdbCassandraClusterSensitive = <String>{
  'default_admin_password',
};

/// Cosmosdb Cassandra Cluster Authentication enum for `authentication_method`.
extension type const CosmosdbCassandraClusterAuthenticationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  CosmosdbCassandraClusterAuthenticationMethod.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbCassandraClusterAuthenticationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbCassandraClusterAuthenticationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const none = CosmosdbCassandraClusterAuthenticationMethod._(
    TfArgLiteral('None'),
  );
  static const cassandra = CosmosdbCassandraClusterAuthenticationMethod._(
    TfArgLiteral('Cassandra'),
  );

  static const List<CosmosdbCassandraClusterAuthenticationMethod> values = [
    none,
    cassandra,
  ];
}

/// Cosmosdb Cassandra Cluster enum for `version`.
extension type const CosmosdbCassandraClusterVersion._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbCassandraClusterVersion.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbCassandraClusterVersion.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbCassandraClusterVersion.arg(TfArg<String> arg) : this._(arg);

  static const v3p11 = CosmosdbCassandraClusterVersion._(TfArgLiteral('3.11'));
  static const v4p0 = CosmosdbCassandraClusterVersion._(TfArgLiteral('4.0'));
  static const v4p1 = CosmosdbCassandraClusterVersion._(TfArgLiteral('4.1'));
  static const v5p0 = CosmosdbCassandraClusterVersion._(TfArgLiteral('5.0'));

  static const List<CosmosdbCassandraClusterVersion> values = [
    v3p11,
    v4p0,
    v4p1,
    v5p0,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_cosmosdb_cassandra_cluster` (derived from provider schema).
@immutable
final class CosmosdbCassandraClusterIdentity {
  const CosmosdbCassandraClusterIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `azurerm_cosmosdb_cassandra_cluster`.
final class AzurermCosmosdbCassandraCluster extends Resource {
  static const String tfType = 'azurerm_cosmosdb_cassandra_cluster';

  AzurermCosmosdbCassandraCluster(
    super.localName, {
    CosmosdbCassandraClusterAuthenticationMethod? authenticationMethod,
    TfArg<List<String>>? clientCertificatePems,
    required Sensitive<String> defaultAdminPassword,
    required TfArg<String> delegatedManagementSubnetId,
    TfArg<List<String>>? externalGossipCertificatePems,
    TfArg<List<String>>? externalSeedNodeIpAddresses,
    TfArg<num>? hoursBetweenBackups,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? repairEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    CosmosdbCassandraClusterVersion? version,
    CosmosdbCassandraClusterIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_method': ?authenticationMethod,
           'client_certificate_pems': ?clientCertificatePems,
           'default_admin_password': defaultAdminPassword,
           'delegated_management_subnet_id': delegatedManagementSubnetId,
           'external_gossip_certificate_pems': ?externalGossipCertificatePems,
           'external_seed_node_ip_addresses': ?externalSeedNodeIpAddresses,
           'hours_between_backups': ?hoursBetweenBackups,
           'location': location,
           'name': name,
           'repair_enabled': ?repairEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'version': ?version,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbCassandraClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbCassandraCluster>`.
  RefTo<AzurermCosmosdbCassandraCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_method` attribute.
  TfRef<String> get authenticationMethod =>
      TfRef.attribute<String>(this, 'authentication_method');

  /// Reference to `client_certificate_pems` attribute.
  TfRef<List<String>> get clientCertificatePems =>
      TfRef.attribute<List<String>>(this, 'client_certificate_pems');

  /// Reference to `default_admin_password` attribute.
  TfRef<String> get defaultAdminPassword =>
      TfRef.attribute<String>(this, 'default_admin_password');

  /// Reference to `delegated_management_subnet_id` attribute.
  TfRef<String> get delegatedManagementSubnetId =>
      TfRef.attribute<String>(this, 'delegated_management_subnet_id');

  /// Reference to `external_gossip_certificate_pems` attribute.
  TfRef<List<String>> get externalGossipCertificatePems =>
      TfRef.attribute<List<String>>(this, 'external_gossip_certificate_pems');

  /// Reference to `external_seed_node_ip_addresses` attribute.
  TfRef<List<String>> get externalSeedNodeIpAddresses =>
      TfRef.attribute<List<String>>(this, 'external_seed_node_ip_addresses');

  /// Reference to `hours_between_backups` attribute.
  TfRef<num> get hoursBetweenBackups =>
      TfRef.attribute<num>(this, 'hours_between_backups');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `repair_enabled` attribute.
  TfRef<bool> get repairEnabled =>
      TfRef.attribute<bool>(this, 'repair_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
