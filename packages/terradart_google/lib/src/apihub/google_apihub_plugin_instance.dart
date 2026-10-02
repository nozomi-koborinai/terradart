// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_apihub_plugin_instance`.
const Set<String> _googleApihubPluginInstanceSensitive = <String>{};

/// Typed helper for the `actions` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceActions {
  const ApihubPluginInstanceActions({
    required this.actionId,
    this.scheduleCronExpression,
    this.scheduleTimeZone,
    this.curationConfig,
  });

  final TfArg<String> actionId;

  final TfArg<String>? scheduleCronExpression;

  final TfArg<String>? scheduleTimeZone;

  final ApihubPluginInstanceCurationConfig? curationConfig;

  @internal
  Map<String, Object?> encode() => {
    'action_id': actionId.toTfJson(),
    'schedule_cron_expression': ?scheduleCronExpression?.toTfJson(),
    'schedule_time_zone': ?scheduleTimeZone?.toTfJson(),
    'curation_config': ?curationConfig?.encode(),
  };
}

/// Typed helper for the `actions.curation_config` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceCurationConfig {
  const ApihubPluginInstanceCurationConfig({
    this.curationType,
    this.customCuration,
  });

  final TfArg<String>? curationType;

  final ApihubPluginInstanceCustomCuration? customCuration;

  @internal
  Map<String, Object?> encode() => {
    'curation_type': ?curationType?.toTfJson(),
    'custom_curation': ?customCuration?.encode(),
  };
}

/// Typed helper for the `actions.curation_config.custom_curation` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceCustomCuration {
  const ApihubPluginInstanceCustomCuration({required this.curation});

  final TfArg<String> curation;

  @internal
  Map<String, Object?> encode() => {'curation': curation.toTfJson()};
}

/// Typed helper for the `auth_config` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceAuthConfig {
  const ApihubPluginInstanceAuthConfig({
    required this.authType,
    this.apiKeyConfig,
    this.googleServiceAccountConfig,
    this.oauth2ClientCredentialsConfig,
    this.userPasswordConfig,
  });

  final TfArg<String> authType;

  final ApihubPluginInstanceApiKeyConfig? apiKeyConfig;

  final ApihubPluginInstanceGoogleServiceAccountConfig?
  googleServiceAccountConfig;

  final ApihubPluginInstanceOauth2ClientCredentialsConfig?
  oauth2ClientCredentialsConfig;

  final ApihubPluginInstanceUserPasswordConfig? userPasswordConfig;

  @internal
  Map<String, Object?> encode() => {
    'auth_type': authType.toTfJson(),
    'api_key_config': ?apiKeyConfig?.encode(),
    'google_service_account_config': ?googleServiceAccountConfig?.encode(),
    'oauth2_client_credentials_config': ?oauth2ClientCredentialsConfig
        ?.encode(),
    'user_password_config': ?userPasswordConfig?.encode(),
  };
}

/// Typed helper for the `auth_config.api_key_config` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceApiKeyConfig {
  const ApihubPluginInstanceApiKeyConfig({
    required this.httpElementLocation,
    required this.name,
    required this.apiKey,
  });

  final TfArg<String> httpElementLocation;

  final TfArg<String> name;

  final ApihubPluginInstanceApiKey apiKey;

  @internal
  Map<String, Object?> encode() => {
    'http_element_location': httpElementLocation.toTfJson(),
    'name': name.toTfJson(),
    'api_key': apiKey.encode(),
  };
}

/// Typed helper for the `auth_config.api_key_config.api_key` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceApiKey {
  const ApihubPluginInstanceApiKey({required this.secretVersion});

  final TfArg<String> secretVersion;

  @internal
  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.google_service_account_config` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceGoogleServiceAccountConfig {
  const ApihubPluginInstanceGoogleServiceAccountConfig({
    required this.serviceAccount,
  });

  final RefTo<GoogleServiceAccount> serviceAccount;

  @internal
  Map<String, Object?> encode() => {
    'service_account': serviceAccount.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `auth_config.oauth2_client_credentials_config` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceOauth2ClientCredentialsConfig {
  const ApihubPluginInstanceOauth2ClientCredentialsConfig({
    required this.clientId,
    required this.clientSecret,
  });

  final TfArg<String> clientId;

  final ApihubPluginInstanceClientSecret clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.encode(),
  };
}

/// Typed helper for the `auth_config.oauth2_client_credentials_config.client_secret` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceClientSecret {
  const ApihubPluginInstanceClientSecret({required this.secretVersion});

  final TfArg<String> secretVersion;

  @internal
  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.user_password_config` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceUserPasswordConfig {
  const ApihubPluginInstanceUserPasswordConfig({
    required this.username,
    required this.password,
  });

  final TfArg<String> username;

  final ApihubPluginInstancePassword password;

  @internal
  Map<String, Object?> encode() => {
    'username': username.toTfJson(),
    'password': password.encode(),
  };
}

/// Typed helper for the `auth_config.user_password_config.password` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstancePassword {
  const ApihubPluginInstancePassword({required this.secretVersion});

  final TfArg<String> secretVersion;

  @internal
  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Factory wrapper for `google_apihub_plugin_instance`.
///
/// Description
///
/// API Hub **plugin instance** — runs a [GoogleApihubPlugin] with
/// auth/actions configuration against the hub catalog.
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (`list_services` API Hub → empty; Apigee `1C2D-8C78-EC58`
/// `list_skus` keyword Hub → 0). billing-behavior: plugin-instance
/// config metadata — no existence/hourly charge observed. Requires a
/// parent plugin + API Hub host ([GoogleApihubApiHubInstance] is
/// never_apply); not standalone-project applyable on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApihubPluginInstance extends Resource {
  static const String tfType = 'google_apihub_plugin_instance';

  GoogleApihubPluginInstance(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> plugin,
    required TfArg<String> pluginInstanceId,
    required TfArg<String> displayName,
    TfArg<bool>? disable,
    ApihubPluginInstanceAuthConfig? authConfig,
    List<ApihubPluginInstanceActions>? actions,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'plugin': plugin,
           'plugin_instance_id': pluginInstanceId,
           'display_name': displayName,
           'disable': ?disable,
           if (authConfig != null)
             'auth_config': TfArg.literal(authConfig.encode()),
           if (actions != null)
             'actions': TfArg.literal([for (final e in actions) e.encode()]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApihubPluginInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApihubPluginInstance>`.
  RefTo<GoogleApihubPluginInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `error_message` attribute.
  TfRef<String> get errorMessage =>
      TfRef.attribute<String>(this, 'error_message');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disable` attribute.
  TfRef<bool> get disable => TfRef.attribute<bool>(this, 'disable');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `plugin` attribute.
  TfRef<String> get plugin => TfRef.attribute<String>(this, 'plugin');

  /// Reference to `plugin_instance_id` attribute.
  TfRef<String> get pluginInstanceId =>
      TfRef.attribute<String>(this, 'plugin_instance_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `source_project_id` attribute.
  TfRef<String> get sourceProjectId =>
      TfRef.attribute<String>(this, 'source_project_id');
}
