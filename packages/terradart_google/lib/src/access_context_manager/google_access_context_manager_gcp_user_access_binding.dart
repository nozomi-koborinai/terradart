// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_access_context_manager_gcp_user_access_binding`.
const Set<String> _googleAccessContextManagerGcpUserAccessBindingSensitive =
    <String>{};

/// At most one of `group_key`, `principal` on `google_access_context_manager_gcp_user_access_binding`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.groupKey(...)`.
sealed class AccessContextManagerGcpUserAccessBindingSubject {
  const AccessContextManagerGcpUserAccessBindingSubject();

  /// Sets `group_key`.
  const factory AccessContextManagerGcpUserAccessBindingSubject.groupKey(
    TfArg<String> groupKey,
  ) = AccessContextManagerGcpUserAccessBindingSubjectGroupKey;

  /// Sets `principal`.
  const factory AccessContextManagerGcpUserAccessBindingSubject.principal(
    AccessContextManagerGcpUserAccessBindingPrincipal principal,
  ) = AccessContextManagerGcpUserAccessBindingSubjectPrincipal;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AccessContextManagerGcpUserAccessBindingSubject.groupKey] choice: sets `group_key`.
final class AccessContextManagerGcpUserAccessBindingSubjectGroupKey
    extends AccessContextManagerGcpUserAccessBindingSubject {
  const AccessContextManagerGcpUserAccessBindingSubjectGroupKey(this.groupKey);

  final TfArg<String> groupKey;

  @override
  String get blockKey => 'group_key';

  @override
  Map<String, Object?> encode() => {'group_key': groupKey.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'group_key': groupKey};
}

/// The [AccessContextManagerGcpUserAccessBindingSubject.principal] choice: sets `principal`.
final class AccessContextManagerGcpUserAccessBindingSubjectPrincipal
    extends AccessContextManagerGcpUserAccessBindingSubject {
  const AccessContextManagerGcpUserAccessBindingSubjectPrincipal(
    this.principal,
  );

  final AccessContextManagerGcpUserAccessBindingPrincipal principal;

  @override
  String get blockKey => 'principal';

  @override
  Map<String, Object?> encode() => {'principal': principal.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'principal': TfArg.literal(principal.encode()),
  };
}

/// Typed helper for the `principal` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingPrincipal {
  const AccessContextManagerGcpUserAccessBindingPrincipal({
    this.serviceAccount,
    this.serviceAccountProjectNumber,
  });

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<String>? serviceAccountProjectNumber;

  Map<String, Object?> encode() => {
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'service_account_project_number': ?serviceAccountProjectNumber?.toTfJson(),
  };
}

/// Typed helper for the `scoped_access_settings` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingScopedAccessSettings {
  const AccessContextManagerGcpUserAccessBindingScopedAccessSettings({
    this.activeSettings,
    this.dryRunSettings,
    this.scope,
  });

  final AccessContextManagerGcpUserAccessBindingActiveSettings? activeSettings;

  final AccessContextManagerGcpUserAccessBindingDryRunSettings? dryRunSettings;

  final AccessContextManagerGcpUserAccessBindingScope? scope;

  Map<String, Object?> encode() => {
    'active_settings': ?activeSettings?.encode(),
    'dry_run_settings': ?dryRunSettings?.encode(),
    'scope': ?scope?.encode(),
  };
}

/// Typed helper for the `scoped_access_settings.active_settings` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingActiveSettings {
  const AccessContextManagerGcpUserAccessBindingActiveSettings({
    this.accessLevels,
    this.sessionSettings,
  });

  final TfArg<List<String>>? accessLevels;

  final AccessContextManagerGcpUserAccessBindingSessionSettings?
  sessionSettings;

  Map<String, Object?> encode() => {
    'access_levels': ?accessLevels?.toTfJson(),
    'session_settings': ?sessionSettings?.encode(),
  };
}

/// Typed helper for the `session_settings` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerGcpUserAccessBindingSessionSettings {
  const AccessContextManagerGcpUserAccessBindingSessionSettings({
    this.maxInactivity,
    this.sessionLength,
    this.sessionLengthEnabled,
    this.sessionReauthMethod,
    this.useOidcMaxAge,
  });

  final TfArg<String>? maxInactivity;

  final TfArg<String>? sessionLength;

  final TfArg<bool>? sessionLengthEnabled;

  final TfArg<AccessContextManagerGcpUserAccessBindingSessionReauthMethod>?
  sessionReauthMethod;

  final TfArg<bool>? useOidcMaxAge;

  Map<String, Object?> encode() => {
    'max_inactivity': ?maxInactivity?.toTfJson(),
    'session_length': ?sessionLength?.toTfJson(),
    'session_length_enabled': ?sessionLengthEnabled?.toTfJson(),
    'session_reauth_method': ?sessionReauthMethod?.toTfJson(),
    'use_oidc_max_age': ?useOidcMaxAge?.toTfJson(),
  };
}

/// `session_reauth_method` — derived from the provider schema description.
enum AccessContextManagerGcpUserAccessBindingSessionReauthMethod
    implements TerraformEnum {
  login('LOGIN'),
  securityKey('SECURITY_KEY'),
  password('PASSWORD');

  const AccessContextManagerGcpUserAccessBindingSessionReauthMethod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `scoped_access_settings.dry_run_settings` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingDryRunSettings {
  const AccessContextManagerGcpUserAccessBindingDryRunSettings({
    this.accessLevels,
  });

  final TfArg<List<String>>? accessLevels;

  Map<String, Object?> encode() => {'access_levels': ?accessLevels?.toTfJson()};
}

/// Typed helper for the `scoped_access_settings.scope` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingScope {
  const AccessContextManagerGcpUserAccessBindingScope({this.clientScope});

  final AccessContextManagerGcpUserAccessBindingClientScope? clientScope;

  Map<String, Object?> encode() => {'client_scope': ?clientScope?.encode()};
}

/// Typed helper for the `scoped_access_settings.scope.client_scope` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingClientScope {
  const AccessContextManagerGcpUserAccessBindingClientScope({
    this.restrictedClientApplication,
  });

  final AccessContextManagerGcpUserAccessBindingRestrictedClientApplication?
  restrictedClientApplication;

  Map<String, Object?> encode() => {
    'restricted_client_application': ?restrictedClientApplication?.encode(),
  };
}

/// Typed helper for the `scoped_access_settings.scope.client_scope.restricted_client_application` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingRestrictedClientApplication {
  const AccessContextManagerGcpUserAccessBindingRestrictedClientApplication({
    this.clientId,
    this.name,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Factory wrapper for `google_access_context_manager_gcp_user_access_binding`.
///
/// Restricts access to Cloud Console and Google Cloud APIs for a set of users
/// using Context-Aware Access.
///
/// ACM GCP user access binding — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleAccessContextManagerGcpUserAccessBinding extends Resource {
  static const String tfType =
      'google_access_context_manager_gcp_user_access_binding';

  GoogleAccessContextManagerGcpUserAccessBinding({
    required super.localName,
    TfArg<List<String>>? accessLevels,
    TfArg<String>? deletionPolicy,
    AccessContextManagerGcpUserAccessBindingSubject? subject,
    required TfArg<String> organizationId,
    List<AccessContextManagerGcpUserAccessBindingScopedAccessSettings>?
    scopedAccessSettings,
    AccessContextManagerGcpUserAccessBindingSessionSettings? sessionSettings,
    TfArg<List<String>>? dryRunAccessLevels,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_levels': ?accessLevels,
           'deletion_policy': ?deletionPolicy,
           ...?subject?.argMap,
           'organization_id': organizationId,
           if (scopedAccessSettings != null)
             'scoped_access_settings': TfArg.literal([
               for (final e in scopedAccessSettings) e.encode(),
             ]),
           if (sessionSettings != null)
             'session_settings': TfArg.literal(sessionSettings.encode()),
           'dry_run_access_levels': ?dryRunAccessLevels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerGcpUserAccessBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerGcpUserAccessBinding>`.
  RefTo<GoogleAccessContextManagerGcpUserAccessBinding> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_levels` attribute.
  TfRef<List<String>> get accessLevels =>
      TfRef.attribute<List<String>>(this, 'access_levels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `dry_run_access_levels` attribute.
  TfRef<List<String>> get dryRunAccessLevels =>
      TfRef.attribute<List<String>>(this, 'dry_run_access_levels');

  /// Reference to `group_key` attribute.
  TfRef<String> get groupKey => TfRef.attribute<String>(this, 'group_key');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');
}
