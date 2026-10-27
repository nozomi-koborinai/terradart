// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_linux_function_app_slot`.
const Set<String> _azurermLinuxFunctionAppSlotSensitive = <String>{
  'auth_settings.active_directory.client_secret',
  'auth_settings.facebook.app_secret',
  'auth_settings.github.client_secret',
  'auth_settings.google.client_secret',
  'auth_settings.microsoft.client_secret',
  'auth_settings.twitter.consumer_secret',
  'backup.storage_account_url',
  'connection_string.value',
  'custom_domain_verification_id',
  'site_config.application_insights_connection_string',
  'site_config.application_insights_key',
  'site_config.application_stack.docker.registry_password',
  'site_config.application_stack.docker.registry_username',
  'site_credential',
  'storage_account.access_key',
  'storage_account_access_key',
};

/// Linux Function App Slot Client Certificate enum for `client_certificate_mode`.
extension type const LinuxFunctionAppSlotClientCertificateMode._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppSlotClientCertificateMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotClientCertificateMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotClientCertificateMode.arg(TfArg<String> arg)
    : this._(arg);

  static const optional = LinuxFunctionAppSlotClientCertificateMode._(
    TfArgLiteral('Optional'),
  );
  static const optionalinteractiveuser =
      LinuxFunctionAppSlotClientCertificateMode._(
        TfArgLiteral('OptionalInteractiveUser'),
      );
  static const required = LinuxFunctionAppSlotClientCertificateMode._(
    TfArgLiteral('Required'),
  );

  static const List<LinuxFunctionAppSlotClientCertificateMode> values = [
    optional,
    optionalinteractiveuser,
    required,
  ];
}

/// Exactly one of `storage_account_name`, `storage_key_vault_secret_id` on `azurerm_linux_function_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.storageAccountName(...)`.
sealed class LinuxFunctionAppSlotStorage {
  const LinuxFunctionAppSlotStorage();

  /// Sets `storage_account_name`.
  const factory LinuxFunctionAppSlotStorage.storageAccountName(
    RefTo<AzurermStorageAccount> storageAccountName,
  ) = LinuxFunctionAppSlotStorageAccountName;

  /// Sets `storage_key_vault_secret_id`.
  const factory LinuxFunctionAppSlotStorage.storageKeyVaultSecretId(
    TfArg<String> storageKeyVaultSecretId,
  ) = LinuxFunctionAppSlotStorageKeyVaultSecretId;

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

/// The [LinuxFunctionAppSlotStorage.storageAccountName] choice: sets `storage_account_name`.
final class LinuxFunctionAppSlotStorageAccountName
    extends LinuxFunctionAppSlotStorage {
  const LinuxFunctionAppSlotStorageAccountName(this.storageAccountName);

  final RefTo<AzurermStorageAccount> storageAccountName;

  @internal
  @override
  String get blockKey => 'storage_account_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'storage_account_name': storageAccountName.encodeAs('name').toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'storage_account_name': storageAccountName.encodeAs('name'),
  };
}

/// The [LinuxFunctionAppSlotStorage.storageKeyVaultSecretId] choice: sets `storage_key_vault_secret_id`.
final class LinuxFunctionAppSlotStorageKeyVaultSecretId
    extends LinuxFunctionAppSlotStorage {
  const LinuxFunctionAppSlotStorageKeyVaultSecretId(
    this.storageKeyVaultSecretId,
  );

  final TfArg<String> storageKeyVaultSecretId;

  @internal
  @override
  String get blockKey => 'storage_key_vault_secret_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'storage_key_vault_secret_id': storageKeyVaultSecretId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'storage_key_vault_secret_id': storageKeyVaultSecretId,
  };
}

/// At most one of `storage_account_access_key`, `storage_uses_managed_identity` on `azurerm_linux_function_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.storageAccountAccessKey(...)`.
sealed class LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentity {
  const LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentity();

  /// Sets `storage_account_access_key`.
  const factory LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentity.storageAccountAccessKey(
    Sensitive<String> storageAccountAccessKey,
  ) = LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentityStorageAccountAccessKey;

  /// Sets `storage_uses_managed_identity`.
  const factory LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentity.storageUsesManagedIdentity(
    TfArg<bool> storageUsesManagedIdentity,
  ) = LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentityChoice;

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

/// The [LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentity.storageAccountAccessKey] choice: sets `storage_account_access_key`.
final class LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentityStorageAccountAccessKey
    extends
        LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentity {
  const LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentityStorageAccountAccessKey(
    this.storageAccountAccessKey,
  );

  final Sensitive<String> storageAccountAccessKey;

  @internal
  @override
  String get blockKey => 'storage_account_access_key';

  @internal
  @override
  Map<String, Object?> encode() => {
    'storage_account_access_key': storageAccountAccessKey.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'storage_account_access_key': storageAccountAccessKey,
  };
}

/// The [LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentity.storageUsesManagedIdentity] choice: sets `storage_uses_managed_identity`.
final class LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentityChoice
    extends
        LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentity {
  const LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentityChoice(
    this.storageUsesManagedIdentity,
  );

  final TfArg<bool> storageUsesManagedIdentity;

  @internal
  @override
  String get blockKey => 'storage_uses_managed_identity';

  @internal
  @override
  Map<String, Object?> encode() => {
    'storage_uses_managed_identity': storageUsesManagedIdentity.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'storage_uses_managed_identity': storageUsesManagedIdentity,
  };
}

/// Typed helper for the `auth_settings` block of
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotAuthSettings {
  const LinuxFunctionAppSlotAuthSettings({
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

  final LinuxFunctionAppSlotActiveDirectory? activeDirectory;

  final LinuxFunctionAppSlotFacebook? facebook;

  final LinuxFunctionAppSlotGithub? github;

  final LinuxFunctionAppSlotGoogle? google;

  final LinuxFunctionAppSlotMicrosoft? microsoft;

  final LinuxFunctionAppSlotTwitter? twitter;

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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotActiveDirectory {
  const LinuxFunctionAppSlotActiveDirectory({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotFacebook {
  const LinuxFunctionAppSlotFacebook({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotGithub {
  const LinuxFunctionAppSlotGithub({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotGoogle {
  const LinuxFunctionAppSlotGoogle({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotMicrosoft {
  const LinuxFunctionAppSlotMicrosoft({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotTwitter {
  const LinuxFunctionAppSlotTwitter({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotAuthSettingsV2 {
  const LinuxFunctionAppSlotAuthSettingsV2({
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

  final LinuxFunctionAppSlotActiveDirectoryV2? activeDirectoryV2;

  final LinuxFunctionAppSlotAppleV2? appleV2;

  final LinuxFunctionAppSlotAzureStaticWebAppV2? azureStaticWebAppV2;

  final List<LinuxFunctionAppSlotCustomOidcV2>? customOidcV2;

  final LinuxFunctionAppSlotFacebookV2? facebookV2;

  final LinuxFunctionAppSlotGithubV2? githubV2;

  final LinuxFunctionAppSlotGoogleV2? googleV2;

  final LinuxFunctionAppSlotLogin login;

  final LinuxFunctionAppSlotMicrosoftV2? microsoftV2;

  final LinuxFunctionAppSlotTwitterV2? twitterV2;

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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotActiveDirectoryV2 {
  const LinuxFunctionAppSlotActiveDirectoryV2({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotAppleV2 {
  const LinuxFunctionAppSlotAppleV2({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotAzureStaticWebAppV2 {
  const LinuxFunctionAppSlotAzureStaticWebAppV2({required this.clientId});

  final TfArg<String> clientId;

  @internal
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// Typed helper for the `auth_settings_v2.custom_oidc_v2` block of
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotCustomOidcV2 {
  const LinuxFunctionAppSlotCustomOidcV2({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotFacebookV2 {
  const LinuxFunctionAppSlotFacebookV2({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotGithubV2 {
  const LinuxFunctionAppSlotGithubV2({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotGoogleV2 {
  const LinuxFunctionAppSlotGoogleV2({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotLogin {
  const LinuxFunctionAppSlotLogin({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotMicrosoftV2 {
  const LinuxFunctionAppSlotMicrosoftV2({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotTwitterV2 {
  const LinuxFunctionAppSlotTwitterV2({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotBackup {
  const LinuxFunctionAppSlotBackup({
    this.enabled,
    required this.name,
    required this.storageAccountUrl,
    required this.schedule,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final Sensitive<String> storageAccountUrl;

  final LinuxFunctionAppSlotSchedule schedule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'storage_account_url': storageAccountUrl.toTfJson(),
    'schedule': schedule.encode(),
  };
}

/// Typed helper for the `backup.schedule` block of
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotSchedule {
  const LinuxFunctionAppSlotSchedule({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotConnectionString {
  const LinuxFunctionAppSlotConnectionString({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotIdentity {
  const LinuxFunctionAppSlotIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `site_config` block of
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotSiteConfig {
  const LinuxFunctionAppSlotSiteConfig({
    this.alwaysOn,
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.appScaleLimit,
    this.applicationInsightsConnectionString,
    this.applicationInsightsKey,
    this.autoSwapSlotName,
    this.containerRegistryManagedIdentityClientId,
    this.containerRegistryUseManagedIdentity,
    this.defaultDocuments,
    this.elasticInstanceMinimum,
    this.ftpsState,
    this.healthCheckEvictionTimeInMin,
    this.healthCheckPath,
    this.http2Enabled,
    this.ipRestrictionDefaultAction,
    this.loadBalancingMode,
    this.managedPipelineMode,
    this.minimumTlsCipherSuite,
    this.minimumTlsVersion,
    this.preWarmedInstanceCount,
    this.remoteDebuggingEnabled,
    this.remoteDebuggingVersion,
    this.runtimeScaleMonitoringEnabled,
    this.scmIpRestrictionDefaultAction,
    this.scmMinimumTlsVersion,
    this.scmUseMainIpRestriction,
    this.use32BitWorker,
    this.vnetRouteAllEnabled,
    this.websocketsEnabled,
    this.workerCount,
    this.appServiceLogs,
    this.applicationStack,
    this.cors,
    this.ipRestriction,
    this.scmIpRestriction,
  });

  final TfArg<bool>? alwaysOn;

  final TfArg<String>? apiDefinitionUrl;

  final TfArg<String>? apiManagementApiId;

  final TfArg<String>? appCommandLine;

  final TfArg<num>? appScaleLimit;

  final Sensitive<String>? applicationInsightsConnectionString;

  final Sensitive<String>? applicationInsightsKey;

  final TfArg<String>? autoSwapSlotName;

  final TfArg<String>? containerRegistryManagedIdentityClientId;

  final TfArg<bool>? containerRegistryUseManagedIdentity;

  final TfArg<List<String>>? defaultDocuments;

  final TfArg<num>? elasticInstanceMinimum;

  final TfArg<String>? ftpsState;

  final TfArg<num>? healthCheckEvictionTimeInMin;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final TfArg<String>? ipRestrictionDefaultAction;

  final TfArg<String>? loadBalancingMode;

  final TfArg<String>? managedPipelineMode;

  final TfArg<String>? minimumTlsCipherSuite;

  final TfArg<String>? minimumTlsVersion;

  final TfArg<num>? preWarmedInstanceCount;

  final TfArg<bool>? remoteDebuggingEnabled;

  final TfArg<String>? remoteDebuggingVersion;

  final TfArg<bool>? runtimeScaleMonitoringEnabled;

  final TfArg<String>? scmIpRestrictionDefaultAction;

  final TfArg<String>? scmMinimumTlsVersion;

  final TfArg<bool>? scmUseMainIpRestriction;

  final TfArg<bool>? use32BitWorker;

  final TfArg<bool>? vnetRouteAllEnabled;

  final TfArg<bool>? websocketsEnabled;

  final TfArg<num>? workerCount;

  final LinuxFunctionAppSlotAppServiceLogs? appServiceLogs;

  final LinuxFunctionAppSlotApplicationStack? applicationStack;

  final LinuxFunctionAppSlotCors? cors;

  final List<LinuxFunctionAppSlotIpRestriction>? ipRestriction;

  final List<LinuxFunctionAppSlotScmIpRestriction>? scmIpRestriction;

  @internal
  Map<String, Object?> encode() => {
    'always_on': ?alwaysOn?.toTfJson(),
    'api_definition_url': ?apiDefinitionUrl?.toTfJson(),
    'api_management_api_id': ?apiManagementApiId?.toTfJson(),
    'app_command_line': ?appCommandLine?.toTfJson(),
    'app_scale_limit': ?appScaleLimit?.toTfJson(),
    'application_insights_connection_string':
        ?applicationInsightsConnectionString?.toTfJson(),
    'application_insights_key': ?applicationInsightsKey?.toTfJson(),
    'auto_swap_slot_name': ?autoSwapSlotName?.toTfJson(),
    'container_registry_managed_identity_client_id':
        ?containerRegistryManagedIdentityClientId?.toTfJson(),
    'container_registry_use_managed_identity':
        ?containerRegistryUseManagedIdentity?.toTfJson(),
    'default_documents': ?defaultDocuments?.toTfJson(),
    'elastic_instance_minimum': ?elasticInstanceMinimum?.toTfJson(),
    'ftps_state': ?ftpsState?.toTfJson(),
    'health_check_eviction_time_in_min': ?healthCheckEvictionTimeInMin
        ?.toTfJson(),
    'health_check_path': ?healthCheckPath?.toTfJson(),
    'http2_enabled': ?http2Enabled?.toTfJson(),
    'ip_restriction_default_action': ?ipRestrictionDefaultAction?.toTfJson(),
    'load_balancing_mode': ?loadBalancingMode?.toTfJson(),
    'managed_pipeline_mode': ?managedPipelineMode?.toTfJson(),
    'minimum_tls_cipher_suite': ?minimumTlsCipherSuite?.toTfJson(),
    'minimum_tls_version': ?minimumTlsVersion?.toTfJson(),
    'pre_warmed_instance_count': ?preWarmedInstanceCount?.toTfJson(),
    'remote_debugging_enabled': ?remoteDebuggingEnabled?.toTfJson(),
    'remote_debugging_version': ?remoteDebuggingVersion?.toTfJson(),
    'runtime_scale_monitoring_enabled': ?runtimeScaleMonitoringEnabled
        ?.toTfJson(),
    'scm_ip_restriction_default_action': ?scmIpRestrictionDefaultAction
        ?.toTfJson(),
    'scm_minimum_tls_version': ?scmMinimumTlsVersion?.toTfJson(),
    'scm_use_main_ip_restriction': ?scmUseMainIpRestriction?.toTfJson(),
    'use_32_bit_worker': ?use32BitWorker?.toTfJson(),
    'vnet_route_all_enabled': ?vnetRouteAllEnabled?.toTfJson(),
    'websockets_enabled': ?websocketsEnabled?.toTfJson(),
    'worker_count': ?workerCount?.toTfJson(),
    'app_service_logs': ?appServiceLogs?.encode(),
    'application_stack': ?applicationStack?.encode(),
    'cors': ?cors?.encode(),
    if (ipRestriction != null)
      'ip_restriction': [for (final e in ipRestriction!) e.encode()],
    if (scmIpRestriction != null)
      'scm_ip_restriction': [for (final e in scmIpRestriction!) e.encode()],
  };
}

/// Typed helper for the `site_config.app_service_logs` block of
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotAppServiceLogs {
  const LinuxFunctionAppSlotAppServiceLogs({
    this.diskQuotaMb,
    this.retentionPeriodDays,
  });

  final TfArg<num>? diskQuotaMb;

  final TfArg<num>? retentionPeriodDays;

  @internal
  Map<String, Object?> encode() => {
    'disk_quota_mb': ?diskQuotaMb?.toTfJson(),
    'retention_period_days': ?retentionPeriodDays?.toTfJson(),
  };
}

/// Typed helper for the `site_config.application_stack` block of
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotApplicationStack {
  const LinuxFunctionAppSlotApplicationStack({
    this.dotnetVersion,
    this.javaVersion,
    this.nodeVersion,
    this.powershellCoreVersion,
    this.pythonVersion,
    this.useCustomRuntime,
    this.useDotnetIsolatedRuntime,
    this.docker,
  });

  final TfArg<String>? dotnetVersion;

  final TfArg<String>? javaVersion;

  final TfArg<String>? nodeVersion;

  final TfArg<String>? powershellCoreVersion;

  final TfArg<String>? pythonVersion;

  final TfArg<bool>? useCustomRuntime;

  final TfArg<bool>? useDotnetIsolatedRuntime;

  final List<LinuxFunctionAppSlotDocker>? docker;

  @internal
  Map<String, Object?> encode() => {
    'dotnet_version': ?dotnetVersion?.toTfJson(),
    'java_version': ?javaVersion?.toTfJson(),
    'node_version': ?nodeVersion?.toTfJson(),
    'powershell_core_version': ?powershellCoreVersion?.toTfJson(),
    'python_version': ?pythonVersion?.toTfJson(),
    'use_custom_runtime': ?useCustomRuntime?.toTfJson(),
    'use_dotnet_isolated_runtime': ?useDotnetIsolatedRuntime?.toTfJson(),
    if (docker != null) 'docker': [for (final e in docker!) e.encode()],
  };
}

/// Typed helper for the `site_config.application_stack.docker` block of
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotDocker {
  const LinuxFunctionAppSlotDocker({
    required this.imageName,
    required this.imageTag,
    this.registryPassword,
    required this.registryUrl,
    this.registryUsername,
  });

  final TfArg<String> imageName;

  final TfArg<String> imageTag;

  final Sensitive<String>? registryPassword;

  final TfArg<String> registryUrl;

  final Sensitive<String>? registryUsername;

  @internal
  Map<String, Object?> encode() => {
    'image_name': imageName.toTfJson(),
    'image_tag': imageTag.toTfJson(),
    'registry_password': ?registryPassword?.toTfJson(),
    'registry_url': registryUrl.toTfJson(),
    'registry_username': ?registryUsername?.toTfJson(),
  };
}

/// Typed helper for the `site_config.cors` block of
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotCors {
  const LinuxFunctionAppSlotCors({
    this.allowedOrigins,
    this.supportCredentials,
  });

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? supportCredentials;

  @internal
  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'support_credentials': ?supportCredentials?.toTfJson(),
  };
}

/// Typed helper for the `site_config.ip_restriction` block of
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotIpRestriction {
  const LinuxFunctionAppSlotIpRestriction({
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotScmIpRestriction {
  const LinuxFunctionAppSlotScmIpRestriction({
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

/// Typed helper for the `storage_account` block of
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotStorageAccount {
  const LinuxFunctionAppSlotStorageAccount({
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

/// Factory wrapper for `azurerm_linux_function_app_slot`.
final class AzurermLinuxFunctionAppSlot extends Resource {
  static const String tfType = 'azurerm_linux_function_app_slot';

  AzurermLinuxFunctionAppSlot(
    super.localName, {
    TfArg<Map<String, String>>? appSettings,
    TfArg<bool>? builtinLoggingEnabled,
    TfArg<bool>? clientCertificateEnabled,
    TfArg<String>? clientCertificateExclusionPaths,
    LinuxFunctionAppSlotClientCertificateMode? clientCertificateMode,
    TfArg<bool>? contentShareForceDisabled,
    TfArg<num>? dailyMemoryTimeQuota,
    TfArg<bool>? enabled,
    TfArg<bool>? endToEndTlsEncryptionEnabled,
    TfArg<bool>? ftpPublishBasicAuthenticationEnabled,
    required TfArg<String> functionAppId,
    TfArg<String>? functionsExtensionVersion,
    TfArg<bool>? httpsOnly,
    TfArg<String>? keyVaultReferenceIdentityId,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    TfArg<String>? servicePlanId,
    LinuxFunctionAppSlotStorageAccountAccessKeyOrStorageUsesManagedIdentity?
    storageAccountAccessKeyOrStorageUsesManagedIdentity,
    required LinuxFunctionAppSlotStorage storage,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? virtualNetworkBackupRestoreEnabled,
    TfArg<String>? virtualNetworkSubnetId,
    TfArg<bool>? vnetImagePullEnabled,
    TfArg<bool>? webdeployPublishBasicAuthenticationEnabled,
    LinuxFunctionAppSlotAuthSettings? authSettings,
    LinuxFunctionAppSlotAuthSettingsV2? authSettingsV2,
    LinuxFunctionAppSlotBackup? backup,
    List<LinuxFunctionAppSlotConnectionString>? connectionString,
    LinuxFunctionAppSlotIdentity? identity,
    required LinuxFunctionAppSlotSiteConfig siteConfig,
    List<LinuxFunctionAppSlotStorageAccount>? storageAccount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_settings': ?appSettings,
           'builtin_logging_enabled': ?builtinLoggingEnabled,
           'client_certificate_enabled': ?clientCertificateEnabled,
           'client_certificate_exclusion_paths':
               ?clientCertificateExclusionPaths,
           'client_certificate_mode': ?clientCertificateMode,
           'content_share_force_disabled': ?contentShareForceDisabled,
           'daily_memory_time_quota': ?dailyMemoryTimeQuota,
           'enabled': ?enabled,
           'end_to_end_tls_encryption_enabled': ?endToEndTlsEncryptionEnabled,
           'ftp_publish_basic_authentication_enabled':
               ?ftpPublishBasicAuthenticationEnabled,
           'function_app_id': functionAppId,
           'functions_extension_version': ?functionsExtensionVersion,
           'https_only': ?httpsOnly,
           'key_vault_reference_identity_id': ?keyVaultReferenceIdentityId,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'service_plan_id': ?servicePlanId,
           ...?storageAccountAccessKeyOrStorageUsesManagedIdentity?.argMap,
           ...storage.argMap,
           'tags': ?tags,
           'virtual_network_backup_restore_enabled':
               ?virtualNetworkBackupRestoreEnabled,
           'virtual_network_subnet_id': ?virtualNetworkSubnetId,
           'vnet_image_pull_enabled': ?vnetImagePullEnabled,
           'webdeploy_publish_basic_authentication_enabled':
               ?webdeployPublishBasicAuthenticationEnabled,
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
           'site_config': TfArg.literal(siteConfig.encode()),
           if (storageAccount != null)
             'storage_account': TfArg.literal([
               for (final e in storageAccount) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLinuxFunctionAppSlotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLinuxFunctionAppSlot>`.
  RefTo<AzurermLinuxFunctionAppSlot> get ref => RefTo.of(this);

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

  /// Reference to `builtin_logging_enabled` attribute.
  TfRef<bool> get builtinLoggingEnabled =>
      TfRef.attribute<bool>(this, 'builtin_logging_enabled');

  /// Reference to `client_certificate_enabled` attribute.
  TfRef<bool> get clientCertificateEnabled =>
      TfRef.attribute<bool>(this, 'client_certificate_enabled');

  /// Reference to `client_certificate_exclusion_paths` attribute.
  TfRef<String> get clientCertificateExclusionPaths =>
      TfRef.attribute<String>(this, 'client_certificate_exclusion_paths');

  /// Reference to `client_certificate_mode` attribute.
  TfRef<String> get clientCertificateMode =>
      TfRef.attribute<String>(this, 'client_certificate_mode');

  /// Reference to `content_share_force_disabled` attribute.
  TfRef<bool> get contentShareForceDisabled =>
      TfRef.attribute<bool>(this, 'content_share_force_disabled');

  /// Reference to `daily_memory_time_quota` attribute.
  TfRef<num> get dailyMemoryTimeQuota =>
      TfRef.attribute<num>(this, 'daily_memory_time_quota');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `end_to_end_tls_encryption_enabled` attribute.
  TfRef<bool> get endToEndTlsEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'end_to_end_tls_encryption_enabled');

  /// Reference to `ftp_publish_basic_authentication_enabled` attribute.
  TfRef<bool> get ftpPublishBasicAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'ftp_publish_basic_authentication_enabled');

  /// Reference to `function_app_id` attribute.
  TfRef<String> get functionAppId =>
      TfRef.attribute<String>(this, 'function_app_id');

  /// Reference to `functions_extension_version` attribute.
  TfRef<String> get functionsExtensionVersion =>
      TfRef.attribute<String>(this, 'functions_extension_version');

  /// Reference to `https_only` attribute.
  TfRef<bool> get httpsOnly => TfRef.attribute<bool>(this, 'https_only');

  /// Reference to `key_vault_reference_identity_id` attribute.
  TfRef<String> get keyVaultReferenceIdentityId =>
      TfRef.attribute<String>(this, 'key_vault_reference_identity_id');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `service_plan_id` attribute.
  TfRef<String> get servicePlanId =>
      TfRef.attribute<String>(this, 'service_plan_id');

  /// Reference to `storage_account_access_key` attribute.
  TfRef<String> get storageAccountAccessKey =>
      TfRef.attribute<String>(this, 'storage_account_access_key');

  /// Reference to `storage_account_name` attribute.
  TfRef<String> get storageAccountName =>
      TfRef.attribute<String>(this, 'storage_account_name');

  /// Reference to `storage_key_vault_secret_id` attribute.
  TfRef<String> get storageKeyVaultSecretId =>
      TfRef.attribute<String>(this, 'storage_key_vault_secret_id');

  /// Reference to `storage_uses_managed_identity` attribute.
  TfRef<bool> get storageUsesManagedIdentity =>
      TfRef.attribute<bool>(this, 'storage_uses_managed_identity');

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
}
