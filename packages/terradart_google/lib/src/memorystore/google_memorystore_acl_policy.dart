// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_memorystore_acl_policy`.
const Set<String> _googleMemorystoreAclPolicySensitive = <String>{};

/// Typed helper for the `rules` block of
/// `google_memorystore_acl_policy` (derived from provider schema).
@immutable
final class MemorystoreAclPolicyRules {
  const MemorystoreAclPolicyRules({required this.rule, required this.username});

  final TfArg<String> rule;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'rule': rule.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Factory wrapper for `google_memorystore_acl_policy`.
///
/// A Google Cloud Memorystore ACL policy.
final class GoogleMemorystoreAclPolicy extends Resource {
  static const String tfType = 'google_memorystore_acl_policy';

  GoogleMemorystoreAclPolicy(
    super.localName, {
    required TfArg<String> aclPolicyId,
    required TfArg<String> location,
    required List<MemorystoreAclPolicyRules> rules,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'acl_policy_id': aclPolicyId,
           'location': location,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMemorystoreAclPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMemorystoreAclPolicy>`.
  RefTo<GoogleMemorystoreAclPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `acl_policy_id` attribute.
  TfRef<String> get aclPolicyId =>
      TfRef.attribute<String>(this, 'acl_policy_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
