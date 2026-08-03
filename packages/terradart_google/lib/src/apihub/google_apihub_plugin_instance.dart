// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final ApihubPluginInstanceActionsCurationConfig? curationConfig;

  Map<String, Object?> encode() => {
    'action_id': actionId.toTfJson(),
    if (scheduleCronExpression != null)
      'schedule_cron_expression': scheduleCronExpression!.toTfJson(),
    if (scheduleTimeZone != null)
      'schedule_time_zone': scheduleTimeZone!.toTfJson(),
    if (curationConfig != null) 'curation_config': curationConfig!.encode(),
  };
}

/// Typed helper for the `actions.curation_config` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceActionsCurationConfig {
  const ApihubPluginInstanceActionsCurationConfig({
    this.curationType,
    this.customCuration,
  });

  final TfArg<String>? curationType;

  final ApihubPluginInstanceActionsCurationConfigCustomCuration? customCuration;

  Map<String, Object?> encode() => {
    if (curationType != null) 'curation_type': curationType!.toTfJson(),
    if (customCuration != null) 'custom_curation': customCuration!.encode(),
  };
}

/// Typed helper for the `actions.curation_config.custom_curation` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceActionsCurationConfigCustomCuration {
  const ApihubPluginInstanceActionsCurationConfigCustomCuration({
    required this.curation,
  });

  final TfArg<String> curation;

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

  final ApihubPluginInstanceAuthConfigApiKeyConfig? apiKeyConfig;

  final ApihubPluginInstanceAuthConfigGoogleServiceAccountConfig?
  googleServiceAccountConfig;

  final ApihubPluginInstanceAuthConfigOauth2ClientCredentialsConfig?
  oauth2ClientCredentialsConfig;

  final ApihubPluginInstanceAuthConfigUserPasswordConfig? userPasswordConfig;

  Map<String, Object?> encode() => {
    'auth_type': authType.toTfJson(),
    if (apiKeyConfig != null) 'api_key_config': apiKeyConfig!.encode(),
    if (googleServiceAccountConfig != null)
      'google_service_account_config': googleServiceAccountConfig!.encode(),
    if (oauth2ClientCredentialsConfig != null)
      'oauth2_client_credentials_config': oauth2ClientCredentialsConfig!
          .encode(),
    if (userPasswordConfig != null)
      'user_password_config': userPasswordConfig!.encode(),
  };
}

/// Typed helper for the `auth_config.api_key_config` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceAuthConfigApiKeyConfig {
  const ApihubPluginInstanceAuthConfigApiKeyConfig({
    required this.httpElementLocation,
    required this.name,
    required this.apiKey,
  });

  final TfArg<String> httpElementLocation;

  final TfArg<String> name;

  final ApihubPluginInstanceAuthConfigApiKeyConfigApiKey apiKey;

  Map<String, Object?> encode() => {
    'http_element_location': httpElementLocation.toTfJson(),
    'name': name.toTfJson(),
    'api_key': apiKey.encode(),
  };
}

/// Typed helper for the `auth_config.api_key_config.api_key` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceAuthConfigApiKeyConfigApiKey {
  const ApihubPluginInstanceAuthConfigApiKeyConfigApiKey({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.google_service_account_config` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceAuthConfigGoogleServiceAccountConfig {
  const ApihubPluginInstanceAuthConfigGoogleServiceAccountConfig({
    required this.serviceAccount,
  });

  final TfArg<String> serviceAccount;

  Map<String, Object?> encode() => {
    'service_account': serviceAccount.toTfJson(),
  };
}

/// Typed helper for the `auth_config.oauth2_client_credentials_config` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceAuthConfigOauth2ClientCredentialsConfig {
  const ApihubPluginInstanceAuthConfigOauth2ClientCredentialsConfig({
    required this.clientId,
    required this.clientSecret,
  });

  final TfArg<String> clientId;

  final ApihubPluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret
  clientSecret;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.encode(),
  };
}

/// Typed helper for the `auth_config.oauth2_client_credentials_config.client_secret` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret {
  const ApihubPluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.user_password_config` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceAuthConfigUserPasswordConfig {
  const ApihubPluginInstanceAuthConfigUserPasswordConfig({
    required this.username,
    required this.password,
  });

  final TfArg<String> username;

  final ApihubPluginInstanceAuthConfigUserPasswordConfigPassword password;

  Map<String, Object?> encode() => {
    'username': username.toTfJson(),
    'password': password.encode(),
  };
}

/// Typed helper for the `auth_config.user_password_config.password` block of
/// `google_apihub_plugin_instance` (derived from provider schema).
@immutable
final class ApihubPluginInstanceAuthConfigUserPasswordConfigPassword {
  const ApihubPluginInstanceAuthConfigUserPasswordConfigPassword({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

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

  GoogleApihubPluginInstance({
    required super.localName,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'plugin': plugin,
           'plugin_instance_id': pluginInstanceId,
           'display_name': displayName,
           if (disable != null) 'disable': disable,
           if (authConfig != null)
             'auth_config': TfArg.literal(authConfig.encode()),
           if (actions != null)
             'actions': TfArg.literal([for (final e in actions) e.encode()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApihubPluginInstanceSensitive;

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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
