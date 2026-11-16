// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../redis/google_redis_cluster_token_auth_user.dart';

/// Sensitive field paths for `google_redis_cluster_token_auth_user`.
const Set<String> _googleRedisClusterTokenAuthUserSensitive = <String>{};

/// Factory wrapper for `google_redis_cluster_token_auth_user`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleRedisClusterTokenAuthUser extends Data {
  static const String tfType = 'google_redis_cluster_token_auth_user';

  DataGoogleRedisClusterTokenAuthUser(
    super.localName, {
    required TfArg<String> cluster,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> userId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster,
           'project': ?project,
           'region': ?region,
           'user_id': userId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRedisClusterTokenAuthUserSensitive;

  /// A reference to the `google_redis_cluster_token_auth_user` this data source reads, for
  /// arguments typed `RefTo<GoogleRedisClusterTokenAuthUser>`.
  RefTo<GoogleRedisClusterTokenAuthUser> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
