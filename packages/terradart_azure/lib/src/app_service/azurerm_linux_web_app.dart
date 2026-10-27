// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_linux_web_app`.
const Set<String> _azurermLinuxWebAppSensitive = <String>{
  'auth_settings.active_directory.client_secret',
  'auth_settings.facebook.app_secret',
  'auth_settings.github.client_secret',
  'auth_settings.google.client_secret',
  'auth_settings.microsoft.client_secret',
  'auth_settings.twitter.consumer_secret',
  'backup.storage_account_url',
  'connection_string.value',
  'custom_domain_verification_id',
  'logs.http_logs.azure_blob_storage.sas_url',
  'site_config.application_stack.docker_registry_password',
  'site_credential',
  'storage_account.access_key',
};

/// Linux Web App Client Certificate enum for `client_certificate_mode`.
extension type const LinuxWebAppClientCertificateMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppClientCertificateMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppClientCertificateMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppClientCertificateMode.arg(TfArg<String> arg) : this._(arg);

  static const optional = LinuxWebAppClientCertificateMode._(
    TfArgLiteral('Optional'),
  );
  static const optionalinteractiveuser = LinuxWebAppClientCertificateMode._(
    TfArgLiteral('OptionalInteractiveUser'),
  );
  static const required = LinuxWebAppClientCertificateMode._(
    TfArgLiteral('Required'),
  );

  static const List<LinuxWebAppClientCertificateMode> values = [
    optional,
    optionalinteractiveuser,
    required,
  ];
}

/// Typed helper for the `auth_settings` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppAuthSettings {
  const LinuxWebAppAuthSettings({
    this.additionalLoginParameters,
    this.allowedExternalRedirectUrls,
    this.defaultProvider,
    required this.enabled,
    this.issuer,
    this.runtimeVersion,
    this.tokenRefreshExtensionHours,
    this.tokenStoreEnabled,
    this.unauthenticatedClientAction,
    this.activeDirectory,
    this.facebook,
    this.github,
    this.google,
    this.microsoft,
    this.twitter,
  });

  final TfArg<Map<String, String>>? additionalLoginParameters;

  final TfArg<List<String>>? allowedExternalRedirectUrls;

  final TfArg<String>? defaultProvider;

  final TfArg<bool> enabled;

  final TfArg<String>? issuer;

  final TfArg<String>? runtimeVersion;

  final TfArg<num>? tokenRefreshExtensionHours;

  final TfArg<bool>? tokenStoreEnabled;

  final TfArg<String>? unauthenticatedClientAction;

  final LinuxWebAppActiveDirectory? activeDirectory;

  final LinuxWebAppFacebook? facebook;

  final LinuxWebAppGithub? github;

  final LinuxWebAppGoogle? google;

  final LinuxWebAppMicrosoft? microsoft;

  final LinuxWebAppTwitter? twitter;

  @internal
  Map<String, Object?> encode() => {
    'additional_login_parameters': ?additionalLoginParameters?.toTfJson(),
    'allowed_external_redirect_urls': ?allowedExternalRedirectUrls?.toTfJson(),
    'default_provider': ?defaultProvider?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'runtime_version': ?runtimeVersion?.toTfJson(),
    'token_refresh_extension_hours': ?tokenRefreshExtensionHours?.toTfJson(),
    'token_store_enabled': ?tokenStoreEnabled?.toTfJson(),
    'unauthenticated_client_action': ?unauthenticatedClientAction?.toTfJson(),
    'active_directory': ?activeDirectory?.encode(),
    'facebook': ?facebook?.encode(),
    'github': ?github?.encode(),
    'google': ?google?.encode(),
    'microsoft': ?microsoft?.encode(),
    'twitter': ?twitter?.encode(),
  };
}

/// Typed helper for the `auth_settings.active_directory` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppActiveDirectory {
  const LinuxWebAppActiveDirectory({
    this.allowedAudiences,
    required this.clientId,
    this.clientSecret,
    this.clientSecretSettingName,
  });

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<String> clientId;

  final Sensitive<String>? clientSecret;

  final TfArg<String>? clientSecretSettingName;

  @internal
  Map<String, Object?> encode() => {
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_setting_name': ?clientSecretSettingName?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings.facebook` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppFacebook {
  const LinuxWebAppFacebook({
    required this.appId,
    this.appSecret,
    this.appSecretSettingName,
    this.oauthScopes,
  });

  final TfArg<String> appId;

  final Sensitive<String>? appSecret;

  final TfArg<String>? appSecretSettingName;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'app_id': appId.toTfJson(),
    'app_secret': ?appSecret?.toTfJson(),
    'app_secret_setting_name': ?appSecretSettingName?.toTfJson(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings.github` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppGithub {
  const LinuxWebAppGithub({
    required this.clientId,
    this.clientSecret,
    this.clientSecretSettingName,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final Sensitive<String>? clientSecret;

  final TfArg<String>? clientSecretSettingName;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_setting_name': ?clientSecretSettingName?.toTfJson(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings.google` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppGoogle {
  const LinuxWebAppGoogle({
    required this.clientId,
    this.clientSecret,
    this.clientSecretSettingName,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final Sensitive<String>? clientSecret;

  final TfArg<String>? clientSecretSettingName;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_setting_name': ?clientSecretSettingName?.toTfJson(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings.microsoft` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppMicrosoft {
  const LinuxWebAppMicrosoft({
    required this.clientId,
    this.clientSecret,
    this.clientSecretSettingName,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final Sensitive<String>? clientSecret;

  final TfArg<String>? clientSecretSettingName;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_setting_name': ?clientSecretSettingName?.toTfJson(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings.twitter` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppTwitter {
  const LinuxWebAppTwitter({
    required this.consumerKey,
    this.consumerSecret,
    this.consumerSecretSettingName,
  });

  final TfArg<String> consumerKey;

  final Sensitive<String>? consumerSecret;

  final TfArg<String>? consumerSecretSettingName;

  @internal
  Map<String, Object?> encode() => {
    'consumer_key': consumerKey.toTfJson(),
    'consumer_secret': ?consumerSecret?.toTfJson(),
    'consumer_secret_setting_name': ?consumerSecretSettingName?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings_v2` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppAuthSettingsV2 {
  const LinuxWebAppAuthSettingsV2({
    this.authEnabled,
    this.configFilePath,
    this.defaultProvider,
    this.excludedPaths,
    this.forwardProxyConvention,
    this.forwardProxyCustomHostHeaderName,
    this.forwardProxyCustomSchemeHeaderName,
    this.httpRouteApiPrefix,
    this.requireAuthentication,
    this.requireHttps,
    this.runtimeVersion,
    this.unauthenticatedAction,
    this.activeDirectoryV2,
    this.appleV2,
    this.azureStaticWebAppV2,
    this.customOidcV2,
    this.facebookV2,
    this.githubV2,
    this.googleV2,
    required this.login,
    this.microsoftV2,
    this.twitterV2,
  });

  final TfArg<bool>? authEnabled;

  final TfArg<String>? configFilePath;

  final TfArg<String>? defaultProvider;

  final TfArg<List<String>>? excludedPaths;

  final TfArg<String>? forwardProxyConvention;

  final TfArg<String>? forwardProxyCustomHostHeaderName;

  final TfArg<String>? forwardProxyCustomSchemeHeaderName;

  final TfArg<String>? httpRouteApiPrefix;

  final TfArg<bool>? requireAuthentication;

  final TfArg<bool>? requireHttps;

  final TfArg<String>? runtimeVersion;

  final TfArg<String>? unauthenticatedAction;

  final LinuxWebAppActiveDirectoryV2? activeDirectoryV2;

  final LinuxWebAppAppleV2? appleV2;

  final LinuxWebAppAzureStaticWebAppV2? azureStaticWebAppV2;

  final List<LinuxWebAppCustomOidcV2>? customOidcV2;

  final LinuxWebAppFacebookV2? facebookV2;

  final LinuxWebAppGithubV2? githubV2;

  final LinuxWebAppGoogleV2? googleV2;

  final LinuxWebAppLogin login;

  final LinuxWebAppMicrosoftV2? microsoftV2;

  final LinuxWebAppTwitterV2? twitterV2;

  @internal
  Map<String, Object?> encode() => {
    'auth_enabled': ?authEnabled?.toTfJson(),
    'config_file_path': ?configFilePath?.toTfJson(),
    'default_provider': ?defaultProvider?.toTfJson(),
    'excluded_paths': ?excludedPaths?.toTfJson(),
    'forward_proxy_convention': ?forwardProxyConvention?.toTfJson(),
    'forward_proxy_custom_host_header_name': ?forwardProxyCustomHostHeaderName
        ?.toTfJson(),
    'forward_proxy_custom_scheme_header_name':
        ?forwardProxyCustomSchemeHeaderName?.toTfJson(),
    'http_route_api_prefix': ?httpRouteApiPrefix?.toTfJson(),
    'require_authentication': ?requireAuthentication?.toTfJson(),
    'require_https': ?requireHttps?.toTfJson(),
    'runtime_version': ?runtimeVersion?.toTfJson(),
    'unauthenticated_action': ?unauthenticatedAction?.toTfJson(),
    'active_directory_v2': ?activeDirectoryV2?.encode(),
    'apple_v2': ?appleV2?.encode(),
    'azure_static_web_app_v2': ?azureStaticWebAppV2?.encode(),
    if (customOidcV2 != null)
      'custom_oidc_v2': [for (final e in customOidcV2!) e.encode()],
    'facebook_v2': ?facebookV2?.encode(),
    'github_v2': ?githubV2?.encode(),
    'google_v2': ?googleV2?.encode(),
    'login': login.encode(),
    'microsoft_v2': ?microsoftV2?.encode(),
    'twitter_v2': ?twitterV2?.encode(),
  };
}

/// Typed helper for the `auth_settings_v2.active_directory_v2` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppActiveDirectoryV2 {
  const LinuxWebAppActiveDirectoryV2({
    this.allowedApplications,
    this.allowedAudiences,
    this.allowedGroups,
    this.allowedIdentities,
    required this.clientId,
    this.clientSecretCertificateThumbprint,
    this.clientSecretSettingName,
    this.jwtAllowedClientApplications,
    this.jwtAllowedGroups,
    this.loginParameters,
    required this.tenantAuthEndpoint,
    this.wwwAuthenticationDisabled,
  });

  final TfArg<List<String>>? allowedApplications;

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<List<String>>? allowedGroups;

  final TfArg<List<String>>? allowedIdentities;

  final TfArg<String> clientId;

  final TfArg<String>? clientSecretCertificateThumbprint;

  final TfArg<String>? clientSecretSettingName;

  final TfArg<List<String>>? jwtAllowedClientApplications;

  final TfArg<List<String>>? jwtAllowedGroups;

  final TfArg<Map<String, String>>? loginParameters;

  final TfArg<String> tenantAuthEndpoint;

  final TfArg<bool>? wwwAuthenticationDisabled;

  @internal
  Map<String, Object?> encode() => {
    'allowed_applications': ?allowedApplications?.toTfJson(),
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'allowed_groups': ?allowedGroups?.toTfJson(),
    'allowed_identities': ?allowedIdentities?.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret_certificate_thumbprint': ?clientSecretCertificateThumbprint
        ?.toTfJson(),
    'client_secret_setting_name': ?clientSecretSettingName?.toTfJson(),
    'jwt_allowed_client_applications': ?jwtAllowedClientApplications
        ?.toTfJson(),
    'jwt_allowed_groups': ?jwtAllowedGroups?.toTfJson(),
    'login_parameters': ?loginParameters?.toTfJson(),
    'tenant_auth_endpoint': tenantAuthEndpoint.toTfJson(),
    'www_authentication_disabled': ?wwwAuthenticationDisabled?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings_v2.apple_v2` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppAppleV2 {
  const LinuxWebAppAppleV2({
    required this.clientId,
    required this.clientSecretSettingName,
  });

  final TfArg<String> clientId;

  final TfArg<String> clientSecretSettingName;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret_setting_name': clientSecretSettingName.toTfJson(),
  };
}

/// Typed helper for the `auth_settings_v2.azure_static_web_app_v2` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppAzureStaticWebAppV2 {
  const LinuxWebAppAzureStaticWebAppV2({required this.clientId});

  final TfArg<String> clientId;

  @internal
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// Typed helper for the `auth_settings_v2.custom_oidc_v2` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppCustomOidcV2 {
  const LinuxWebAppCustomOidcV2({
    required this.clientId,
    required this.name,
    this.nameClaimType,
    required this.openidConfigurationEndpoint,
    this.scopes,
  });

  final TfArg<String> clientId;

  final TfArg<String> name;

  final TfArg<String>? nameClaimType;

  final TfArg<String> openidConfigurationEndpoint;

  final TfArg<List<String>>? scopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'name': name.toTfJson(),
    'name_claim_type': ?nameClaimType?.toTfJson(),
    'openid_configuration_endpoint': openidConfigurationEndpoint.toTfJson(),
    'scopes': ?scopes?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings_v2.facebook_v2` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppFacebookV2 {
  const LinuxWebAppFacebookV2({
    required this.appId,
    required this.appSecretSettingName,
    this.graphApiVersion,
    this.loginScopes,
  });

  final TfArg<String> appId;

  final TfArg<String> appSecretSettingName;

  final TfArg<String>? graphApiVersion;

  final TfArg<List<String>>? loginScopes;

  @internal
  Map<String, Object?> encode() => {
    'app_id': appId.toTfJson(),
    'app_secret_setting_name': appSecretSettingName.toTfJson(),
    'graph_api_version': ?graphApiVersion?.toTfJson(),
    'login_scopes': ?loginScopes?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings_v2.github_v2` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppGithubV2 {
  const LinuxWebAppGithubV2({
    required this.clientId,
    required this.clientSecretSettingName,
    this.loginScopes,
  });

  final TfArg<String> clientId;

  final TfArg<String> clientSecretSettingName;

  final TfArg<List<String>>? loginScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret_setting_name': clientSecretSettingName.toTfJson(),
    'login_scopes': ?loginScopes?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings_v2.google_v2` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppGoogleV2 {
  const LinuxWebAppGoogleV2({
    this.allowedAudiences,
    required this.clientId,
    required this.clientSecretSettingName,
    this.loginScopes,
  });

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<String> clientId;

  final TfArg<String> clientSecretSettingName;

  final TfArg<List<String>>? loginScopes;

  @internal
  Map<String, Object?> encode() => {
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret_setting_name': clientSecretSettingName.toTfJson(),
    'login_scopes': ?loginScopes?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings_v2.login` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppLogin {
  const LinuxWebAppLogin({
    this.allowedExternalRedirectUrls,
    this.cookieExpirationConvention,
    this.cookieExpirationTime,
    this.logoutEndpoint,
    this.nonceExpirationTime,
    this.preserveUrlFragmentsForLogins,
    this.tokenRefreshExtensionTime,
    this.tokenStoreEnabled,
    this.tokenStorePath,
    this.tokenStoreSasSettingName,
    this.validateNonce,
  });

  final TfArg<List<String>>? allowedExternalRedirectUrls;

  final TfArg<String>? cookieExpirationConvention;

  final TfArg<String>? cookieExpirationTime;

  final TfArg<String>? logoutEndpoint;

  final TfArg<String>? nonceExpirationTime;

  final TfArg<bool>? preserveUrlFragmentsForLogins;

  final TfArg<num>? tokenRefreshExtensionTime;

  final TfArg<bool>? tokenStoreEnabled;

  final TfArg<String>? tokenStorePath;

  final TfArg<String>? tokenStoreSasSettingName;

  final TfArg<bool>? validateNonce;

  @internal
  Map<String, Object?> encode() => {
    'allowed_external_redirect_urls': ?allowedExternalRedirectUrls?.toTfJson(),
    'cookie_expiration_convention': ?cookieExpirationConvention?.toTfJson(),
    'cookie_expiration_time': ?cookieExpirationTime?.toTfJson(),
    'logout_endpoint': ?logoutEndpoint?.toTfJson(),
    'nonce_expiration_time': ?nonceExpirationTime?.toTfJson(),
    'preserve_url_fragments_for_logins': ?preserveUrlFragmentsForLogins
        ?.toTfJson(),
    'token_refresh_extension_time': ?tokenRefreshExtensionTime?.toTfJson(),
    'token_store_enabled': ?tokenStoreEnabled?.toTfJson(),
    'token_store_path': ?tokenStorePath?.toTfJson(),
    'token_store_sas_setting_name': ?tokenStoreSasSettingName?.toTfJson(),
    'validate_nonce': ?validateNonce?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings_v2.microsoft_v2` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppMicrosoftV2 {
  const LinuxWebAppMicrosoftV2({
    this.allowedAudiences,
    required this.clientId,
    required this.clientSecretSettingName,
    this.loginScopes,
  });

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<String> clientId;

  final TfArg<String> clientSecretSettingName;

  final TfArg<List<String>>? loginScopes;

  @internal
  Map<String, Object?> encode() => {
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret_setting_name': clientSecretSettingName.toTfJson(),
    'login_scopes': ?loginScopes?.toTfJson(),
  };
}

/// Typed helper for the `auth_settings_v2.twitter_v2` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppTwitterV2 {
  const LinuxWebAppTwitterV2({
    required this.consumerKey,
    required this.consumerSecretSettingName,
  });

  final TfArg<String> consumerKey;

  final TfArg<String> consumerSecretSettingName;

  @internal
  Map<String, Object?> encode() => {
    'consumer_key': consumerKey.toTfJson(),
    'consumer_secret_setting_name': consumerSecretSettingName.toTfJson(),
  };
}

/// Typed helper for the `backup` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppBackup {
  const LinuxWebAppBackup({
    this.enabled,
    required this.name,
    required this.storageAccountUrl,
    required this.schedule,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final Sensitive<String> storageAccountUrl;

  final LinuxWebAppSchedule schedule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'storage_account_url': storageAccountUrl.toTfJson(),
    'schedule': schedule.encode(),
  };
}

/// Typed helper for the `backup.schedule` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppSchedule {
  const LinuxWebAppSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    this.keepAtLeastOneBackup,
    this.retentionPeriodDays,
    this.startTime,
  });

  final TfArg<num> frequencyInterval;

  final TfArg<String> frequencyUnit;

  final TfArg<bool>? keepAtLeastOneBackup;

  final TfArg<num>? retentionPeriodDays;

  final TfArg<String>? startTime;

  @internal
  Map<String, Object?> encode() => {
    'frequency_interval': frequencyInterval.toTfJson(),
    'frequency_unit': frequencyUnit.toTfJson(),
    'keep_at_least_one_backup': ?keepAtLeastOneBackup?.toTfJson(),
    'retention_period_days': ?retentionPeriodDays?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
  };
}

/// Typed helper for the `connection_string` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppConnectionString {
  const LinuxWebAppConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppIdentity {
  const LinuxWebAppIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `logs` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppLogs {
  const LinuxWebAppLogs({
    this.detailedErrorMessages,
    this.failedRequestTracing,
    this.applicationLogs,
    this.httpLogs,
  });

  final TfArg<bool>? detailedErrorMessages;

  final TfArg<bool>? failedRequestTracing;

  final LinuxWebAppApplicationLogs? applicationLogs;

  final LinuxWebAppHttpLogs? httpLogs;

  @internal
  Map<String, Object?> encode() => {
    'detailed_error_messages': ?detailedErrorMessages?.toTfJson(),
    'failed_request_tracing': ?failedRequestTracing?.toTfJson(),
    'application_logs': ?applicationLogs?.encode(),
    'http_logs': ?httpLogs?.encode(),
  };
}

/// Typed helper for the `logs.application_logs` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppApplicationLogs {
  const LinuxWebAppApplicationLogs({
    required this.fileSystemLevel,
    this.azureBlobStorage,
  });

  final TfArg<String> fileSystemLevel;

  final LinuxWebAppApplicationLogsAzureBlobStorage? azureBlobStorage;

  @internal
  Map<String, Object?> encode() => {
    'file_system_level': fileSystemLevel.toTfJson(),
    'azure_blob_storage': ?azureBlobStorage?.encode(),
  };
}

/// Typed helper for the `logs.application_logs.azure_blob_storage` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppApplicationLogsAzureBlobStorage {
  const LinuxWebAppApplicationLogsAzureBlobStorage({
    required this.level,
    required this.retentionInDays,
    required this.sasUrl,
  });

  final TfArg<String> level;

  final TfArg<num> retentionInDays;

  final TfArg<String> sasUrl;

  @internal
  Map<String, Object?> encode() => {
    'level': level.toTfJson(),
    'retention_in_days': retentionInDays.toTfJson(),
    'sas_url': sasUrl.toTfJson(),
  };
}

/// Typed helper for the `logs.http_logs` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppHttpLogs {
  const LinuxWebAppHttpLogs({this.azureBlobStorage, this.fileSystem});

  final LinuxWebAppHttpLogsAzureBlobStorage? azureBlobStorage;

  final LinuxWebAppFileSystem? fileSystem;

  @internal
  Map<String, Object?> encode() => {
    'azure_blob_storage': ?azureBlobStorage?.encode(),
    'file_system': ?fileSystem?.encode(),
  };
}

/// Typed helper for the `logs.http_logs.azure_blob_storage` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppHttpLogsAzureBlobStorage {
  const LinuxWebAppHttpLogsAzureBlobStorage({
    this.retentionInDays,
    required this.sasUrl,
  });

  final TfArg<num>? retentionInDays;

  final Sensitive<String> sasUrl;

  @internal
  Map<String, Object?> encode() => {
    'retention_in_days': ?retentionInDays?.toTfJson(),
    'sas_url': sasUrl.toTfJson(),
  };
}

/// Typed helper for the `logs.http_logs.file_system` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppFileSystem {
  const LinuxWebAppFileSystem({
    required this.retentionInDays,
    required this.retentionInMb,
  });

  final TfArg<num> retentionInDays;

  final TfArg<num> retentionInMb;

  @internal
  Map<String, Object?> encode() => {
    'retention_in_days': retentionInDays.toTfJson(),
    'retention_in_mb': retentionInMb.toTfJson(),
  };
}

/// Typed helper for the `site_config` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppSiteConfig {
  const LinuxWebAppSiteConfig({
    this.alwaysOn,
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.containerRegistryManagedIdentityClientId,
    this.containerRegistryUseManagedIdentity,
    this.defaultDocuments,
    this.ftpsState,
    this.healthCheckEvictionTimeInMin,
    this.healthCheckPath,
    this.http2Enabled,
    this.ipRestrictionDefaultAction,
    this.loadBalancingMode,
    this.localMysqlEnabled,
    this.managedPipelineMode,
    this.minimumTlsCipherSuite,
    this.minimumTlsVersion,
    this.remoteDebuggingEnabled,
    this.remoteDebuggingVersion,
    this.scmIpRestrictionDefaultAction,
    this.scmMinimumTlsVersion,
    this.scmUseMainIpRestriction,
    this.use32BitWorker,
    this.vnetRouteAllEnabled,
    this.websocketsEnabled,
    this.workerCount,
    this.applicationStack,
    this.autoHealSetting,
    this.cors,
    this.ipRestriction,
    this.scmIpRestriction,
  });

  final TfArg<bool>? alwaysOn;

  final TfArg<String>? apiDefinitionUrl;

  final TfArg<String>? apiManagementApiId;

  final TfArg<String>? appCommandLine;

  final TfArg<String>? containerRegistryManagedIdentityClientId;

  final TfArg<bool>? containerRegistryUseManagedIdentity;

  final TfArg<List<String>>? defaultDocuments;

  final TfArg<String>? ftpsState;

  final TfArg<num>? healthCheckEvictionTimeInMin;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final TfArg<String>? ipRestrictionDefaultAction;

  final TfArg<String>? loadBalancingMode;

  final TfArg<bool>? localMysqlEnabled;

  final TfArg<String>? managedPipelineMode;

  final TfArg<String>? minimumTlsCipherSuite;

  final TfArg<String>? minimumTlsVersion;

  final TfArg<bool>? remoteDebuggingEnabled;

  final TfArg<String>? remoteDebuggingVersion;

  final TfArg<String>? scmIpRestrictionDefaultAction;

  final TfArg<String>? scmMinimumTlsVersion;

  final TfArg<bool>? scmUseMainIpRestriction;

  final TfArg<bool>? use32BitWorker;

  final TfArg<bool>? vnetRouteAllEnabled;

  final TfArg<bool>? websocketsEnabled;

  final TfArg<num>? workerCount;

  final LinuxWebAppApplicationStack? applicationStack;

  final LinuxWebAppAutoHealSetting? autoHealSetting;

  final LinuxWebAppCors? cors;

  final List<LinuxWebAppIpRestriction>? ipRestriction;

  final List<LinuxWebAppScmIpRestriction>? scmIpRestriction;

  @internal
  Map<String, Object?> encode() => {
    'always_on': ?alwaysOn?.toTfJson(),
    'api_definition_url': ?apiDefinitionUrl?.toTfJson(),
    'api_management_api_id': ?apiManagementApiId?.toTfJson(),
    'app_command_line': ?appCommandLine?.toTfJson(),
    'container_registry_managed_identity_client_id':
        ?containerRegistryManagedIdentityClientId?.toTfJson(),
    'container_registry_use_managed_identity':
        ?containerRegistryUseManagedIdentity?.toTfJson(),
    'default_documents': ?defaultDocuments?.toTfJson(),
    'ftps_state': ?ftpsState?.toTfJson(),
    'health_check_eviction_time_in_min': ?healthCheckEvictionTimeInMin
        ?.toTfJson(),
    'health_check_path': ?healthCheckPath?.toTfJson(),
    'http2_enabled': ?http2Enabled?.toTfJson(),
    'ip_restriction_default_action': ?ipRestrictionDefaultAction?.toTfJson(),
    'load_balancing_mode': ?loadBalancingMode?.toTfJson(),
    'local_mysql_enabled': ?localMysqlEnabled?.toTfJson(),
    'managed_pipeline_mode': ?managedPipelineMode?.toTfJson(),
    'minimum_tls_cipher_suite': ?minimumTlsCipherSuite?.toTfJson(),
    'minimum_tls_version': ?minimumTlsVersion?.toTfJson(),
    'remote_debugging_enabled': ?remoteDebuggingEnabled?.toTfJson(),
    'remote_debugging_version': ?remoteDebuggingVersion?.toTfJson(),
    'scm_ip_restriction_default_action': ?scmIpRestrictionDefaultAction
        ?.toTfJson(),
    'scm_minimum_tls_version': ?scmMinimumTlsVersion?.toTfJson(),
    'scm_use_main_ip_restriction': ?scmUseMainIpRestriction?.toTfJson(),
    'use_32_bit_worker': ?use32BitWorker?.toTfJson(),
    'vnet_route_all_enabled': ?vnetRouteAllEnabled?.toTfJson(),
    'websockets_enabled': ?websocketsEnabled?.toTfJson(),
    'worker_count': ?workerCount?.toTfJson(),
    'application_stack': ?applicationStack?.encode(),
    'auto_heal_setting': ?autoHealSetting?.encode(),
    'cors': ?cors?.encode(),
    if (ipRestriction != null)
      'ip_restriction': [for (final e in ipRestriction!) e.encode()],
    if (scmIpRestriction != null)
      'scm_ip_restriction': [for (final e in scmIpRestriction!) e.encode()],
  };
}

/// Typed helper for the `site_config.application_stack` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppApplicationStack {
  const LinuxWebAppApplicationStack({
    this.dockerImageName,
    this.dockerRegistryPassword,
    this.dockerRegistryUrl,
    this.dockerRegistryUsername,
    this.dotnetVersion,
    this.goVersion,
    this.javaServer,
    this.javaServerVersion,
    this.javaVersion,
    this.nodeVersion,
    this.phpVersion,
    this.pythonVersion,
  });

  final TfArg<String>? dockerImageName;

  final Sensitive<String>? dockerRegistryPassword;

  final TfArg<String>? dockerRegistryUrl;

  final TfArg<String>? dockerRegistryUsername;

  final TfArg<String>? dotnetVersion;

  final TfArg<String>? goVersion;

  final TfArg<String>? javaServer;

  final TfArg<String>? javaServerVersion;

  final TfArg<String>? javaVersion;

  final TfArg<String>? nodeVersion;

  final TfArg<String>? phpVersion;

  final TfArg<String>? pythonVersion;

  @internal
  Map<String, Object?> encode() => {
    'docker_image_name': ?dockerImageName?.toTfJson(),
    'docker_registry_password': ?dockerRegistryPassword?.toTfJson(),
    'docker_registry_url': ?dockerRegistryUrl?.toTfJson(),
    'docker_registry_username': ?dockerRegistryUsername?.toTfJson(),
    'dotnet_version': ?dotnetVersion?.toTfJson(),
    'go_version': ?goVersion?.toTfJson(),
    'java_server': ?javaServer?.toTfJson(),
    'java_server_version': ?javaServerVersion?.toTfJson(),
    'java_version': ?javaVersion?.toTfJson(),
    'node_version': ?nodeVersion?.toTfJson(),
    'php_version': ?phpVersion?.toTfJson(),
    'python_version': ?pythonVersion?.toTfJson(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppAutoHealSetting {
  const LinuxWebAppAutoHealSetting({this.action, this.trigger});

  final LinuxWebAppAction? action;

  final LinuxWebAppTrigger? trigger;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.encode(),
    'trigger': ?trigger?.encode(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.action` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppAction {
  const LinuxWebAppAction({
    required this.actionType,
    this.minimumProcessExecutionTime,
  });

  final TfArg<String> actionType;

  final TfArg<String>? minimumProcessExecutionTime;

  @internal
  Map<String, Object?> encode() => {
    'action_type': actionType.toTfJson(),
    'minimum_process_execution_time': ?minimumProcessExecutionTime?.toTfJson(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.trigger` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppTrigger {
  const LinuxWebAppTrigger({
    this.requests,
    this.slowRequest,
    this.slowRequestWithPath,
    this.statusCode,
  });

  final LinuxWebAppRequests? requests;

  final LinuxWebAppSlowRequest? slowRequest;

  final List<LinuxWebAppSlowRequestWithPath>? slowRequestWithPath;

  final List<LinuxWebAppStatusCode>? statusCode;

  @internal
  Map<String, Object?> encode() => {
    'requests': ?requests?.encode(),
    'slow_request': ?slowRequest?.encode(),
    if (slowRequestWithPath != null)
      'slow_request_with_path': [
        for (final e in slowRequestWithPath!) e.encode(),
      ],
    if (statusCode != null)
      'status_code': [for (final e in statusCode!) e.encode()],
  };
}

/// Typed helper for the `site_config.auto_heal_setting.trigger.requests` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppRequests {
  const LinuxWebAppRequests({required this.count, required this.interval});

  final TfArg<num> count;

  final TfArg<String> interval;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'interval': interval.toTfJson(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.trigger.slow_request` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppSlowRequest {
  const LinuxWebAppSlowRequest({
    required this.count,
    required this.interval,
    required this.timeTaken,
  });

  final TfArg<num> count;

  final TfArg<String> interval;

  final TfArg<String> timeTaken;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'interval': interval.toTfJson(),
    'time_taken': timeTaken.toTfJson(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.trigger.slow_request_with_path` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppSlowRequestWithPath {
  const LinuxWebAppSlowRequestWithPath({
    required this.count,
    required this.interval,
    this.path,
    required this.timeTaken,
  });

  final TfArg<num> count;

  final TfArg<String> interval;

  final TfArg<String>? path;

  final TfArg<String> timeTaken;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'interval': interval.toTfJson(),
    'path': ?path?.toTfJson(),
    'time_taken': timeTaken.toTfJson(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.trigger.status_code` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppStatusCode {
  const LinuxWebAppStatusCode({
    required this.count,
    required this.interval,
    this.path,
    required this.statusCodeRange,
    this.subStatus,
    this.win32StatusCode,
  });

  final TfArg<num> count;

  final TfArg<String> interval;

  final TfArg<String>? path;

  final TfArg<String> statusCodeRange;

  final TfArg<num>? subStatus;

  final TfArg<num>? win32StatusCode;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'interval': interval.toTfJson(),
    'path': ?path?.toTfJson(),
    'status_code_range': statusCodeRange.toTfJson(),
    'sub_status': ?subStatus?.toTfJson(),
    'win32_status_code': ?win32StatusCode?.toTfJson(),
  };
}

/// Typed helper for the `site_config.cors` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppCors {
  const LinuxWebAppCors({this.allowedOrigins, this.supportCredentials});

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? supportCredentials;

  @internal
  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'support_credentials': ?supportCredentials?.toTfJson(),
  };
}

/// Typed helper for the `site_config.ip_restriction` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppIpRestriction {
  const LinuxWebAppIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final TfArg<String>? action;

  final TfArg<String>? description;

  final TfArg<List<Object?>>? headers;

  final TfArg<String>? ipAddress;

  final TfArg<String>? name;

  final TfArg<num>? priority;

  final TfArg<String>? serviceTag;

  final TfArg<String>? virtualNetworkSubnetId;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'description': ?description?.toTfJson(),
    'headers': ?headers?.toTfJson(),
    'ip_address': ?ipAddress?.toTfJson(),
    'name': ?name?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'service_tag': ?serviceTag?.toTfJson(),
    'virtual_network_subnet_id': ?virtualNetworkSubnetId?.toTfJson(),
  };
}

/// Typed helper for the `site_config.scm_ip_restriction` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppScmIpRestriction {
  const LinuxWebAppScmIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final TfArg<String>? action;

  final TfArg<String>? description;

  final TfArg<List<Object?>>? headers;

  final TfArg<String>? ipAddress;

  final TfArg<String>? name;

  final TfArg<num>? priority;

  final TfArg<String>? serviceTag;

  final TfArg<String>? virtualNetworkSubnetId;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'description': ?description?.toTfJson(),
    'headers': ?headers?.toTfJson(),
    'ip_address': ?ipAddress?.toTfJson(),
    'name': ?name?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'service_tag': ?serviceTag?.toTfJson(),
    'virtual_network_subnet_id': ?virtualNetworkSubnetId?.toTfJson(),
  };
}

/// Typed helper for the `sticky_settings` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppStickySettings {
  const LinuxWebAppStickySettings({
    this.appSettingNames,
    this.connectionStringNames,
  });

  final TfArg<List<String>>? appSettingNames;

  final TfArg<List<String>>? connectionStringNames;

  @internal
  Map<String, Object?> encode() => {
    'app_setting_names': ?appSettingNames?.toTfJson(),
    'connection_string_names': ?connectionStringNames?.toTfJson(),
  };
}

/// Typed helper for the `storage_account` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppStorageAccount {
  const LinuxWebAppStorageAccount({
    required this.accessKey,
    required this.accountName,
    this.mountPath,
    required this.name,
    required this.shareName,
    required this.type,
  });

  final Sensitive<String> accessKey;

  final TfArg<String> accountName;

  final TfArg<String>? mountPath;

  final TfArg<String> name;

  final TfArg<String> shareName;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'access_key': accessKey.toTfJson(),
    'account_name': accountName.toTfJson(),
    'mount_path': ?mountPath?.toTfJson(),
    'name': name.toTfJson(),
    'share_name': shareName.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_linux_web_app`.
final class AzurermLinuxWebApp extends Resource {
  static const String tfType = 'azurerm_linux_web_app';

  AzurermLinuxWebApp(
    super.localName, {
    TfArg<Map<String, String>>? appSettings,
    TfArg<bool>? clientAffinityEnabled,
    TfArg<bool>? clientCertificateEnabled,
    TfArg<String>? clientCertificateExclusionPaths,
    LinuxWebAppClientCertificateMode? clientCertificateMode,
    TfArg<bool>? enabled,
    TfArg<bool>? endToEndTlsEncryptionEnabled,
    TfArg<bool>? ftpPublishBasicAuthenticationEnabled,
    TfArg<bool>? httpsOnly,
    TfArg<String>? keyVaultReferenceIdentityId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> servicePlanId,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? virtualNetworkBackupRestoreEnabled,
    TfArg<String>? virtualNetworkSubnetId,
    TfArg<bool>? vnetImagePullEnabled,
    TfArg<bool>? webdeployPublishBasicAuthenticationEnabled,
    TfArg<String>? zipDeployFile,
    LinuxWebAppAuthSettings? authSettings,
    LinuxWebAppAuthSettingsV2? authSettingsV2,
    LinuxWebAppBackup? backup,
    List<LinuxWebAppConnectionString>? connectionString,
    LinuxWebAppIdentity? identity,
    LinuxWebAppLogs? logs,
    required LinuxWebAppSiteConfig siteConfig,
    LinuxWebAppStickySettings? stickySettings,
    List<LinuxWebAppStorageAccount>? storageAccount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_settings': ?appSettings,
           'client_affinity_enabled': ?clientAffinityEnabled,
           'client_certificate_enabled': ?clientCertificateEnabled,
           'client_certificate_exclusion_paths':
               ?clientCertificateExclusionPaths,
           'client_certificate_mode': ?clientCertificateMode,
           'enabled': ?enabled,
           'end_to_end_tls_encryption_enabled': ?endToEndTlsEncryptionEnabled,
           'ftp_publish_basic_authentication_enabled':
               ?ftpPublishBasicAuthenticationEnabled,
           'https_only': ?httpsOnly,
           'key_vault_reference_identity_id': ?keyVaultReferenceIdentityId,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_plan_id': servicePlanId,
           'tags': ?tags,
           'virtual_network_backup_restore_enabled':
               ?virtualNetworkBackupRestoreEnabled,
           'virtual_network_subnet_id': ?virtualNetworkSubnetId,
           'vnet_image_pull_enabled': ?vnetImagePullEnabled,
           'webdeploy_publish_basic_authentication_enabled':
               ?webdeployPublishBasicAuthenticationEnabled,
           'zip_deploy_file': ?zipDeployFile,
           if (authSettings != null)
             'auth_settings': TfArg.literal(authSettings.encode()),
           if (authSettingsV2 != null)
             'auth_settings_v2': TfArg.literal(authSettingsV2.encode()),
           if (backup != null) 'backup': TfArg.literal(backup.encode()),
           if (connectionString != null)
             'connection_string': TfArg.literal([
               for (final e in connectionString) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (logs != null) 'logs': TfArg.literal(logs.encode()),
           'site_config': TfArg.literal(siteConfig.encode()),
           if (stickySettings != null)
             'sticky_settings': TfArg.literal(stickySettings.encode()),
           if (storageAccount != null)
             'storage_account': TfArg.literal([
               for (final e in storageAccount) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLinuxWebAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLinuxWebApp>`.
  RefTo<AzurermLinuxWebApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_domain_verification_id` attribute.
  TfRef<String> get customDomainVerificationId =>
      TfRef.attribute<String>(this, 'custom_domain_verification_id');

  /// Reference to `default_hostname` attribute.
  TfRef<String> get defaultHostname =>
      TfRef.attribute<String>(this, 'default_hostname');

  /// Reference to `hosting_environment_id` attribute.
  TfRef<String> get hostingEnvironmentId =>
      TfRef.attribute<String>(this, 'hosting_environment_id');

  /// Reference to `outbound_ip_address_list` attribute.
  TfRef<List<String>> get outboundIpAddressList =>
      TfRef.attribute<List<String>>(this, 'outbound_ip_address_list');

  /// Reference to `outbound_ip_addresses` attribute.
  TfRef<String> get outboundIpAddresses =>
      TfRef.attribute<String>(this, 'outbound_ip_addresses');

  /// Reference to `possible_outbound_ip_address_list` attribute.
  TfRef<List<String>> get possibleOutboundIpAddressList =>
      TfRef.attribute<List<String>>(this, 'possible_outbound_ip_address_list');

  /// Reference to `possible_outbound_ip_addresses` attribute.
  TfRef<String> get possibleOutboundIpAddresses =>
      TfRef.attribute<String>(this, 'possible_outbound_ip_addresses');

  /// Reference to `site_credential` attribute.
  TfRef<List<Map<String, Object?>>> get siteCredential =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'site_credential');

  /// Reference to `app_settings` attribute.
  TfRef<Map<String, String>> get appSettings =>
      TfRef.attribute<Map<String, String>>(this, 'app_settings');

  /// Reference to `client_affinity_enabled` attribute.
  TfRef<bool> get clientAffinityEnabled =>
      TfRef.attribute<bool>(this, 'client_affinity_enabled');

  /// Reference to `client_certificate_enabled` attribute.
  TfRef<bool> get clientCertificateEnabled =>
      TfRef.attribute<bool>(this, 'client_certificate_enabled');

  /// Reference to `client_certificate_exclusion_paths` attribute.
  TfRef<String> get clientCertificateExclusionPaths =>
      TfRef.attribute<String>(this, 'client_certificate_exclusion_paths');

  /// Reference to `client_certificate_mode` attribute.
  TfRef<String> get clientCertificateMode =>
      TfRef.attribute<String>(this, 'client_certificate_mode');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `end_to_end_tls_encryption_enabled` attribute.
  TfRef<bool> get endToEndTlsEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'end_to_end_tls_encryption_enabled');

  /// Reference to `ftp_publish_basic_authentication_enabled` attribute.
  TfRef<bool> get ftpPublishBasicAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'ftp_publish_basic_authentication_enabled');

  /// Reference to `https_only` attribute.
  TfRef<bool> get httpsOnly => TfRef.attribute<bool>(this, 'https_only');

  /// Reference to `key_vault_reference_identity_id` attribute.
  TfRef<String> get keyVaultReferenceIdentityId =>
      TfRef.attribute<String>(this, 'key_vault_reference_identity_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_plan_id` attribute.
  TfRef<String> get servicePlanId =>
      TfRef.attribute<String>(this, 'service_plan_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_network_backup_restore_enabled` attribute.
  TfRef<bool> get virtualNetworkBackupRestoreEnabled =>
      TfRef.attribute<bool>(this, 'virtual_network_backup_restore_enabled');

  /// Reference to `virtual_network_subnet_id` attribute.
  TfRef<String> get virtualNetworkSubnetId =>
      TfRef.attribute<String>(this, 'virtual_network_subnet_id');

  /// Reference to `vnet_image_pull_enabled` attribute.
  TfRef<bool> get vnetImagePullEnabled =>
      TfRef.attribute<bool>(this, 'vnet_image_pull_enabled');

  /// Reference to `webdeploy_publish_basic_authentication_enabled` attribute.
  TfRef<bool> get webdeployPublishBasicAuthenticationEnabled =>
      TfRef.attribute<bool>(
        this,
        'webdeploy_publish_basic_authentication_enabled',
      );

  /// Reference to `zip_deploy_file` attribute.
  TfRef<String> get zipDeployFile =>
      TfRef.attribute<String>(this, 'zip_deploy_file');
}
