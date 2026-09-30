// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../redis/google_redis_cluster_acl_policy.dart';

/// Sensitive field paths for `google_redis_cluster_acl_policy`.
const Set<String> _googleRedisClusterAclPolicySensitive = <String>{};

/// Factory wrapper for `google_redis_cluster_acl_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleRedisClusterAclPolicy extends Data {
  static const String tfType = 'google_redis_cluster_acl_policy';

  DataGoogleRedisClusterAclPolicy({
    required super.localName,
    required TfArg<String> aclPolicyId,
    TfArg<String>? location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'acl_policy_id': aclPolicyId,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRedisClusterAclPolicySensitive;

  /// A reference to the `google_redis_cluster_acl_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleRedisClusterAclPolicy>`.
  RefTo<GoogleRedisClusterAclPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `rules` attribute.
  TfRef<List<Map<String, Object?>>> get rules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rules');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
