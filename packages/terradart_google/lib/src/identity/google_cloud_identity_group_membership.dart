// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../identity/google_cloud_identity_group.dart'
    show GoogleCloudIdentityGroup;

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

  @internal
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

  final CloudIdentityGroupMembershipRolesName name;

  final CloudIdentityGroupMembershipExpiryDetail? expiryDetail;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'expiry_detail': ?expiryDetail?.encode(),
  };
}

/// `name` — derived from the provider schema description.
extension type const CloudIdentityGroupMembershipRolesName._(TfArg<String> _)
    implements TfArg<String> {
  CloudIdentityGroupMembershipRolesName.variable(String name)
    : this._(TfArg.variable(name));
  CloudIdentityGroupMembershipRolesName.expression(String template)
    : this._(TfArg.expression(template));
  const CloudIdentityGroupMembershipRolesName.arg(TfArg<String> arg)
    : this._(arg);

  static const owner = CloudIdentityGroupMembershipRolesName._(
    TfArgLiteral('OWNER'),
  );
  static const manager = CloudIdentityGroupMembershipRolesName._(
    TfArgLiteral('MANAGER'),
  );
  static const member = CloudIdentityGroupMembershipRolesName._(
    TfArgLiteral('MEMBER'),
  );

  static const List<CloudIdentityGroupMembershipRolesName> values = [
    owner,
    manager,
    member,
  ];
}

/// Typed helper for the `roles.expiry_detail` block of
/// `google_cloud_identity_group_membership` (derived from provider schema).
@immutable
final class CloudIdentityGroupMembershipExpiryDetail {
  const CloudIdentityGroupMembershipExpiryDetail({required this.expireTime});

  final TfArg<String> expireTime;

  @internal
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

  GoogleCloudIdentityGroupMembership(
    super.localName, {
    TfArg<bool>? createIgnoreAlreadyExists,
    TfArg<String>? deletionPolicy,
    required RefTo<GoogleCloudIdentityGroup> group,
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
           'group': group.encodeAs('name'),
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `create_ignore_already_exists` attribute.
  TfRef<bool> get createIgnoreAlreadyExists =>
      TfRef.attribute<bool>(this, 'create_ignore_already_exists');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `group` attribute.
  TfRef<String> get group => TfRef.attribute<String>(this, 'group');
}
