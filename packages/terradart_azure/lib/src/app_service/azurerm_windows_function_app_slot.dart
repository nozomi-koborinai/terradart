// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_windows_function_app_slot`.
const Set<String> _azurermWindowsFunctionAppSlotSensitive = <String>{
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

/// Windows Function App Slot Client Certificate enum for `client_certificate_mode`.
extension type const WindowsFunctionAppSlotClientCertificateMode._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsFunctionAppSlotClientCertificateMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotClientCertificateMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotClientCertificateMode.arg(TfArg<String> arg)
    : this._(arg);

  static const optional = WindowsFunctionAppSlotClientCertificateMode._(
    TfArgLiteral('Optional'),
  );
  static const optionalinteractiveuser =
      WindowsFunctionAppSlotClientCertificateMode._(
        TfArgLiteral('OptionalInteractiveUser'),
      );
  static const required = WindowsFunctionAppSlotClientCertificateMode._(
    TfArgLiteral('Required'),
  );

  static const List<WindowsFunctionAppSlotClientCertificateMode> values = [
    optional,
    optionalinteractiveuser,
    required,
  ];
}

/// Exactly one of `storage_account_name`, `storage_key_vault_secret_id` on `azurerm_windows_function_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.storageAccountName(...)`.
sealed class WindowsFunctionAppSlotStorage {
  const WindowsFunctionAppSlotStorage();

  /// Sets `storage_account_name`.
  const factory WindowsFunctionAppSlotStorage.storageAccountName(
    RefTo<AzurermStorageAccount> storageAccountName,
  ) = WindowsFunctionAppSlotStorageAccountName;

  /// Sets `storage_key_vault_secret_id`.
  const factory WindowsFunctionAppSlotStorage.storageKeyVaultSecretId(
    TfArg<String> storageKeyVaultSecretId,
  ) = WindowsFunctionAppSlotStorageKeyVaultSecretId;

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

/// The [WindowsFunctionAppSlotStorage.storageAccountName] choice: sets `storage_account_name`.
final class WindowsFunctionAppSlotStorageAccountName
    extends WindowsFunctionAppSlotStorage {
  const WindowsFunctionAppSlotStorageAccountName(this.storageAccountName);

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

/// The [WindowsFunctionAppSlotStorage.storageKeyVaultSecretId] choice: sets `storage_key_vault_secret_id`.
final class WindowsFunctionAppSlotStorageKeyVaultSecretId
    extends WindowsFunctionAppSlotStorage {
  const WindowsFunctionAppSlotStorageKeyVaultSecretId(
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

/// At most one of `storage_account_access_key`, `storage_uses_managed_identity` on `azurerm_windows_function_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.storageAccountAccessKey(...)`.
sealed class WindowsFunctionAppSlotStorageAccess {
  const WindowsFunctionAppSlotStorageAccess();

  /// Sets `storage_account_access_key`.
  const factory WindowsFunctionAppSlotStorageAccess.storageAccountAccessKey(
    Sensitive<String> storageAccountAccessKey,
  ) = WindowsFunctionAppSlotStorageAccessStorageAccountAccessKey;

  /// Sets `storage_uses_managed_identity`.
  const factory WindowsFunctionAppSlotStorageAccess.storageUsesManagedIdentity(
    TfArg<bool> storageUsesManagedIdentity,
  ) = WindowsFunctionAppSlotStorageAccessStorageUsesManagedIdentity;

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

/// The [WindowsFunctionAppSlotStorageAccess.storageAccountAccessKey] choice: sets `storage_account_access_key`.
final class WindowsFunctionAppSlotStorageAccessStorageAccountAccessKey
    extends WindowsFunctionAppSlotStorageAccess {
  const WindowsFunctionAppSlotStorageAccessStorageAccountAccessKey(
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

/// The [WindowsFunctionAppSlotStorageAccess.storageUsesManagedIdentity] choice: sets `storage_uses_managed_identity`.
final class WindowsFunctionAppSlotStorageAccessStorageUsesManagedIdentity
    extends WindowsFunctionAppSlotStorageAccess {
  const WindowsFunctionAppSlotStorageAccessStorageUsesManagedIdentity(
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotAuthSettings {
  const WindowsFunctionAppSlotAuthSettings({
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

  final WindowsFunctionAppSlotDefaultProvider? defaultProvider;

  final TfArg<bool> enabled;

  final TfArg<String>? issuer;

  final TfArg<String>? runtimeVersion;

  final TfArg<num>? tokenRefreshExtensionHours;

  final TfArg<bool>? tokenStoreEnabled;

  final WindowsFunctionAppSlotUnauthenticatedClientAction?
  unauthenticatedClientAction;

  final WindowsFunctionAppSlotActiveDirectory? activeDirectory;

  final WindowsFunctionAppSlotFacebook? facebook;

  final WindowsFunctionAppSlotGithub? github;

  final WindowsFunctionAppSlotGoogle? google;

  final WindowsFunctionAppSlotMicrosoft? microsoft;

  final WindowsFunctionAppSlotTwitter? twitter;

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
extension type const WindowsFunctionAppSlotDefaultProvider._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppSlotDefaultProvider.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotDefaultProvider.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotDefaultProvider.arg(TfArg<String> arg)
    : this._(arg);

  static const azureactivedirectory = WindowsFunctionAppSlotDefaultProvider._(
    TfArgLiteral('AzureActiveDirectory'),
  );
  static const facebook = WindowsFunctionAppSlotDefaultProvider._(
    TfArgLiteral('Facebook'),
  );
  static const google = WindowsFunctionAppSlotDefaultProvider._(
    TfArgLiteral('Google'),
  );
  static const microsoftaccount = WindowsFunctionAppSlotDefaultProvider._(
    TfArgLiteral('MicrosoftAccount'),
  );
  static const twitter = WindowsFunctionAppSlotDefaultProvider._(
    TfArgLiteral('Twitter'),
  );
  static const github = WindowsFunctionAppSlotDefaultProvider._(
    TfArgLiteral('Github'),
  );

  static const List<WindowsFunctionAppSlotDefaultProvider> values = [
    azureactivedirectory,
    facebook,
    google,
    microsoftaccount,
    twitter,
    github,
  ];
}

/// `unauthenticated_client_action` — derived from the provider schema description.
extension type const WindowsFunctionAppSlotUnauthenticatedClientAction._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsFunctionAppSlotUnauthenticatedClientAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotUnauthenticatedClientAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotUnauthenticatedClientAction.arg(TfArg<String> arg)
    : this._(arg);

  static const redirecttologinpage =
      WindowsFunctionAppSlotUnauthenticatedClientAction._(
        TfArgLiteral('RedirectToLoginPage'),
      );
  static const allowanonymous =
      WindowsFunctionAppSlotUnauthenticatedClientAction._(
        TfArgLiteral('AllowAnonymous'),
      );

  static const List<WindowsFunctionAppSlotUnauthenticatedClientAction> values =
      [redirecttologinpage, allowanonymous];
}

/// Typed helper for the `auth_settings.active_directory` block of
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotActiveDirectory {
  const WindowsFunctionAppSlotActiveDirectory({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotFacebook {
  const WindowsFunctionAppSlotFacebook({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotGithub {
  const WindowsFunctionAppSlotGithub({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotGoogle {
  const WindowsFunctionAppSlotGoogle({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotMicrosoft {
  const WindowsFunctionAppSlotMicrosoft({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotTwitter {
  const WindowsFunctionAppSlotTwitter({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotAuthSettingsV2 {
  const WindowsFunctionAppSlotAuthSettingsV2({
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

  final WindowsFunctionAppSlotForwardProxyConvention? forwardProxyConvention;

  final TfArg<String>? forwardProxyCustomHostHeaderName;

  final TfArg<String>? forwardProxyCustomSchemeHeaderName;

  final TfArg<String>? httpRouteApiPrefix;

  final TfArg<bool>? requireAuthentication;

  final TfArg<bool>? requireHttps;

  final TfArg<String>? runtimeVersion;

  final WindowsFunctionAppSlotUnauthenticatedAction? unauthenticatedAction;

  final WindowsFunctionAppSlotActiveDirectoryV2? activeDirectoryV2;

  final WindowsFunctionAppSlotAppleV2? appleV2;

  final WindowsFunctionAppSlotAzureStaticWebAppV2? azureStaticWebAppV2;

  final List<WindowsFunctionAppSlotCustomOidcV2>? customOidcV2;

  final WindowsFunctionAppSlotFacebookV2? facebookV2;

  final WindowsFunctionAppSlotGithubV2? githubV2;

  final WindowsFunctionAppSlotGoogleV2? googleV2;

  final WindowsFunctionAppSlotLogin login;

  final WindowsFunctionAppSlotMicrosoftV2? microsoftV2;

  final WindowsFunctionAppSlotTwitterV2? twitterV2;

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
extension type const WindowsFunctionAppSlotForwardProxyConvention._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsFunctionAppSlotForwardProxyConvention.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotForwardProxyConvention.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotForwardProxyConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const forwardproxyconventionnoproxy =
      WindowsFunctionAppSlotForwardProxyConvention._(
        TfArgLiteral('ForwardProxyConventionNoProxy'),
      );
  static const forwardproxyconventionstandard =
      WindowsFunctionAppSlotForwardProxyConvention._(
        TfArgLiteral('ForwardProxyConventionStandard'),
      );
  static const forwardproxyconventioncustom =
      WindowsFunctionAppSlotForwardProxyConvention._(
        TfArgLiteral('ForwardProxyConventionCustom'),
      );

  static const List<WindowsFunctionAppSlotForwardProxyConvention> values = [
    forwardproxyconventionnoproxy,
    forwardproxyconventionstandard,
    forwardproxyconventioncustom,
  ];
}

/// `unauthenticated_action` — derived from the provider schema description.
extension type const WindowsFunctionAppSlotUnauthenticatedAction._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsFunctionAppSlotUnauthenticatedAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotUnauthenticatedAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotUnauthenticatedAction.arg(TfArg<String> arg)
    : this._(arg);

  static const redirecttologinpage =
      WindowsFunctionAppSlotUnauthenticatedAction._(
        TfArgLiteral('RedirectToLoginPage'),
      );
  static const allowanonymous = WindowsFunctionAppSlotUnauthenticatedAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const return401 = WindowsFunctionAppSlotUnauthenticatedAction._(
    TfArgLiteral('Return401'),
  );
  static const return403 = WindowsFunctionAppSlotUnauthenticatedAction._(
    TfArgLiteral('Return403'),
  );

  static const List<WindowsFunctionAppSlotUnauthenticatedAction> values = [
    redirecttologinpage,
    allowanonymous,
    return401,
    return403,
  ];
}

/// Typed helper for the `auth_settings_v2.active_directory_v2` block of
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotActiveDirectoryV2 {
  const WindowsFunctionAppSlotActiveDirectoryV2({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotAppleV2 {
  const WindowsFunctionAppSlotAppleV2({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotAzureStaticWebAppV2 {
  const WindowsFunctionAppSlotAzureStaticWebAppV2({required this.clientId});

  final TfArg<String> clientId;

  @internal
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// Typed helper for the `auth_settings_v2.custom_oidc_v2` block of
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotCustomOidcV2 {
  const WindowsFunctionAppSlotCustomOidcV2({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotFacebookV2 {
  const WindowsFunctionAppSlotFacebookV2({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotGithubV2 {
  const WindowsFunctionAppSlotGithubV2({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotGoogleV2 {
  const WindowsFunctionAppSlotGoogleV2({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotLogin {
  const WindowsFunctionAppSlotLogin({
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

  final WindowsFunctionAppSlotCookieExpirationConvention?
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
extension type const WindowsFunctionAppSlotCookieExpirationConvention._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsFunctionAppSlotCookieExpirationConvention.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotCookieExpirationConvention.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotCookieExpirationConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const fixedtime = WindowsFunctionAppSlotCookieExpirationConvention._(
    TfArgLiteral('FixedTime'),
  );
  static const identityproviderderived =
      WindowsFunctionAppSlotCookieExpirationConvention._(
        TfArgLiteral('IdentityProviderDerived'),
      );

  static const List<WindowsFunctionAppSlotCookieExpirationConvention> values = [
    fixedtime,
    identityproviderderived,
  ];
}

/// Typed helper for the `auth_settings_v2.microsoft_v2` block of
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotMicrosoftV2 {
  const WindowsFunctionAppSlotMicrosoftV2({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotTwitterV2 {
  const WindowsFunctionAppSlotTwitterV2({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotBackup {
  const WindowsFunctionAppSlotBackup({
    this.enabled,
    required this.name,
    required this.storageAccountUrl,
    required this.schedule,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final Sensitive<String> storageAccountUrl;

  final WindowsFunctionAppSlotSchedule schedule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'storage_account_url': storageAccountUrl.toTfJson(),
    'schedule': schedule.encode(),
  };
}

/// Typed helper for the `backup.schedule` block of
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotSchedule {
  const WindowsFunctionAppSlotSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    this.keepAtLeastOneBackup,
    this.retentionPeriodDays,
    this.startTime,
  });

  final TfArg<num> frequencyInterval;

  final WindowsFunctionAppSlotFrequencyUnit frequencyUnit;

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
extension type const WindowsFunctionAppSlotFrequencyUnit._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppSlotFrequencyUnit.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotFrequencyUnit.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotFrequencyUnit.arg(TfArg<String> arg)
    : this._(arg);

  static const day = WindowsFunctionAppSlotFrequencyUnit._(TfArgLiteral('Day'));
  static const hour = WindowsFunctionAppSlotFrequencyUnit._(
    TfArgLiteral('Hour'),
  );

  static const List<WindowsFunctionAppSlotFrequencyUnit> values = [day, hour];
}

/// Typed helper for the `connection_string` block of
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotConnectionString {
  const WindowsFunctionAppSlotConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final WindowsFunctionAppSlotType type;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WindowsFunctionAppSlotType._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppSlotType.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotType.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotType.arg(TfArg<String> arg) : this._(arg);

  static const mysql = WindowsFunctionAppSlotType._(TfArgLiteral('MySQL'));
  static const sqlserver = WindowsFunctionAppSlotType._(
    TfArgLiteral('SQLServer'),
  );
  static const sqlazure = WindowsFunctionAppSlotType._(
    TfArgLiteral('SQLAzure'),
  );
  static const custom = WindowsFunctionAppSlotType._(TfArgLiteral('Custom'));
  static const notificationhub = WindowsFunctionAppSlotType._(
    TfArgLiteral('NotificationHub'),
  );
  static const servicebus = WindowsFunctionAppSlotType._(
    TfArgLiteral('ServiceBus'),
  );
  static const eventhub = WindowsFunctionAppSlotType._(
    TfArgLiteral('EventHub'),
  );
  static const apihub = WindowsFunctionAppSlotType._(TfArgLiteral('APIHub'));
  static const docdb = WindowsFunctionAppSlotType._(TfArgLiteral('DocDb'));
  static const rediscache = WindowsFunctionAppSlotType._(
    TfArgLiteral('RedisCache'),
  );
  static const postgresql = WindowsFunctionAppSlotType._(
    TfArgLiteral('PostgreSQL'),
  );

  static const List<WindowsFunctionAppSlotType> values = [
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotIdentity {
  const WindowsFunctionAppSlotIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `site_config` block of
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotSiteConfig {
  const WindowsFunctionAppSlotSiteConfig({
    this.alwaysOn,
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.appScaleLimit,
    this.applicationInsightsConnectionString,
    this.applicationInsightsKey,
    this.autoSwapSlotName,
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

  final TfArg<List<String>>? defaultDocuments;

  final TfArg<num>? elasticInstanceMinimum;

  final WindowsFunctionAppSlotFtpsState? ftpsState;

  final TfArg<num>? healthCheckEvictionTimeInMin;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final TfArg<String>? ipRestrictionDefaultAction;

  final WindowsFunctionAppSlotLoadBalancingMode? loadBalancingMode;

  final WindowsFunctionAppSlotManagedPipelineMode? managedPipelineMode;

  final TfArg<String>? minimumTlsCipherSuite;

  final WindowsFunctionAppSlotMinimumTlsVersion? minimumTlsVersion;

  final TfArg<num>? preWarmedInstanceCount;

  final TfArg<bool>? remoteDebuggingEnabled;

  final TfArg<String>? remoteDebuggingVersion;

  final TfArg<bool>? runtimeScaleMonitoringEnabled;

  final TfArg<String>? scmIpRestrictionDefaultAction;

  final WindowsFunctionAppSlotScmMinimumTlsVersion? scmMinimumTlsVersion;

  final TfArg<bool>? scmUseMainIpRestriction;

  final TfArg<bool>? use32BitWorker;

  final TfArg<bool>? vnetRouteAllEnabled;

  final TfArg<bool>? websocketsEnabled;

  final TfArg<num>? workerCount;

  final WindowsFunctionAppSlotAppServiceLogs? appServiceLogs;

  final WindowsFunctionAppSlotApplicationStack? applicationStack;

  final WindowsFunctionAppSlotCors? cors;

  final List<WindowsFunctionAppSlotIpRestriction>? ipRestriction;

  final List<WindowsFunctionAppSlotScmIpRestriction>? scmIpRestriction;

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
extension type const WindowsFunctionAppSlotFtpsState._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppSlotFtpsState.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotFtpsState.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotFtpsState.arg(TfArg<String> arg) : this._(arg);

  static const allallowed = WindowsFunctionAppSlotFtpsState._(
    TfArgLiteral('AllAllowed'),
  );
  static const ftpsonly = WindowsFunctionAppSlotFtpsState._(
    TfArgLiteral('FtpsOnly'),
  );
  static const disabled = WindowsFunctionAppSlotFtpsState._(
    TfArgLiteral('Disabled'),
  );

  static const List<WindowsFunctionAppSlotFtpsState> values = [
    allallowed,
    ftpsonly,
    disabled,
  ];
}

/// `load_balancing_mode` — derived from the provider schema description.
extension type const WindowsFunctionAppSlotLoadBalancingMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppSlotLoadBalancingMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotLoadBalancingMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotLoadBalancingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const weightedroundrobin = WindowsFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('WeightedRoundRobin'),
  );
  static const leastrequests = WindowsFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('LeastRequests'),
  );
  static const leastresponsetime = WindowsFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('LeastResponseTime'),
  );
  static const weightedtotaltraffic = WindowsFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('WeightedTotalTraffic'),
  );
  static const requesthash = WindowsFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('RequestHash'),
  );
  static const persiteroundrobin = WindowsFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('PerSiteRoundRobin'),
  );

  static const List<WindowsFunctionAppSlotLoadBalancingMode> values = [
    weightedroundrobin,
    leastrequests,
    leastresponsetime,
    weightedtotaltraffic,
    requesthash,
    persiteroundrobin,
  ];
}

/// `managed_pipeline_mode` — derived from the provider schema description.
extension type const WindowsFunctionAppSlotManagedPipelineMode._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsFunctionAppSlotManagedPipelineMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotManagedPipelineMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotManagedPipelineMode.arg(TfArg<String> arg)
    : this._(arg);

  static const integrated = WindowsFunctionAppSlotManagedPipelineMode._(
    TfArgLiteral('Integrated'),
  );
  static const classic = WindowsFunctionAppSlotManagedPipelineMode._(
    TfArgLiteral('Classic'),
  );

  static const List<WindowsFunctionAppSlotManagedPipelineMode> values = [
    integrated,
    classic,
  ];
}

/// `minimum_tls_version` — derived from the provider schema description.
extension type const WindowsFunctionAppSlotMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppSlotMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p0 = WindowsFunctionAppSlotMinimumTlsVersion._(
    TfArgLiteral('1.0'),
  );
  static const v1p1 = WindowsFunctionAppSlotMinimumTlsVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p2 = WindowsFunctionAppSlotMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p3 = WindowsFunctionAppSlotMinimumTlsVersion._(
    TfArgLiteral('1.3'),
  );

  static const List<WindowsFunctionAppSlotMinimumTlsVersion> values = [
    v1p0,
    v1p1,
    v1p2,
    v1p3,
  ];
}

/// `scm_minimum_tls_version` — derived from the provider schema description.
extension type const WindowsFunctionAppSlotScmMinimumTlsVersion._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsFunctionAppSlotScmMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotScmMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotScmMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p0 = WindowsFunctionAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.0'),
  );
  static const v1p1 = WindowsFunctionAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p2 = WindowsFunctionAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p3 = WindowsFunctionAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.3'),
  );

  static const List<WindowsFunctionAppSlotScmMinimumTlsVersion> values = [
    v1p0,
    v1p1,
    v1p2,
    v1p3,
  ];
}

/// Typed helper for the `site_config.app_service_logs` block of
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotAppServiceLogs {
  const WindowsFunctionAppSlotAppServiceLogs({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotApplicationStack {
  const WindowsFunctionAppSlotApplicationStack({
    this.dotnetVersion,
    this.javaVersion,
    this.nodeVersion,
    this.powershellCoreVersion,
    this.useCustomRuntime,
    this.useDotnetIsolatedRuntime,
  });

  final WindowsFunctionAppSlotDotnetVersion? dotnetVersion;

  final WindowsFunctionAppSlotJavaVersion? javaVersion;

  final WindowsFunctionAppSlotNodeVersion? nodeVersion;

  final WindowsFunctionAppSlotPowershellCoreVersion? powershellCoreVersion;

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
extension type const WindowsFunctionAppSlotDotnetVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppSlotDotnetVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotDotnetVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotDotnetVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v3p0 = WindowsFunctionAppSlotDotnetVersion._(
    TfArgLiteral('v3.0'),
  );
  static const v4p0 = WindowsFunctionAppSlotDotnetVersion._(
    TfArgLiteral('v4.0'),
  );
  static const v6p0 = WindowsFunctionAppSlotDotnetVersion._(
    TfArgLiteral('v6.0'),
  );
  static const v7p0 = WindowsFunctionAppSlotDotnetVersion._(
    TfArgLiteral('v7.0'),
  );
  static const v8p0 = WindowsFunctionAppSlotDotnetVersion._(
    TfArgLiteral('v8.0'),
  );
  static const v9p0 = WindowsFunctionAppSlotDotnetVersion._(
    TfArgLiteral('v9.0'),
  );
  static const v10p0 = WindowsFunctionAppSlotDotnetVersion._(
    TfArgLiteral('v10.0'),
  );

  static const List<WindowsFunctionAppSlotDotnetVersion> values = [
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
extension type const WindowsFunctionAppSlotJavaVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppSlotJavaVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotJavaVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotJavaVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p8 = WindowsFunctionAppSlotJavaVersion._(TfArgLiteral('1.8'));
  static const v11 = WindowsFunctionAppSlotJavaVersion._(TfArgLiteral('11'));
  static const v17 = WindowsFunctionAppSlotJavaVersion._(TfArgLiteral('17'));
  static const v21 = WindowsFunctionAppSlotJavaVersion._(TfArgLiteral('21'));
  static const v25 = WindowsFunctionAppSlotJavaVersion._(TfArgLiteral('25'));

  static const List<WindowsFunctionAppSlotJavaVersion> values = [
    v1p8,
    v11,
    v17,
    v21,
    v25,
  ];
}

/// `node_version` — derived from the provider schema description.
extension type const WindowsFunctionAppSlotNodeVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppSlotNodeVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotNodeVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotNodeVersion.arg(TfArg<String> arg) : this._(arg);

  static const v12 = WindowsFunctionAppSlotNodeVersion._(TfArgLiteral('~12'));
  static const v14 = WindowsFunctionAppSlotNodeVersion._(TfArgLiteral('~14'));
  static const v16 = WindowsFunctionAppSlotNodeVersion._(TfArgLiteral('~16'));
  static const v18 = WindowsFunctionAppSlotNodeVersion._(TfArgLiteral('~18'));
  static const v20 = WindowsFunctionAppSlotNodeVersion._(TfArgLiteral('~20'));
  static const v22 = WindowsFunctionAppSlotNodeVersion._(TfArgLiteral('~22'));
  static const v24 = WindowsFunctionAppSlotNodeVersion._(TfArgLiteral('~24'));

  static const List<WindowsFunctionAppSlotNodeVersion> values = [
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
extension type const WindowsFunctionAppSlotPowershellCoreVersion._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsFunctionAppSlotPowershellCoreVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotPowershellCoreVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotPowershellCoreVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v7 = WindowsFunctionAppSlotPowershellCoreVersion._(
    TfArgLiteral('7'),
  );
  static const v7p2 = WindowsFunctionAppSlotPowershellCoreVersion._(
    TfArgLiteral('7.2'),
  );
  static const v7p4 = WindowsFunctionAppSlotPowershellCoreVersion._(
    TfArgLiteral('7.4'),
  );
  static const v7p6 = WindowsFunctionAppSlotPowershellCoreVersion._(
    TfArgLiteral('7.6'),
  );

  static const List<WindowsFunctionAppSlotPowershellCoreVersion> values = [
    v7,
    v7p2,
    v7p4,
    v7p6,
  ];
}

/// Typed helper for the `site_config.cors` block of
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotCors {
  const WindowsFunctionAppSlotCors({
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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotIpRestriction {
  const WindowsFunctionAppSlotIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final WindowsFunctionAppSlotAction? action;

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
extension type const WindowsFunctionAppSlotAction._(TfArg<String> _)
    implements TfArg<String> {
  WindowsFunctionAppSlotAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsFunctionAppSlotAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsFunctionAppSlotAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = WindowsFunctionAppSlotAction._(TfArgLiteral('Allow'));
  static const deny = WindowsFunctionAppSlotAction._(TfArgLiteral('Deny'));

  static const List<WindowsFunctionAppSlotAction> values = [allow, deny];
}

/// Typed helper for the `site_config.scm_ip_restriction` block of
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotScmIpRestriction {
  const WindowsFunctionAppSlotScmIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final WindowsFunctionAppSlotAction? action;

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
/// `azurerm_windows_function_app_slot` (derived from provider schema).
@immutable
final class WindowsFunctionAppSlotStorageAccount {
  const WindowsFunctionAppSlotStorageAccount({
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

/// Factory wrapper for `azurerm_windows_function_app_slot`.
final class AzurermWindowsFunctionAppSlot extends Resource {
  static const String tfType = 'azurerm_windows_function_app_slot';

  AzurermWindowsFunctionAppSlot(
    super.localName, {
    TfArg<Map<String, String>>? appSettings,
    TfArg<bool>? builtinLoggingEnabled,
    TfArg<bool>? clientCertificateEnabled,
    TfArg<String>? clientCertificateExclusionPaths,
    WindowsFunctionAppSlotClientCertificateMode? clientCertificateMode,
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
    WindowsFunctionAppSlotStorageAccess? storageAccess,
    required WindowsFunctionAppSlotStorage storage,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? virtualNetworkBackupRestoreEnabled,
    TfArg<String>? virtualNetworkSubnetId,
    TfArg<bool>? vnetImagePullEnabled,
    TfArg<bool>? webdeployPublishBasicAuthenticationEnabled,
    WindowsFunctionAppSlotAuthSettings? authSettings,
    WindowsFunctionAppSlotAuthSettingsV2? authSettingsV2,
    WindowsFunctionAppSlotBackup? backup,
    List<WindowsFunctionAppSlotConnectionString>? connectionString,
    WindowsFunctionAppSlotIdentity? identity,
    required WindowsFunctionAppSlotSiteConfig siteConfig,
    List<WindowsFunctionAppSlotStorageAccount>? storageAccount,
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
           ...?storageAccess?.argMap,
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
  Set<String> get sensitiveFields => _azurermWindowsFunctionAppSlotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWindowsFunctionAppSlot>`.
  RefTo<AzurermWindowsFunctionAppSlot> get ref => RefTo.of(this);

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
