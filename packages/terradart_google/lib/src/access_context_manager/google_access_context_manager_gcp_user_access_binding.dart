// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_gcp_user_access_binding`.
const Set<String> _googleAccessContextManagerGcpUserAccessBindingSensitive =
    <String>{};

/// Typed helper for the `principal` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingPrincipal {
  const AccessContextManagerGcpUserAccessBindingPrincipal({
    this.serviceAccount,
    this.serviceAccountProjectNumber,
  });

  final TfArg<String>? serviceAccount;

  final TfArg<String>? serviceAccountProjectNumber;

  Map<String, Object?> encode() => {
    if (serviceAccount != null) 'service_account': serviceAccount!.toTfJson(),
    if (serviceAccountProjectNumber != null)
      'service_account_project_number': serviceAccountProjectNumber!.toTfJson(),
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

  final AccessContextManagerGcpUserAccessBindingScopedAccessSettingsActiveSettings?
  activeSettings;

  final AccessContextManagerGcpUserAccessBindingScopedAccessSettingsDryRunSettings?
  dryRunSettings;

  final AccessContextManagerGcpUserAccessBindingScopedAccessSettingsScope?
  scope;

  Map<String, Object?> encode() => {
    if (activeSettings != null) 'active_settings': activeSettings!.encode(),
    if (dryRunSettings != null) 'dry_run_settings': dryRunSettings!.encode(),
    if (scope != null) 'scope': scope!.encode(),
  };
}

/// Typed helper for the `scoped_access_settings.active_settings` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingScopedAccessSettingsActiveSettings {
  const AccessContextManagerGcpUserAccessBindingScopedAccessSettingsActiveSettings({
    this.accessLevels,
    this.sessionSettings,
  });

  final TfArg<List<Object?>>? accessLevels;

  final AccessContextManagerGcpUserAccessBindingScopedAccessSettingsActiveSettingsSessionSettings?
  sessionSettings;

  Map<String, Object?> encode() => {
    if (accessLevels != null) 'access_levels': accessLevels!.toTfJson(),
    if (sessionSettings != null) 'session_settings': sessionSettings!.encode(),
  };
}

/// Typed helper for the `scoped_access_settings.active_settings.session_settings` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingScopedAccessSettingsActiveSettingsSessionSettings {
  const AccessContextManagerGcpUserAccessBindingScopedAccessSettingsActiveSettingsSessionSettings({
    this.maxInactivity,
    this.sessionLength,
    this.sessionLengthEnabled,
    this.sessionReauthMethod,
    this.useOidcMaxAge,
  });

  final TfArg<String>? maxInactivity;

  final TfArg<String>? sessionLength;

  final TfArg<bool>? sessionLengthEnabled;

  final TfArg<
    AccessContextManagerGcpUserAccessBindingScopedAccessSettingsActiveSettingsSessionSettingsSessionReauthMethod
  >?
  sessionReauthMethod;

  final TfArg<bool>? useOidcMaxAge;

  Map<String, Object?> encode() => {
    if (maxInactivity != null) 'max_inactivity': maxInactivity!.toTfJson(),
    if (sessionLength != null) 'session_length': sessionLength!.toTfJson(),
    if (sessionLengthEnabled != null)
      'session_length_enabled': sessionLengthEnabled!.toTfJson(),
    if (sessionReauthMethod != null)
      'session_reauth_method': sessionReauthMethod!.toTfJson(),
    if (useOidcMaxAge != null) 'use_oidc_max_age': useOidcMaxAge!.toTfJson(),
  };
}

/// `session_reauth_method` — derived from the provider schema description.
enum AccessContextManagerGcpUserAccessBindingScopedAccessSettingsActiveSettingsSessionSettingsSessionReauthMethod
    implements TerraformEnum {
  login('LOGIN'),
  securityKey('SECURITY_KEY'),
  password('PASSWORD');

  const AccessContextManagerGcpUserAccessBindingScopedAccessSettingsActiveSettingsSessionSettingsSessionReauthMethod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `scoped_access_settings.dry_run_settings` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingScopedAccessSettingsDryRunSettings {
  const AccessContextManagerGcpUserAccessBindingScopedAccessSettingsDryRunSettings({
    this.accessLevels,
  });

  final TfArg<List<Object?>>? accessLevels;

  Map<String, Object?> encode() => {
    if (accessLevels != null) 'access_levels': accessLevels!.toTfJson(),
  };
}

/// Typed helper for the `scoped_access_settings.scope` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingScopedAccessSettingsScope {
  const AccessContextManagerGcpUserAccessBindingScopedAccessSettingsScope({
    this.clientScope,
  });

  final AccessContextManagerGcpUserAccessBindingScopedAccessSettingsScopeClientScope?
  clientScope;

  Map<String, Object?> encode() => {
    if (clientScope != null) 'client_scope': clientScope!.encode(),
  };
}

/// Typed helper for the `scoped_access_settings.scope.client_scope` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingScopedAccessSettingsScopeClientScope {
  const AccessContextManagerGcpUserAccessBindingScopedAccessSettingsScopeClientScope({
    this.restrictedClientApplication,
  });

  final AccessContextManagerGcpUserAccessBindingScopedAccessSettingsScopeClientScopeRestrictedClientApplication?
  restrictedClientApplication;

  Map<String, Object?> encode() => {
    if (restrictedClientApplication != null)
      'restricted_client_application': restrictedClientApplication!.encode(),
  };
}

/// Typed helper for the `scoped_access_settings.scope.client_scope.restricted_client_application` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
@immutable
final class AccessContextManagerGcpUserAccessBindingScopedAccessSettingsScopeClientScopeRestrictedClientApplication {
  const AccessContextManagerGcpUserAccessBindingScopedAccessSettingsScopeClientScopeRestrictedClientApplication({
    this.clientId,
    this.name,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// Typed helper for the `session_settings` block of
/// `google_access_context_manager_gcp_user_access_binding` (derived from provider schema).
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

  final TfArg<
    AccessContextManagerGcpUserAccessBindingSessionSettingsSessionReauthMethod
  >?
  sessionReauthMethod;

  final TfArg<bool>? useOidcMaxAge;

  Map<String, Object?> encode() => {
    if (maxInactivity != null) 'max_inactivity': maxInactivity!.toTfJson(),
    if (sessionLength != null) 'session_length': sessionLength!.toTfJson(),
    if (sessionLengthEnabled != null)
      'session_length_enabled': sessionLengthEnabled!.toTfJson(),
    if (sessionReauthMethod != null)
      'session_reauth_method': sessionReauthMethod!.toTfJson(),
    if (useOidcMaxAge != null) 'use_oidc_max_age': useOidcMaxAge!.toTfJson(),
  };
}

/// `session_reauth_method` — derived from the provider schema description.
enum AccessContextManagerGcpUserAccessBindingSessionSettingsSessionReauthMethod
    implements TerraformEnum {
  login('LOGIN'),
  securityKey('SECURITY_KEY'),
  password('PASSWORD');

  const AccessContextManagerGcpUserAccessBindingSessionSettingsSessionReauthMethod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    TfArg<String>? groupKey,
    required TfArg<String> organizationId,
    List<AccessContextManagerGcpUserAccessBindingScopedAccessSettings>?
    scopedAccessSettings,
    AccessContextManagerGcpUserAccessBindingSessionSettings? sessionSettings,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accessLevels != null) 'access_levels': accessLevels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (groupKey != null) 'group_key': groupKey,
           'organization_id': organizationId,
           if (scopedAccessSettings != null)
             'scoped_access_settings': TfArg.literal([
               for (final e in scopedAccessSettings) e.encode(),
             ]),
           if (sessionSettings != null)
             'session_settings': TfArg.literal(sessionSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerGcpUserAccessBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
