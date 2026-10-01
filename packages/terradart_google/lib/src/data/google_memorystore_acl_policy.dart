// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../memorystore/google_memorystore_acl_policy.dart';

/// Sensitive field paths for `google_memorystore_acl_policy`.
const Set<String> _googleMemorystoreAclPolicySensitive = <String>{};

/// Factory wrapper for `google_memorystore_acl_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleMemorystoreAclPolicy extends Data {
  static const String tfType = 'google_memorystore_acl_policy';

  DataGoogleMemorystoreAclPolicy({
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
  Set<String> get sensitiveFields => _googleMemorystoreAclPolicySensitive;

  /// A reference to the `google_memorystore_acl_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleMemorystoreAclPolicy>`.
  RefTo<GoogleMemorystoreAclPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `acl_policy_id` attribute.
  TfRef<String> get aclPolicyId =>
      TfRef.attribute<String>(this, 'acl_policy_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
