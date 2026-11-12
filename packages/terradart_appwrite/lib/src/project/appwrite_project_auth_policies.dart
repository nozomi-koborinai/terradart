// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_project_auth_policies`.
const Set<String> _appwriteProjectAuthPoliciesSensitive = <String>{};

/// Typed helper for the `membership_privacy` block of
/// `appwrite_project_auth_policies` (derived from provider schema).
@immutable
final class ProjectAuthPoliciesMembershipPrivacy {
  const ProjectAuthPoliciesMembershipPrivacy({
    this.userAccessedAt,
    this.userEmail,
    this.userId,
    this.userMfa,
    this.userName,
    this.userPhone,
  });

  final TfArg<bool>? userAccessedAt;

  final TfArg<bool>? userEmail;

  final TfArg<bool>? userId;

  final TfArg<bool>? userMfa;

  final TfArg<bool>? userName;

  final TfArg<bool>? userPhone;

  @internal
  Map<String, Object?> encode() => {
    'user_accessed_at': ?userAccessedAt?.toTfJson(),
    'user_email': ?userEmail?.toTfJson(),
    'user_id': ?userId?.toTfJson(),
    'user_mfa': ?userMfa?.toTfJson(),
    'user_name': ?userName?.toTfJson(),
    'user_phone': ?userPhone?.toTfJson(),
  };
}

/// Typed helper for the `mfa_factors` block of
/// `appwrite_project_auth_policies` (derived from provider schema).
@immutable
final class ProjectAuthPoliciesMfaFactors {
  const ProjectAuthPoliciesMfaFactors({
    this.custom,
    this.email,
    this.phone,
    this.totp,
  });

  final TfArg<bool>? custom;

  final TfArg<bool>? email;

  final TfArg<bool>? phone;

  final TfArg<bool>? totp;

  @internal
  Map<String, Object?> encode() => {
    'custom': ?custom?.toTfJson(),
    'email': ?email?.toTfJson(),
    'phone': ?phone?.toTfJson(),
    'totp': ?totp?.toTfJson(),
  };
}

/// Typed helper for the `password_pwned` block of
/// `appwrite_project_auth_policies` (derived from provider schema).
@immutable
final class ProjectAuthPoliciesPasswordPwned {
  const ProjectAuthPoliciesPasswordPwned({
    this.enabled,
    this.sessions,
    this.users,
  });

  final TfArg<bool>? enabled;

  final TfArg<bool>? sessions;

  final TfArg<bool>? users;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'sessions': ?sessions?.toTfJson(),
    'users': ?users?.toTfJson(),
  };
}

/// Typed helper for the `password_strength` block of
/// `appwrite_project_auth_policies` (derived from provider schema).
@immutable
final class ProjectAuthPoliciesPasswordStrength {
  const ProjectAuthPoliciesPasswordStrength({
    this.lowercase,
    this.min,
    this.number,
    this.symbols,
    this.uppercase,
  });

  final TfArg<bool>? lowercase;

  final TfArg<num>? min;

  final TfArg<bool>? number;

  final TfArg<bool>? symbols;

  final TfArg<bool>? uppercase;

  @internal
  Map<String, Object?> encode() => {
    'lowercase': ?lowercase?.toTfJson(),
    'min': ?min?.toTfJson(),
    'number': ?number?.toTfJson(),
    'symbols': ?symbols?.toTfJson(),
    'uppercase': ?uppercase?.toTfJson(),
  };
}

/// Factory wrapper for `appwrite_project_auth_policies`.
///
/// Manages a project's password, session, user, team membership, MFA and
/// sign-up email policies. Every project has these settings, so creating this
/// resource takes them over rather than creating anything, and destroying it
/// resets them to Appwrite's defaults. An attribute left out of the
/// configuration is set to its default too. Use one per project: two would
/// overwrite each other.
final class AppwriteProjectAuthPolicies extends Resource {
  static const String tfType = 'appwrite_project_auth_policies';

  AppwriteProjectAuthPolicies(
    super.localName, {
    TfArg<bool>? denyAliasedEmail,
    TfArg<bool>? denyCorporateEmail,
    TfArg<bool>? denyDisposableEmail,
    TfArg<bool>? denyFreeEmail,
    TfArg<bool>? passwordDictionary,
    TfArg<num>? passwordHistory,
    TfArg<bool>? passwordPersonalData,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? sessionAlert,
    TfArg<num>? sessionDuration,
    TfArg<bool>? sessionInvalidation,
    TfArg<num>? sessionLimit,
    TfArg<num>? userLimit,
    ProjectAuthPoliciesMembershipPrivacy? membershipPrivacy,
    ProjectAuthPoliciesMfaFactors? mfaFactors,
    ProjectAuthPoliciesPasswordPwned? passwordPwned,
    ProjectAuthPoliciesPasswordStrength? passwordStrength,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deny_aliased_email': ?denyAliasedEmail,
           'deny_corporate_email': ?denyCorporateEmail,
           'deny_disposable_email': ?denyDisposableEmail,
           'deny_free_email': ?denyFreeEmail,
           'password_dictionary': ?passwordDictionary,
           'password_history': ?passwordHistory,
           'password_personal_data': ?passwordPersonalData,
           'project_id': ?projectId?.encodeAs('id'),
           'session_alert': ?sessionAlert,
           'session_duration': ?sessionDuration,
           'session_invalidation': ?sessionInvalidation,
           'session_limit': ?sessionLimit,
           'user_limit': ?userLimit,
           if (membershipPrivacy != null)
             'membership_privacy': TfArg.literal(membershipPrivacy.encode()),
           if (mfaFactors != null)
             'mfa_factors': TfArg.literal(mfaFactors.encode()),
           if (passwordPwned != null)
             'password_pwned': TfArg.literal(passwordPwned.encode()),
           if (passwordStrength != null)
             'password_strength': TfArg.literal(passwordStrength.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectAuthPoliciesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProjectAuthPolicies>`.
  RefTo<AppwriteProjectAuthPolicies> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deny_aliased_email` attribute.
  TfRef<bool> get denyAliasedEmail =>
      TfRef.attribute<bool>(this, 'deny_aliased_email');

  /// Reference to `deny_corporate_email` attribute.
  TfRef<bool> get denyCorporateEmail =>
      TfRef.attribute<bool>(this, 'deny_corporate_email');

  /// Reference to `deny_disposable_email` attribute.
  TfRef<bool> get denyDisposableEmail =>
      TfRef.attribute<bool>(this, 'deny_disposable_email');

  /// Reference to `deny_free_email` attribute.
  TfRef<bool> get denyFreeEmail =>
      TfRef.attribute<bool>(this, 'deny_free_email');

  /// Reference to `password_dictionary` attribute.
  TfRef<bool> get passwordDictionary =>
      TfRef.attribute<bool>(this, 'password_dictionary');

  /// Reference to `password_history` attribute.
  TfRef<num> get passwordHistory =>
      TfRef.attribute<num>(this, 'password_history');

  /// Reference to `password_personal_data` attribute.
  TfRef<bool> get passwordPersonalData =>
      TfRef.attribute<bool>(this, 'password_personal_data');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `session_alert` attribute.
  TfRef<bool> get sessionAlert => TfRef.attribute<bool>(this, 'session_alert');

  /// Reference to `session_duration` attribute.
  TfRef<num> get sessionDuration =>
      TfRef.attribute<num>(this, 'session_duration');

  /// Reference to `session_invalidation` attribute.
  TfRef<bool> get sessionInvalidation =>
      TfRef.attribute<bool>(this, 'session_invalidation');

  /// Reference to `session_limit` attribute.
  TfRef<num> get sessionLimit => TfRef.attribute<num>(this, 'session_limit');

  /// Reference to `user_limit` attribute.
  TfRef<num> get userLimit => TfRef.attribute<num>(this, 'user_limit');
}
