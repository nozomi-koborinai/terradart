// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../redis/google_redis_cluster.dart' show GoogleRedisCluster;

/// Sensitive field paths for `google_redis_cluster_token_auth_user`.
const Set<String> _googleRedisClusterTokenAuthUserSensitive = <String>{};

/// Factory wrapper for `google_redis_cluster_token_auth_user`.
///
/// Represents a Token Auth User for a Google Cloud Redis Cluster.
final class GoogleRedisClusterTokenAuthUser extends Resource {
  static const String tfType = 'google_redis_cluster_token_auth_user';

  GoogleRedisClusterTokenAuthUser(
    super.localName, {
    required RefTo<GoogleRedisCluster> cluster,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> userId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster.encodeAs('name'),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'region': ?region,
           'user_id': userId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRedisClusterTokenAuthUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleRedisClusterTokenAuthUser>`.
  RefTo<GoogleRedisClusterTokenAuthUser> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
