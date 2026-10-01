// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_group_membership`.
const Set<String> _googleCloudIdentityGroupMembershipSensitive = <String>{};

/// Typed helper for the `preferred_member_key` block of
/// `google_cloud_identity_group_membership` (derived from provider schema).
@immutable
final class CloudIdentityGroupMembershipPreferredMemberKey {
  const CloudIdentityGroupMembershipPreferredMemberKey({
    required this.id,
    this.namespace,
  });

  final TfArg<String> id;

  final TfArg<String>? namespace;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
  };
}

/// Typed helper for the `roles` block of
/// `google_cloud_identity_group_membership` (derived from provider schema).
@immutable
final class CloudIdentityGroupMembershipRoles {
  const CloudIdentityGroupMembershipRoles({
    required this.name,
    this.expiryDetail,
  });

  final TfArg<CloudIdentityGroupMembershipRolesName> name;

  final CloudIdentityGroupMembershipExpiryDetail? expiryDetail;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'expiry_detail': ?expiryDetail?.encode(),
  };
}

/// `name` — derived from the provider schema description.
enum CloudIdentityGroupMembershipRolesName implements TerraformEnum {
  owner('OWNER'),
  manager('MANAGER'),
  member('MEMBER');

  const CloudIdentityGroupMembershipRolesName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `roles.expiry_detail` block of
/// `google_cloud_identity_group_membership` (derived from provider schema).
@immutable
final class CloudIdentityGroupMembershipExpiryDetail {
  const CloudIdentityGroupMembershipExpiryDetail({required this.expireTime});

  final TfArg<String> expireTime;

  Map<String, Object?> encode() => {'expire_time': expireTime.toTfJson()};
}

/// Factory wrapper for `google_cloud_identity_group_membership`.
///
/// A Membership defines a relationship between a Group and an entity belonging
/// to that Group, referred to as a "member".
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleCloudIdentityGroupMembership extends Resource {
  static const String tfType = 'google_cloud_identity_group_membership';

  GoogleCloudIdentityGroupMembership({
    required super.localName,
    TfArg<bool>? createIgnoreAlreadyExists,
    TfArg<String>? deletionPolicy,
    required TfArg<String> group,
    CloudIdentityGroupMembershipPreferredMemberKey? preferredMemberKey,
    required List<CloudIdentityGroupMembershipRoles> roles,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'create_ignore_already_exists': ?createIgnoreAlreadyExists,
           'deletion_policy': ?deletionPolicy,
           'group': group,
           if (preferredMemberKey != null)
             'preferred_member_key': TfArg.literal(preferredMemberKey.encode()),
           'roles': TfArg.literal([for (final e in roles) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudIdentityGroupMembershipSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudIdentityGroupMembership>`.
  RefTo<GoogleCloudIdentityGroupMembership> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `create_ignore_already_exists` attribute.
  TfRef<bool> get createIgnoreAlreadyExistsRef =>
      TfRef.attribute<bool>(this, 'create_ignore_already_exists');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `group` attribute.
  TfRef<String> get groupRef => TfRef.attribute<String>(this, 'group');
}
