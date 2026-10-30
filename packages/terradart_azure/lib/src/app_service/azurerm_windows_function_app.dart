// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_windows_function_app`.
const Set<String> _azurermWindowsFunctionAppSensitive = <String>{
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
  'site_credential',
  'storage_account.access_key',
  'storage_account_access_key',
};

/// Windows Function App Client Certificate enum for `client_certificate_mode`.
extension type const WindowsFunctionAppClientCertificateMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppClientCertificateMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppClientCertificateMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppClientCertificateMode.arg(TfArg<String> arg)
    : this._(arg);

  static const optional = WindowsFunctionAppClientCertificateMode._(
    TfArgLiteral('Optional'),
  );
  static const optionalinteractiveuser =
      WindowsFunctionAppClientCertificateMode._(
        TfArgLiteral('OptionalInteractiveUser'),
      );
  static const required = WindowsFunctionAppClientCertificateMode._(
    TfArgLiteral('Required'),
  );

  static const List<WindowsFunctionAppClientCertificateMode> values = [
    optional,
    optionalinteractiveuser,
    required,
  ];
}

/// Exactly one of `storage_account_name`, `storage_key_vault_secret_id` on `azurerm_windows_function_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.storageAccountName(...)`.
sealed class WindowsFunctionAppStorage {
  const WindowsFunctionAppStorage();

  /// Sets `storage_account_name`.
  const factory WindowsFunctionAppStorage.storageAccountName(
    RefTo<AzurermStorageAccount> storageAccountName,
  ) = WindowsFunctionAppStorageAccountName;

  /// Sets `storage_key_vault_secret_id`.
  const factory WindowsFunctionAppStorage.storageKeyVaultSecretId(
    TfArg<String> storageKeyVaultSecretId,
  ) = WindowsFunctionAppStorageKeyVaultSecretId;

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

/// The [WindowsFunctionAppStorage.storageAccountName] choice: sets `storage_account_name`.
final class WindowsFunctionAppStorageAccountName
    extends WindowsFunctionAppStorage {
  const WindowsFunctionAppStorageAccountName(this.storageAccountName);

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

/// The [WindowsFunctionAppStorage.storageKeyVaultSecretId] choice: sets `storage_key_vault_secret_id`.
final class WindowsFunctionAppStorageKeyVaultSecretId
    extends WindowsFunctionAppStorage {
  const WindowsFunctionAppStorageKeyVaultSecretId(this.storageKeyVaultSecretId);

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

/// At most one of `storage_account_access_key`, `storage_uses_managed_identity` on `azurerm_windows_function_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.storageAccountAccessKey(...)`.
sealed class WindowsFunctionAppStorageAccess {
  const WindowsFunctionAppStorageAccess();

  /// Sets `storage_account_access_key`.
  const factory WindowsFunctionAppStorageAccess.storageAccountAccessKey(
    Sensitive<String> storageAccountAccessKey,
  ) = WindowsFunctionAppStorageAccessStorageAccountAccessKey;

  /// Sets `storage_uses_managed_identity`.
  const factory WindowsFunctionAppStorageAccess.storageUsesManagedIdentity(
    TfArg<bool> storageUsesManagedIdentity,
  ) = WindowsFunctionAppStorageAccessStorageUsesManagedIdentity;

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

/// The [WindowsFunctionAppStorageAccess.storageAccountAccessKey] choice: sets `storage_account_access_key`.
final class WindowsFunctionAppStorageAccessStorageAccountAccessKey
    extends WindowsFunctionAppStorageAccess {
  const WindowsFunctionAppStorageAccessStorageAccountAccessKey(
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

/// The [WindowsFunctionAppStorageAccess.storageUsesManagedIdentity] choice: sets `storage_uses_managed_identity`.
final class WindowsFunctionAppStorageAccessStorageUsesManagedIdentity
    extends WindowsFunctionAppStorageAccess {
  const WindowsFunctionAppStorageAccessStorageUsesManagedIdentity(
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppAuthSettings {
  const WindowsFunctionAppAuthSettings({
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

  final WindowsFunctionAppDefaultProvider? defaultProvider;

  final TfArg<bool> enabled;

  final TfArg<String>? issuer;

  final TfArg<String>? runtimeVersion;

  final TfArg<num>? tokenRefreshExtensionHours;

  final TfArg<bool>? tokenStoreEnabled;

  final WindowsFunctionAppUnauthenticatedClientAction?
  unauthenticatedClientAction;

  final WindowsFunctionAppActiveDirectory? activeDirectory;

  final WindowsFunctionAppFacebook? facebook;

  final WindowsFunctionAppGithub? github;

  final WindowsFunctionAppGoogle? google;

  final WindowsFunctionAppMicrosoft? microsoft;

  final WindowsFunctionAppTwitter? twitter;

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

/// `default_provider` — derived from the provider schema description.
extension type const WindowsFunctionAppDefaultProvider._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppDefaultProvider.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppDefaultProvider.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppDefaultProvider.arg(TfArg<String> arg) : this._(arg);

  static const azureactivedirectory = WindowsFunctionAppDefaultProvider._(
    TfArgLiteral('AzureActiveDirectory'),
  );
  static const facebook = WindowsFunctionAppDefaultProvider._(
    TfArgLiteral('Facebook'),
  );
  static const google = WindowsFunctionAppDefaultProvider._(
    TfArgLiteral('Google'),
  );
  static const microsoftaccount = WindowsFunctionAppDefaultProvider._(
    TfArgLiteral('MicrosoftAccount'),
  );
  static const twitter = WindowsFunctionAppDefaultProvider._(
    TfArgLiteral('Twitter'),
  );
  static const github = WindowsFunctionAppDefaultProvider._(
    TfArgLiteral('Github'),
  );

  static const List<WindowsFunctionAppDefaultProvider> values = [
    azureactivedirectory,
    facebook,
    google,
    microsoftaccount,
    twitter,
    github,
  ];
}

/// `unauthenticated_client_action` — derived from the provider schema description.
extension type const WindowsFunctionAppUnauthenticatedClientAction._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsFunctionAppUnauthenticatedClientAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppUnauthenticatedClientAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppUnauthenticatedClientAction.arg(TfArg<String> arg)
    : this._(arg);

  static const redirecttologinpage =
      WindowsFunctionAppUnauthenticatedClientAction._(
        TfArgLiteral('RedirectToLoginPage'),
      );
  static const allowanonymous = WindowsFunctionAppUnauthenticatedClientAction._(
    TfArgLiteral('AllowAnonymous'),
  );

  static const List<WindowsFunctionAppUnauthenticatedClientAction> values = [
    redirecttologinpage,
    allowanonymous,
  ];
}

/// Typed helper for the `auth_settings.active_directory` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppActiveDirectory {
  const WindowsFunctionAppActiveDirectory({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppFacebook {
  const WindowsFunctionAppFacebook({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppGithub {
  const WindowsFunctionAppGithub({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppGoogle {
  const WindowsFunctionAppGoogle({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppMicrosoft {
  const WindowsFunctionAppMicrosoft({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppTwitter {
  const WindowsFunctionAppTwitter({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppAuthSettingsV2 {
  const WindowsFunctionAppAuthSettingsV2({
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

  final WindowsFunctionAppForwardProxyConvention? forwardProxyConvention;

  final TfArg<String>? forwardProxyCustomHostHeaderName;

  final TfArg<String>? forwardProxyCustomSchemeHeaderName;

  final TfArg<String>? httpRouteApiPrefix;

  final TfArg<bool>? requireAuthentication;

  final TfArg<bool>? requireHttps;

  final TfArg<String>? runtimeVersion;

  final WindowsFunctionAppUnauthenticatedAction? unauthenticatedAction;

  final WindowsFunctionAppActiveDirectoryV2? activeDirectoryV2;

  final WindowsFunctionAppAppleV2? appleV2;

  final WindowsFunctionAppAzureStaticWebAppV2? azureStaticWebAppV2;

  final List<WindowsFunctionAppCustomOidcV2>? customOidcV2;

  final WindowsFunctionAppFacebookV2? facebookV2;

  final WindowsFunctionAppGithubV2? githubV2;

  final WindowsFunctionAppGoogleV2? googleV2;

  final WindowsFunctionAppLogin login;

  final WindowsFunctionAppMicrosoftV2? microsoftV2;

  final WindowsFunctionAppTwitterV2? twitterV2;

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

/// `forward_proxy_convention` — derived from the provider schema description.
extension type const WindowsFunctionAppForwardProxyConvention._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppForwardProxyConvention.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppForwardProxyConvention.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppForwardProxyConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const forwardproxyconventionnoproxy =
      WindowsFunctionAppForwardProxyConvention._(
        TfArgLiteral('ForwardProxyConventionNoProxy'),
      );
  static const forwardproxyconventionstandard =
      WindowsFunctionAppForwardProxyConvention._(
        TfArgLiteral('ForwardProxyConventionStandard'),
      );
  static const forwardproxyconventioncustom =
      WindowsFunctionAppForwardProxyConvention._(
        TfArgLiteral('ForwardProxyConventionCustom'),
      );

  static const List<WindowsFunctionAppForwardProxyConvention> values = [
    forwardproxyconventionnoproxy,
    forwardproxyconventionstandard,
    forwardproxyconventioncustom,
  ];
}

/// `unauthenticated_action` — derived from the provider schema description.
extension type const WindowsFunctionAppUnauthenticatedAction._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppUnauthenticatedAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppUnauthenticatedAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppUnauthenticatedAction.arg(TfArg<String> arg)
    : this._(arg);

  static const redirecttologinpage = WindowsFunctionAppUnauthenticatedAction._(
    TfArgLiteral('RedirectToLoginPage'),
  );
  static const allowanonymous = WindowsFunctionAppUnauthenticatedAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const return401 = WindowsFunctionAppUnauthenticatedAction._(
    TfArgLiteral('Return401'),
  );
  static const return403 = WindowsFunctionAppUnauthenticatedAction._(
    TfArgLiteral('Return403'),
  );

  static const List<WindowsFunctionAppUnauthenticatedAction> values = [
    redirecttologinpage,
    allowanonymous,
    return401,
    return403,
  ];
}

/// Typed helper for the `auth_settings_v2.active_directory_v2` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppActiveDirectoryV2 {
  const WindowsFunctionAppActiveDirectoryV2({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppAppleV2 {
  const WindowsFunctionAppAppleV2({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppAzureStaticWebAppV2 {
  const WindowsFunctionAppAzureStaticWebAppV2({required this.clientId});

  final TfArg<String> clientId;

  @internal
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// Typed helper for the `auth_settings_v2.custom_oidc_v2` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppCustomOidcV2 {
  const WindowsFunctionAppCustomOidcV2({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppFacebookV2 {
  const WindowsFunctionAppFacebookV2({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppGithubV2 {
  const WindowsFunctionAppGithubV2({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppGoogleV2 {
  const WindowsFunctionAppGoogleV2({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppLogin {
  const WindowsFunctionAppLogin({
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

  final WindowsFunctionAppCookieExpirationConvention?
  cookieExpirationConvention;

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

/// `cookie_expiration_convention` — derived from the provider schema description.
extension type const WindowsFunctionAppCookieExpirationConvention._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsFunctionAppCookieExpirationConvention.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppCookieExpirationConvention.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppCookieExpirationConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const fixedtime = WindowsFunctionAppCookieExpirationConvention._(
    TfArgLiteral('FixedTime'),
  );
  static const identityproviderderived =
      WindowsFunctionAppCookieExpirationConvention._(
        TfArgLiteral('IdentityProviderDerived'),
      );

  static const List<WindowsFunctionAppCookieExpirationConvention> values = [
    fixedtime,
    identityproviderderived,
  ];
}

/// Typed helper for the `auth_settings_v2.microsoft_v2` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppMicrosoftV2 {
  const WindowsFunctionAppMicrosoftV2({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppTwitterV2 {
  const WindowsFunctionAppTwitterV2({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppBackup {
  const WindowsFunctionAppBackup({
    this.enabled,
    required this.name,
    required this.storageAccountUrl,
    required this.schedule,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final Sensitive<String> storageAccountUrl;

  final WindowsFunctionAppSchedule schedule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'storage_account_url': storageAccountUrl.toTfJson(),
    'schedule': schedule.encode(),
  };
}

/// Typed helper for the `backup.schedule` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppSchedule {
  const WindowsFunctionAppSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    this.keepAtLeastOneBackup,
    this.retentionPeriodDays,
    this.startTime,
  });

  final TfArg<num> frequencyInterval;

  final WindowsFunctionAppFrequencyUnit frequencyUnit;

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

/// `frequency_unit` — derived from the provider schema description.
extension type const WindowsFunctionAppFrequencyUnit._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppFrequencyUnit.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppFrequencyUnit.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppFrequencyUnit.arg(TfArg<String> arg) : this._(arg);

  static const day = WindowsFunctionAppFrequencyUnit._(TfArgLiteral('Day'));
  static const hour = WindowsFunctionAppFrequencyUnit._(TfArgLiteral('Hour'));

  static const List<WindowsFunctionAppFrequencyUnit> values = [day, hour];
}

/// Typed helper for the `connection_string` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppConnectionString {
  const WindowsFunctionAppConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final WindowsFunctionAppType type;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WindowsFunctionAppType._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppType.variable(String name) : this._(TfArg.variable(name));
  WindowsFunctionAppType.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppType.arg(TfArg<String> arg) : this._(arg);

  static const mysql = WindowsFunctionAppType._(TfArgLiteral('MySQL'));
  static const sqlserver = WindowsFunctionAppType._(TfArgLiteral('SQLServer'));
  static const sqlazure = WindowsFunctionAppType._(TfArgLiteral('SQLAzure'));
  static const custom = WindowsFunctionAppType._(TfArgLiteral('Custom'));
  static const notificationhub = WindowsFunctionAppType._(
    TfArgLiteral('NotificationHub'),
  );
  static const servicebus = WindowsFunctionAppType._(
    TfArgLiteral('ServiceBus'),
  );
  static const eventhub = WindowsFunctionAppType._(TfArgLiteral('EventHub'));
  static const apihub = WindowsFunctionAppType._(TfArgLiteral('APIHub'));
  static const docdb = WindowsFunctionAppType._(TfArgLiteral('DocDb'));
  static const rediscache = WindowsFunctionAppType._(
    TfArgLiteral('RedisCache'),
  );
  static const postgresql = WindowsFunctionAppType._(
    TfArgLiteral('PostgreSQL'),
  );

  static const List<WindowsFunctionAppType> values = [
    mysql,
    sqlserver,
    sqlazure,
    custom,
    notificationhub,
    servicebus,
    eventhub,
    apihub,
    docdb,
    rediscache,
    postgresql,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppIdentity {
  const WindowsFunctionAppIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `site_config` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppSiteConfig {
  const WindowsFunctionAppSiteConfig({
    this.alwaysOn,
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.appScaleLimit,
    this.applicationInsightsConnectionString,
    this.applicationInsightsKey,
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

  final TfArg<List<String>>? defaultDocuments;

  final TfArg<num>? elasticInstanceMinimum;

  final WindowsFunctionAppFtpsState? ftpsState;

  final TfArg<num>? healthCheckEvictionTimeInMin;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final TfArg<String>? ipRestrictionDefaultAction;

  final WindowsFunctionAppLoadBalancingMode? loadBalancingMode;

  final WindowsFunctionAppManagedPipelineMode? managedPipelineMode;

  final TfArg<String>? minimumTlsCipherSuite;

  final WindowsFunctionAppMinimumTlsVersion? minimumTlsVersion;

  final TfArg<num>? preWarmedInstanceCount;

  final TfArg<bool>? remoteDebuggingEnabled;

  final TfArg<String>? remoteDebuggingVersion;

  final TfArg<bool>? runtimeScaleMonitoringEnabled;

  final TfArg<String>? scmIpRestrictionDefaultAction;

  final WindowsFunctionAppScmMinimumTlsVersion? scmMinimumTlsVersion;

  final TfArg<bool>? scmUseMainIpRestriction;

  final TfArg<bool>? use32BitWorker;

  final TfArg<bool>? vnetRouteAllEnabled;

  final TfArg<bool>? websocketsEnabled;

  final TfArg<num>? workerCount;

  final WindowsFunctionAppServiceLogs? appServiceLogs;

  final WindowsFunctionAppApplicationStack? applicationStack;

  final WindowsFunctionAppCors? cors;

  final List<WindowsFunctionAppIpRestriction>? ipRestriction;

  final List<WindowsFunctionAppScmIpRestriction>? scmIpRestriction;

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

/// `ftps_state` — derived from the provider schema description.
extension type const WindowsFunctionAppFtpsState._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppFtpsState.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppFtpsState.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppFtpsState.arg(TfArg<String> arg) : this._(arg);

  static const allallowed = WindowsFunctionAppFtpsState._(
    TfArgLiteral('AllAllowed'),
  );
  static const ftpsonly = WindowsFunctionAppFtpsState._(
    TfArgLiteral('FtpsOnly'),
  );
  static const disabled = WindowsFunctionAppFtpsState._(
    TfArgLiteral('Disabled'),
  );

  static const List<WindowsFunctionAppFtpsState> values = [
    allallowed,
    ftpsonly,
    disabled,
  ];
}

/// `load_balancing_mode` — derived from the provider schema description.
extension type const WindowsFunctionAppLoadBalancingMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppLoadBalancingMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppLoadBalancingMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppLoadBalancingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const weightedroundrobin = WindowsFunctionAppLoadBalancingMode._(
    TfArgLiteral('WeightedRoundRobin'),
  );
  static const leastrequests = WindowsFunctionAppLoadBalancingMode._(
    TfArgLiteral('LeastRequests'),
  );
  static const leastresponsetime = WindowsFunctionAppLoadBalancingMode._(
    TfArgLiteral('LeastResponseTime'),
  );
  static const weightedtotaltraffic = WindowsFunctionAppLoadBalancingMode._(
    TfArgLiteral('WeightedTotalTraffic'),
  );
  static const requesthash = WindowsFunctionAppLoadBalancingMode._(
    TfArgLiteral('RequestHash'),
  );
  static const persiteroundrobin = WindowsFunctionAppLoadBalancingMode._(
    TfArgLiteral('PerSiteRoundRobin'),
  );

  static const List<WindowsFunctionAppLoadBalancingMode> values = [
    weightedroundrobin,
    leastrequests,
    leastresponsetime,
    weightedtotaltraffic,
    requesthash,
    persiteroundrobin,
  ];
}

/// `managed_pipeline_mode` — derived from the provider schema description.
extension type const WindowsFunctionAppManagedPipelineMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppManagedPipelineMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppManagedPipelineMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppManagedPipelineMode.arg(TfArg<String> arg)
    : this._(arg);

  static const integrated = WindowsFunctionAppManagedPipelineMode._(
    TfArgLiteral('Integrated'),
  );
  static const classic = WindowsFunctionAppManagedPipelineMode._(
    TfArgLiteral('Classic'),
  );

  static const List<WindowsFunctionAppManagedPipelineMode> values = [
    integrated,
    classic,
  ];
}

/// `minimum_tls_version` — derived from the provider schema description.
extension type const WindowsFunctionAppMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p0 = WindowsFunctionAppMinimumTlsVersion._(
    TfArgLiteral('1.0'),
  );
  static const v1p1 = WindowsFunctionAppMinimumTlsVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p2 = WindowsFunctionAppMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );

  static const List<WindowsFunctionAppMinimumTlsVersion> values = [
    v1p0,
    v1p1,
    v1p2,
  ];
}

/// `scm_minimum_tls_version` — derived from the provider schema description.
extension type const WindowsFunctionAppScmMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppScmMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppScmMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppScmMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p0 = WindowsFunctionAppScmMinimumTlsVersion._(
    TfArgLiteral('1.0'),
  );
  static const v1p1 = WindowsFunctionAppScmMinimumTlsVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p2 = WindowsFunctionAppScmMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p3 = WindowsFunctionAppScmMinimumTlsVersion._(
    TfArgLiteral('1.3'),
  );

  static const List<WindowsFunctionAppScmMinimumTlsVersion> values = [
    v1p0,
    v1p1,
    v1p2,
    v1p3,
  ];
}

/// Typed helper for the `site_config.app_service_logs` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppServiceLogs {
  const WindowsFunctionAppServiceLogs({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppApplicationStack {
  const WindowsFunctionAppApplicationStack({
    this.dotnetVersion,
    this.javaVersion,
    this.nodeVersion,
    this.powershellCoreVersion,
    this.useCustomRuntime,
    this.useDotnetIsolatedRuntime,
  });

  final WindowsFunctionAppDotnetVersion? dotnetVersion;

  final WindowsFunctionAppJavaVersion? javaVersion;

  final WindowsFunctionAppNodeVersion? nodeVersion;

  final WindowsFunctionAppPowershellCoreVersion? powershellCoreVersion;

  final TfArg<bool>? useCustomRuntime;

  final TfArg<bool>? useDotnetIsolatedRuntime;

  @internal
  Map<String, Object?> encode() => {
    'dotnet_version': ?dotnetVersion?.toTfJson(),
    'java_version': ?javaVersion?.toTfJson(),
    'node_version': ?nodeVersion?.toTfJson(),
    'powershell_core_version': ?powershellCoreVersion?.toTfJson(),
    'use_custom_runtime': ?useCustomRuntime?.toTfJson(),
    'use_dotnet_isolated_runtime': ?useDotnetIsolatedRuntime?.toTfJson(),
  };
}

/// `dotnet_version` — derived from the provider schema description.
extension type const WindowsFunctionAppDotnetVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppDotnetVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppDotnetVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppDotnetVersion.arg(TfArg<String> arg) : this._(arg);

  static const v3p0 = WindowsFunctionAppDotnetVersion._(TfArgLiteral('v3.0'));
  static const v4p0 = WindowsFunctionAppDotnetVersion._(TfArgLiteral('v4.0'));
  static const v6p0 = WindowsFunctionAppDotnetVersion._(TfArgLiteral('v6.0'));
  static const v7p0 = WindowsFunctionAppDotnetVersion._(TfArgLiteral('v7.0'));
  static const v8p0 = WindowsFunctionAppDotnetVersion._(TfArgLiteral('v8.0'));
  static const v9p0 = WindowsFunctionAppDotnetVersion._(TfArgLiteral('v9.0'));
  static const v10p0 = WindowsFunctionAppDotnetVersion._(TfArgLiteral('v10.0'));

  static const List<WindowsFunctionAppDotnetVersion> values = [
    v3p0,
    v4p0,
    v6p0,
    v7p0,
    v8p0,
    v9p0,
    v10p0,
  ];
}

/// `java_version` — derived from the provider schema description.
extension type const WindowsFunctionAppJavaVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppJavaVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppJavaVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppJavaVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p8 = WindowsFunctionAppJavaVersion._(TfArgLiteral('1.8'));
  static const v11 = WindowsFunctionAppJavaVersion._(TfArgLiteral('11'));
  static const v17 = WindowsFunctionAppJavaVersion._(TfArgLiteral('17'));
  static const v21 = WindowsFunctionAppJavaVersion._(TfArgLiteral('21'));
  static const v25 = WindowsFunctionAppJavaVersion._(TfArgLiteral('25'));

  static const List<WindowsFunctionAppJavaVersion> values = [
    v1p8,
    v11,
    v17,
    v21,
    v25,
  ];
}

/// `node_version` — derived from the provider schema description.
extension type const WindowsFunctionAppNodeVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppNodeVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppNodeVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppNodeVersion.arg(TfArg<String> arg) : this._(arg);

  static const v12 = WindowsFunctionAppNodeVersion._(TfArgLiteral('~12'));
  static const v14 = WindowsFunctionAppNodeVersion._(TfArgLiteral('~14'));
  static const v16 = WindowsFunctionAppNodeVersion._(TfArgLiteral('~16'));
  static const v18 = WindowsFunctionAppNodeVersion._(TfArgLiteral('~18'));
  static const v20 = WindowsFunctionAppNodeVersion._(TfArgLiteral('~20'));
  static const v22 = WindowsFunctionAppNodeVersion._(TfArgLiteral('~22'));
  static const v24 = WindowsFunctionAppNodeVersion._(TfArgLiteral('~24'));

  static const List<WindowsFunctionAppNodeVersion> values = [
    v12,
    v14,
    v16,
    v18,
    v20,
    v22,
    v24,
  ];
}

/// `powershell_core_version` — derived from the provider schema description.
extension type const WindowsFunctionAppPowershellCoreVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppPowershellCoreVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppPowershellCoreVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppPowershellCoreVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v7 = WindowsFunctionAppPowershellCoreVersion._(
    TfArgLiteral('7'),
  );
  static const v7p2 = WindowsFunctionAppPowershellCoreVersion._(
    TfArgLiteral('7.2'),
  );
  static const v7p4 = WindowsFunctionAppPowershellCoreVersion._(
    TfArgLiteral('7.4'),
  );
  static const v7p6 = WindowsFunctionAppPowershellCoreVersion._(
    TfArgLiteral('7.6'),
  );

  static const List<WindowsFunctionAppPowershellCoreVersion> values = [
    v7,
    v7p2,
    v7p4,
    v7p6,
  ];
}

/// Typed helper for the `site_config.cors` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppCors {
  const WindowsFunctionAppCors({this.allowedOrigins, this.supportCredentials});

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? supportCredentials;

  @internal
  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'support_credentials': ?supportCredentials?.toTfJson(),
  };
}

/// Typed helper for the `site_config.ip_restriction` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppIpRestriction {
  const WindowsFunctionAppIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final WindowsFunctionAppAction? action;

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

/// `action` — derived from the provider schema description.
extension type const WindowsFunctionAppAction._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppAction.variable(String name) : this._(TfArg.variable(name));
  WindowsFunctionAppAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = WindowsFunctionAppAction._(TfArgLiteral('Allow'));
  static const deny = WindowsFunctionAppAction._(TfArgLiteral('Deny'));

  static const List<WindowsFunctionAppAction> values = [allow, deny];
}

/// Typed helper for the `site_config.scm_ip_restriction` block of
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppScmIpRestriction {
  const WindowsFunctionAppScmIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final WindowsFunctionAppAction? action;

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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppStickySettings {
  const WindowsFunctionAppStickySettings({
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
/// `azurerm_windows_function_app` (derived from provider schema).
@immutable
final class WindowsFunctionAppStorageAccount {
  const WindowsFunctionAppStorageAccount({
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

/// Factory wrapper for `azurerm_windows_function_app`.
final class AzurermWindowsFunctionApp extends Resource {
  static const String tfType = 'azurerm_windows_function_app';

  AzurermWindowsFunctionApp(
    super.localName, {
    TfArg<Map<String, String>>? appSettings,
    TfArg<bool>? builtinLoggingEnabled,
    TfArg<bool>? clientCertificateEnabled,
    TfArg<String>? clientCertificateExclusionPaths,
    WindowsFunctionAppClientCertificateMode? clientCertificateMode,
    TfArg<bool>? contentShareForceDisabled,
    TfArg<num>? dailyMemoryTimeQuota,
    TfArg<bool>? enabled,
    TfArg<bool>? endToEndTlsEncryptionEnabled,
    TfArg<bool>? ftpPublishBasicAuthenticationEnabled,
    TfArg<String>? functionsExtensionVersion,
    TfArg<bool>? httpsOnly,
    TfArg<String>? keyVaultReferenceIdentityId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> servicePlanId,
    WindowsFunctionAppStorageAccess? storageAccess,
    required WindowsFunctionAppStorage storage,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? virtualNetworkBackupRestoreEnabled,
    TfArg<String>? virtualNetworkSubnetId,
    TfArg<bool>? vnetImagePullEnabled,
    TfArg<bool>? webdeployPublishBasicAuthenticationEnabled,
    TfArg<String>? zipDeployFile,
    WindowsFunctionAppAuthSettings? authSettings,
    WindowsFunctionAppAuthSettingsV2? authSettingsV2,
    WindowsFunctionAppBackup? backup,
    List<WindowsFunctionAppConnectionString>? connectionString,
    WindowsFunctionAppIdentity? identity,
    required WindowsFunctionAppSiteConfig siteConfig,
    WindowsFunctionAppStickySettings? stickySettings,
    List<WindowsFunctionAppStorageAccount>? storageAccount,
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
           'functions_extension_version': ?functionsExtensionVersion,
           'https_only': ?httpsOnly,
           'key_vault_reference_identity_id': ?keyVaultReferenceIdentityId,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_plan_id': servicePlanId,
           ...?storageAccess?.argMap,
           ...storage.argMap,
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
  Set<String> get sensitiveFields => _azurermWindowsFunctionAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWindowsFunctionApp>`.
  RefTo<AzurermWindowsFunctionApp> get ref => RefTo.of(this);

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

  /// Reference to `functions_extension_version` attribute.
  TfRef<String> get functionsExtensionVersion =>
      TfRef.attribute<String>(this, 'functions_extension_version');

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

  /// Reference to `zip_deploy_file` attribute.
  TfRef<String> get zipDeployFile =>
      TfRef.attribute<String>(this, 'zip_deploy_file');
}
