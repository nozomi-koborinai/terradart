// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_auth_team_membership`.
const Set<String> _appwriteAuthTeamMembershipSensitive = <String>{};

/// Exactly one of `user_id`, `email`, `phone` on `appwrite_auth_team_membership`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.userId(...)`.
sealed class AuthTeamMembershipUserIdOrEmailOrPhone {
  const AuthTeamMembershipUserIdOrEmailOrPhone();

  /// Sets `user_id`.
  const factory AuthTeamMembershipUserIdOrEmailOrPhone.userId(
    TfArg<String> userId,
  ) = AuthTeamMembershipUserIdOrEmailOrPhoneUserId;

  /// Sets `email`.
  const factory AuthTeamMembershipUserIdOrEmailOrPhone.email(
    TfArg<String> email,
  ) = AuthTeamMembershipUserIdOrEmailOrPhoneEmail;

  /// Sets `phone`.
  const factory AuthTeamMembershipUserIdOrEmailOrPhone.phone(
    TfArg<String> phone,
  ) = AuthTeamMembershipUserIdOrEmailOrPhoneChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AuthTeamMembershipUserIdOrEmailOrPhone.userId] choice: sets `user_id`.
final class AuthTeamMembershipUserIdOrEmailOrPhoneUserId
    extends AuthTeamMembershipUserIdOrEmailOrPhone {
  const AuthTeamMembershipUserIdOrEmailOrPhoneUserId(this.userId);

  final TfArg<String> userId;

  @internal
  @override
  String get blockKey => 'user_id';

  @internal
  @override
  Map<String, Object?> encode() => {'user_id': userId.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'user_id': userId};
}

/// The [AuthTeamMembershipUserIdOrEmailOrPhone.email] choice: sets `email`.
final class AuthTeamMembershipUserIdOrEmailOrPhoneEmail
    extends AuthTeamMembershipUserIdOrEmailOrPhone {
  const AuthTeamMembershipUserIdOrEmailOrPhoneEmail(this.email);

  final TfArg<String> email;

  @internal
  @override
  String get blockKey => 'email';

  @internal
  @override
  Map<String, Object?> encode() => {'email': email.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'email': email};
}

/// The [AuthTeamMembershipUserIdOrEmailOrPhone.phone] choice: sets `phone`.
final class AuthTeamMembershipUserIdOrEmailOrPhoneChoice
    extends AuthTeamMembershipUserIdOrEmailOrPhone {
  const AuthTeamMembershipUserIdOrEmailOrPhoneChoice(this.phone);

  final TfArg<String> phone;

  @internal
  @override
  String get blockKey => 'phone';

  @internal
  @override
  Map<String, Object?> encode() => {'phone': phone.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'phone': phone};
}

/// Factory wrapper for `appwrite_auth_team_membership`.
///
/// Manages a user's membership of an Appwrite team. Because the provider
/// authenticates with an API key, Appwrite confirms the membership immediately
/// and sends no invitation. Identify the member by exactly one of user_id,
/// email or phone. Given an email address or phone number that belongs to no
/// user, Appwrite creates one; destroying the membership does not delete that
/// user.
final class AppwriteAuthTeamMembership extends Resource {
  static const String tfType = 'appwrite_auth_team_membership';

  AppwriteAuthTeamMembership(
    super.localName, {
    required AuthTeamMembershipUserIdOrEmailOrPhone userIdOrEmailOrPhone,
    TfArg<String>? name,
    RefTo<AppwriteProject>? projectId,
    required TfArg<List<String>> roles,
    required TfArg<String> teamId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...userIdOrEmailOrPhone.argMap,
           'name': ?name,
           'project_id': ?projectId?.encodeAs('id'),
           'roles': roles,
           'team_id': teamId,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteAuthTeamMembershipSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteAuthTeamMembership>`.
  RefTo<AppwriteAuthTeamMembership> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `confirm` attribute.
  TfRef<bool> get confirm => TfRef.attribute<bool>(this, 'confirm');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `joined_at` attribute.
  TfRef<String> get joinedAt => TfRef.attribute<String>(this, 'joined_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `user_email` attribute.
  TfRef<String> get userEmail => TfRef.attribute<String>(this, 'user_email');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');

  /// Reference to `user_phone` attribute.
  TfRef<String> get userPhone => TfRef.attribute<String>(this, 'user_phone');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `phone` attribute.
  TfRef<String> get phone => TfRef.attribute<String>(this, 'phone');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `roles` attribute.
  TfRef<List<String>> get roles => TfRef.attribute<List<String>>(this, 'roles');

  /// Reference to `team_id` attribute.
  TfRef<String> get teamId => TfRef.attribute<String>(this, 'team_id');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
