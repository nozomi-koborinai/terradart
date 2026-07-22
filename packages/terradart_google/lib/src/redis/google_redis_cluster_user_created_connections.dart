// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_redis_cluster_user_created_connections`.
const Set<String> _googleRedisClusterUserCreatedConnectionsSensitive =
    <String>{};

/// Typed helper for the `cluster_endpoints` block of
/// `google_redis_cluster_user_created_connections` (derived from provider schema).
@immutable
final class RedisClusterUserCreatedConnectionsClusterEndpoints {
  const RedisClusterUserCreatedConnectionsClusterEndpoints({this.connections});

  final List<RedisClusterUserCreatedConnectionsClusterEndpointsConnections>?
  connections;

  Map<String, Object?> encode() => {
    if (connections != null)
      'connections': [for (final e in connections!) e.encode()],
  };
}

/// Typed helper for the `cluster_endpoints.connections` block of
/// `google_redis_cluster_user_created_connections` (derived from provider schema).
@immutable
final class RedisClusterUserCreatedConnectionsClusterEndpointsConnections {
  const RedisClusterUserCreatedConnectionsClusterEndpointsConnections({
    this.pscConnection,
  });

  final RedisClusterUserCreatedConnectionsClusterEndpointsConnectionsPscConnection?
  pscConnection;

  Map<String, Object?> encode() => {
    if (pscConnection != null) 'psc_connection': pscConnection!.encode(),
  };
}

/// Typed helper for the `cluster_endpoints.connections.psc_connection` block of
/// `google_redis_cluster_user_created_connections` (derived from provider schema).
@immutable
final class RedisClusterUserCreatedConnectionsClusterEndpointsConnectionsPscConnection {
  const RedisClusterUserCreatedConnectionsClusterEndpointsConnectionsPscConnection({
    required this.address,
    required this.forwardingRule,
    required this.network,
    this.projectId,
    required this.pscConnectionId,
    required this.serviceAttachment,
  });

  final TfArg<String> address;

  final TfArg<String> forwardingRule;

  final TfArg<String> network;

  final TfArg<String>? projectId;

  final TfArg<String> pscConnectionId;

  final TfArg<String> serviceAttachment;

  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'forwarding_rule': forwardingRule.toTfJson(),
    'network': network.toTfJson(),
    if (projectId != null) 'project_id': projectId!.toTfJson(),
    'psc_connection_id': pscConnectionId.toTfJson(),
    'service_attachment': serviceAttachment.toTfJson(),
  };
}

/// Factory wrapper for `google_redis_cluster_user_created_connections`.
///
/// Manages user created connections for Redis cluster
///
/// Memorystore for Redis Cluster **user-created connections** — PSC
/// endpoints you attach to an existing [GoogleRedisCluster].
///
/// **Cost:** no separate Cloud Billing Catalog SKU under Memorystore for
/// Redis `5AF5-2C11-D467` (node/backup/AOF SKUs only). Connection
/// metadata rides on the parent cluster's node-hour charges.
///
/// Requires a parent cluster [name] and [region]. Enable
/// `redis.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example (attach after [GoogleRedisCluster] is up):
/// ```dart
/// GoogleRedisClusterUserCreatedConnections(
///   localName: 'rc_conn',
///   name: cluster.nameRef,
///   region: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleRedisClusterUserCreatedConnections extends Resource {
  static const String tfType = 'google_redis_cluster_user_created_connections';

  GoogleRedisClusterUserCreatedConnections({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> region,
    List<RedisClusterUserCreatedConnectionsClusterEndpoints>? clusterEndpoints,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': region,
           if (clusterEndpoints != null)
             'cluster_endpoints': TfArg.literal([
               for (final e in clusterEndpoints) e.encode(),
             ]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleRedisClusterUserCreatedConnectionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
