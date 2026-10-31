// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_windows_web_app`.
const Set<String> _azurermWindowsWebAppSensitive = <String>{
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

/// Windows Web App Client Certificate enum for `client_certificate_mode`.
extension type const WindowsWebAppClientCertificateMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppClientCertificateMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppClientCertificateMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppClientCertificateMode.arg(TfArg<String> arg) : this._(arg);

  static const optional = WindowsWebAppClientCertificateMode._(
    TfArgLiteral('Optional'),
  );
  static const optionalinteractiveuser = WindowsWebAppClientCertificateMode._(
    TfArgLiteral('OptionalInteractiveUser'),
  );
  static const required = WindowsWebAppClientCertificateMode._(
    TfArgLiteral('Required'),
  );

  static const List<WindowsWebAppClientCertificateMode> values = [
    optional,
    optionalinteractiveuser,
    required,
  ];
}

/// Typed helper for the `auth_settings` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppAuthSettings {
  const WindowsWebAppAuthSettings({
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

  final WindowsWebAppDefaultProvider? defaultProvider;

  final TfArg<bool> enabled;

  final TfArg<String>? issuer;

  final TfArg<String>? runtimeVersion;

  final TfArg<num>? tokenRefreshExtensionHours;

  final TfArg<bool>? tokenStoreEnabled;

  final WindowsWebAppUnauthenticatedClientAction? unauthenticatedClientAction;

  final WindowsWebAppActiveDirectory? activeDirectory;

  final WindowsWebAppFacebook? facebook;

  final WindowsWebAppGithub? github;

  final WindowsWebAppGoogle? google;

  final WindowsWebAppMicrosoft? microsoft;

  final WindowsWebAppTwitter? twitter;

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
extension type const WindowsWebAppDefaultProvider._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppDefaultProvider.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppDefaultProvider.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppDefaultProvider.arg(TfArg<String> arg) : this._(arg);

  static const azureactivedirectory = WindowsWebAppDefaultProvider._(
    TfArgLiteral('AzureActiveDirectory'),
  );
  static const facebook = WindowsWebAppDefaultProvider._(
    TfArgLiteral('Facebook'),
  );
  static const github = WindowsWebAppDefaultProvider._(TfArgLiteral('Github'));
  static const google = WindowsWebAppDefaultProvider._(TfArgLiteral('Google'));
  static const microsoftaccount = WindowsWebAppDefaultProvider._(
    TfArgLiteral('MicrosoftAccount'),
  );
  static const twitter = WindowsWebAppDefaultProvider._(
    TfArgLiteral('Twitter'),
  );

  static const List<WindowsWebAppDefaultProvider> values = [
    azureactivedirectory,
    facebook,
    github,
    google,
    microsoftaccount,
    twitter,
  ];
}

/// `unauthenticated_client_action` — derived from the provider schema description.
extension type const WindowsWebAppUnauthenticatedClientAction._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppUnauthenticatedClientAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppUnauthenticatedClientAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppUnauthenticatedClientAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowanonymous = WindowsWebAppUnauthenticatedClientAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const redirecttologinpage = WindowsWebAppUnauthenticatedClientAction._(
    TfArgLiteral('RedirectToLoginPage'),
  );

  static const List<WindowsWebAppUnauthenticatedClientAction> values = [
    allowanonymous,
    redirecttologinpage,
  ];
}

/// Typed helper for the `auth_settings.active_directory` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppActiveDirectory {
  const WindowsWebAppActiveDirectory({
    this.allowedAudiences,
    required this.clientId,
    this.clientSecret,
  });

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<String> clientId;

  final WindowsWebAppActiveDirectoryClientSecret? clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'client_id': clientId.toTfJson(),
    ...?clientSecret?.encode(),
  };
}

/// At most one of `client_secret`, `client_secret_setting_name` on the `auth_settings.active_directory` block of `azurerm_windows_web_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class WindowsWebAppActiveDirectoryClientSecret {
  const WindowsWebAppActiveDirectoryClientSecret();

  /// Sets `client_secret`.
  const factory WindowsWebAppActiveDirectoryClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = WindowsWebAppActiveDirectoryClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory WindowsWebAppActiveDirectoryClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = WindowsWebAppActiveDirectoryClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppActiveDirectoryClientSecret.clientSecret] choice: sets `client_secret`.
final class WindowsWebAppActiveDirectoryClientSecretChoice
    extends WindowsWebAppActiveDirectoryClientSecret {
  const WindowsWebAppActiveDirectoryClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [WindowsWebAppActiveDirectoryClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class WindowsWebAppActiveDirectoryClientSecretSettingName
    extends WindowsWebAppActiveDirectoryClientSecret {
  const WindowsWebAppActiveDirectoryClientSecretSettingName(
    this.clientSecretSettingName,
  );

  final TfArg<String> clientSecretSettingName;

  @internal
  @override
  String get blockKey => 'client_secret_setting_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_secret_setting_name': clientSecretSettingName.toTfJson(),
  };
}

/// Typed helper for the `auth_settings.facebook` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppFacebook {
  const WindowsWebAppFacebook({
    required this.appId,
    required this.appSecret,
    this.oauthScopes,
  });

  final TfArg<String> appId;

  final WindowsWebAppSecret appSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'app_id': appId.toTfJson(),
    ...appSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `app_secret`, `app_secret_setting_name` on the `auth_settings.facebook` block of `azurerm_windows_web_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.appSecret(...)`.
sealed class WindowsWebAppSecret {
  const WindowsWebAppSecret();

  /// Sets `app_secret`.
  const factory WindowsWebAppSecret.appSecret(Sensitive<String> appSecret) =
      WindowsWebAppSecretChoice;

  /// Sets `app_secret_setting_name`.
  const factory WindowsWebAppSecret.appSecretSettingName(
    TfArg<String> appSecretSettingName,
  ) = WindowsWebAppSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppSecret.appSecret] choice: sets `app_secret`.
final class WindowsWebAppSecretChoice extends WindowsWebAppSecret {
  const WindowsWebAppSecretChoice(this.appSecret);

  final Sensitive<String> appSecret;

  @internal
  @override
  String get blockKey => 'app_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'app_secret': appSecret.toTfJson()};
}

/// The [WindowsWebAppSecret.appSecretSettingName] choice: sets `app_secret_setting_name`.
final class WindowsWebAppSecretSettingName extends WindowsWebAppSecret {
  const WindowsWebAppSecretSettingName(this.appSecretSettingName);

  final TfArg<String> appSecretSettingName;

  @internal
  @override
  String get blockKey => 'app_secret_setting_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'app_secret_setting_name': appSecretSettingName.toTfJson(),
  };
}

/// Typed helper for the `auth_settings.github` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppGithub {
  const WindowsWebAppGithub({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final WindowsWebAppGithubClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.github` block of `azurerm_windows_web_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class WindowsWebAppGithubClientSecret {
  const WindowsWebAppGithubClientSecret();

  /// Sets `client_secret`.
  const factory WindowsWebAppGithubClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = WindowsWebAppGithubClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory WindowsWebAppGithubClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = WindowsWebAppGithubClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppGithubClientSecret.clientSecret] choice: sets `client_secret`.
final class WindowsWebAppGithubClientSecretChoice
    extends WindowsWebAppGithubClientSecret {
  const WindowsWebAppGithubClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [WindowsWebAppGithubClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class WindowsWebAppGithubClientSecretSettingName
    extends WindowsWebAppGithubClientSecret {
  const WindowsWebAppGithubClientSecretSettingName(
    this.clientSecretSettingName,
  );

  final TfArg<String> clientSecretSettingName;

  @internal
  @override
  String get blockKey => 'client_secret_setting_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_secret_setting_name': clientSecretSettingName.toTfJson(),
  };
}

/// Typed helper for the `auth_settings.google` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppGoogle {
  const WindowsWebAppGoogle({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final WindowsWebAppGoogleClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.google` block of `azurerm_windows_web_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class WindowsWebAppGoogleClientSecret {
  const WindowsWebAppGoogleClientSecret();

  /// Sets `client_secret`.
  const factory WindowsWebAppGoogleClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = WindowsWebAppGoogleClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory WindowsWebAppGoogleClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = WindowsWebAppGoogleClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppGoogleClientSecret.clientSecret] choice: sets `client_secret`.
final class WindowsWebAppGoogleClientSecretChoice
    extends WindowsWebAppGoogleClientSecret {
  const WindowsWebAppGoogleClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [WindowsWebAppGoogleClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class WindowsWebAppGoogleClientSecretSettingName
    extends WindowsWebAppGoogleClientSecret {
  const WindowsWebAppGoogleClientSecretSettingName(
    this.clientSecretSettingName,
  );

  final TfArg<String> clientSecretSettingName;

  @internal
  @override
  String get blockKey => 'client_secret_setting_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_secret_setting_name': clientSecretSettingName.toTfJson(),
  };
}

/// Typed helper for the `auth_settings.microsoft` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppMicrosoft {
  const WindowsWebAppMicrosoft({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final WindowsWebAppMicrosoftClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.microsoft` block of `azurerm_windows_web_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class WindowsWebAppMicrosoftClientSecret {
  const WindowsWebAppMicrosoftClientSecret();

  /// Sets `client_secret`.
  const factory WindowsWebAppMicrosoftClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = WindowsWebAppMicrosoftClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory WindowsWebAppMicrosoftClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = WindowsWebAppMicrosoftClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppMicrosoftClientSecret.clientSecret] choice: sets `client_secret`.
final class WindowsWebAppMicrosoftClientSecretChoice
    extends WindowsWebAppMicrosoftClientSecret {
  const WindowsWebAppMicrosoftClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [WindowsWebAppMicrosoftClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class WindowsWebAppMicrosoftClientSecretSettingName
    extends WindowsWebAppMicrosoftClientSecret {
  const WindowsWebAppMicrosoftClientSecretSettingName(
    this.clientSecretSettingName,
  );

  final TfArg<String> clientSecretSettingName;

  @internal
  @override
  String get blockKey => 'client_secret_setting_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_secret_setting_name': clientSecretSettingName.toTfJson(),
  };
}

/// Typed helper for the `auth_settings.twitter` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppTwitter {
  const WindowsWebAppTwitter({
    required this.consumerKey,
    required this.consumerSecret,
  });

  final TfArg<String> consumerKey;

  final WindowsWebAppConsumerSecret consumerSecret;

  @internal
  Map<String, Object?> encode() => {
    'consumer_key': consumerKey.toTfJson(),
    ...consumerSecret.encode(),
  };
}

/// Exactly one of `consumer_secret`, `consumer_secret_setting_name` on the `auth_settings.twitter` block of `azurerm_windows_web_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.consumerSecret(...)`.
sealed class WindowsWebAppConsumerSecret {
  const WindowsWebAppConsumerSecret();

  /// Sets `consumer_secret`.
  const factory WindowsWebAppConsumerSecret.consumerSecret(
    Sensitive<String> consumerSecret,
  ) = WindowsWebAppConsumerSecretChoice;

  /// Sets `consumer_secret_setting_name`.
  const factory WindowsWebAppConsumerSecret.consumerSecretSettingName(
    TfArg<String> consumerSecretSettingName,
  ) = WindowsWebAppConsumerSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppConsumerSecret.consumerSecret] choice: sets `consumer_secret`.
final class WindowsWebAppConsumerSecretChoice
    extends WindowsWebAppConsumerSecret {
  const WindowsWebAppConsumerSecretChoice(this.consumerSecret);

  final Sensitive<String> consumerSecret;

  @internal
  @override
  String get blockKey => 'consumer_secret';

  @internal
  @override
  Map<String, Object?> encode() => {
    'consumer_secret': consumerSecret.toTfJson(),
  };
}

/// The [WindowsWebAppConsumerSecret.consumerSecretSettingName] choice: sets `consumer_secret_setting_name`.
final class WindowsWebAppConsumerSecretSettingName
    extends WindowsWebAppConsumerSecret {
  const WindowsWebAppConsumerSecretSettingName(this.consumerSecretSettingName);

  final TfArg<String> consumerSecretSettingName;

  @internal
  @override
  String get blockKey => 'consumer_secret_setting_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'consumer_secret_setting_name': consumerSecretSettingName.toTfJson(),
  };
}

/// Typed helper for the `auth_settings_v2` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppAuthSettingsV2 {
  const WindowsWebAppAuthSettingsV2({
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

  final WindowsWebAppForwardProxyConvention? forwardProxyConvention;

  final TfArg<String>? forwardProxyCustomHostHeaderName;

  final TfArg<String>? forwardProxyCustomSchemeHeaderName;

  final TfArg<String>? httpRouteApiPrefix;

  final TfArg<bool>? requireAuthentication;

  final TfArg<bool>? requireHttps;

  final TfArg<String>? runtimeVersion;

  final WindowsWebAppUnauthenticatedAction? unauthenticatedAction;

  final WindowsWebAppActiveDirectoryV2? activeDirectoryV2;

  final WindowsWebAppAppleV2? appleV2;

  final WindowsWebAppAzureStaticWebAppV2? azureStaticWebAppV2;

  final List<WindowsWebAppCustomOidcV2>? customOidcV2;

  final WindowsWebAppFacebookV2? facebookV2;

  final WindowsWebAppGithubV2? githubV2;

  final WindowsWebAppGoogleV2? googleV2;

  final WindowsWebAppLogin login;

  final WindowsWebAppMicrosoftV2? microsoftV2;

  final WindowsWebAppTwitterV2? twitterV2;

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
extension type const WindowsWebAppForwardProxyConvention._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppForwardProxyConvention.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppForwardProxyConvention.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppForwardProxyConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = WindowsWebAppForwardProxyConvention._(
    TfArgLiteral('Custom'),
  );
  static const noproxy = WindowsWebAppForwardProxyConvention._(
    TfArgLiteral('NoProxy'),
  );
  static const standard = WindowsWebAppForwardProxyConvention._(
    TfArgLiteral('Standard'),
  );

  static const List<WindowsWebAppForwardProxyConvention> values = [
    custom,
    noproxy,
    standard,
  ];
}

/// `unauthenticated_action` — derived from the provider schema description.
extension type const WindowsWebAppUnauthenticatedAction._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppUnauthenticatedAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppUnauthenticatedAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppUnauthenticatedAction.arg(TfArg<String> arg) : this._(arg);

  static const allowanonymous = WindowsWebAppUnauthenticatedAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const redirecttologinpage = WindowsWebAppUnauthenticatedAction._(
    TfArgLiteral('RedirectToLoginPage'),
  );
  static const return401 = WindowsWebAppUnauthenticatedAction._(
    TfArgLiteral('Return401'),
  );
  static const return403 = WindowsWebAppUnauthenticatedAction._(
    TfArgLiteral('Return403'),
  );

  static const List<WindowsWebAppUnauthenticatedAction> values = [
    allowanonymous,
    redirecttologinpage,
    return401,
    return403,
  ];
}

/// Typed helper for the `auth_settings_v2.active_directory_v2` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppActiveDirectoryV2 {
  const WindowsWebAppActiveDirectoryV2({
    this.allowedApplications,
    this.allowedAudiences,
    this.allowedGroups,
    this.allowedIdentities,
    required this.clientId,
    this.clientSecret,
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

  final WindowsWebAppActiveDirectoryV2ClientSecret? clientSecret;

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
    ...?clientSecret?.encode(),
    'jwt_allowed_client_applications': ?jwtAllowedClientApplications
        ?.toTfJson(),
    'jwt_allowed_groups': ?jwtAllowedGroups?.toTfJson(),
    'login_parameters': ?loginParameters?.toTfJson(),
    'tenant_auth_endpoint': tenantAuthEndpoint.toTfJson(),
    'www_authentication_disabled': ?wwwAuthenticationDisabled?.toTfJson(),
  };
}

/// At most one of `client_secret_certificate_thumbprint`, `client_secret_setting_name` on the `auth_settings_v2.active_directory_v2` block of `azurerm_windows_web_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecretCertificateThumbprint(...)`.
sealed class WindowsWebAppActiveDirectoryV2ClientSecret {
  const WindowsWebAppActiveDirectoryV2ClientSecret();

  /// Sets `client_secret_certificate_thumbprint`.
  const factory WindowsWebAppActiveDirectoryV2ClientSecret.clientSecretCertificateThumbprint(
    TfArg<String> clientSecretCertificateThumbprint,
  ) = WindowsWebAppActiveDirectoryV2ClientSecretCertificateThumbprint;

  /// Sets `client_secret_setting_name`.
  const factory WindowsWebAppActiveDirectoryV2ClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = WindowsWebAppActiveDirectoryV2ClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppActiveDirectoryV2ClientSecret.clientSecretCertificateThumbprint] choice: sets `client_secret_certificate_thumbprint`.
final class WindowsWebAppActiveDirectoryV2ClientSecretCertificateThumbprint
    extends WindowsWebAppActiveDirectoryV2ClientSecret {
  const WindowsWebAppActiveDirectoryV2ClientSecretCertificateThumbprint(
    this.clientSecretCertificateThumbprint,
  );

  final TfArg<String> clientSecretCertificateThumbprint;

  @internal
  @override
  String get blockKey => 'client_secret_certificate_thumbprint';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_secret_certificate_thumbprint': clientSecretCertificateThumbprint
        .toTfJson(),
  };
}

/// The [WindowsWebAppActiveDirectoryV2ClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class WindowsWebAppActiveDirectoryV2ClientSecretSettingName
    extends WindowsWebAppActiveDirectoryV2ClientSecret {
  const WindowsWebAppActiveDirectoryV2ClientSecretSettingName(
    this.clientSecretSettingName,
  );

  final TfArg<String> clientSecretSettingName;

  @internal
  @override
  String get blockKey => 'client_secret_setting_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_secret_setting_name': clientSecretSettingName.toTfJson(),
  };
}

/// Typed helper for the `auth_settings_v2.apple_v2` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppAppleV2 {
  const WindowsWebAppAppleV2({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppAzureStaticWebAppV2 {
  const WindowsWebAppAzureStaticWebAppV2({required this.clientId});

  final TfArg<String> clientId;

  @internal
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// Typed helper for the `auth_settings_v2.custom_oidc_v2` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppCustomOidcV2 {
  const WindowsWebAppCustomOidcV2({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppFacebookV2 {
  const WindowsWebAppFacebookV2({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppGithubV2 {
  const WindowsWebAppGithubV2({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppGoogleV2 {
  const WindowsWebAppGoogleV2({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppLogin {
  const WindowsWebAppLogin({
    this.allowedExternalRedirectUrls,
    this.cookieExpirationConvention,
    this.cookieExpirationTime,
    this.logoutEndpoint,
    this.nonceExpirationTime,
    this.preserveUrlFragmentsForLogins,
    this.tokenRefreshExtensionTime,
    this.tokenStoreEnabled,
    this.tokenStore,
    this.validateNonce,
  });

  final TfArg<List<String>>? allowedExternalRedirectUrls;

  final WindowsWebAppCookieExpirationConvention? cookieExpirationConvention;

  final TfArg<String>? cookieExpirationTime;

  final TfArg<String>? logoutEndpoint;

  final TfArg<String>? nonceExpirationTime;

  final TfArg<bool>? preserveUrlFragmentsForLogins;

  final TfArg<num>? tokenRefreshExtensionTime;

  final TfArg<bool>? tokenStoreEnabled;

  final WindowsWebAppTokenStore? tokenStore;

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
    ...?tokenStore?.encode(),
    'validate_nonce': ?validateNonce?.toTfJson(),
  };
}

/// At most one of `token_store_path`, `token_store_sas_setting_name` on the `auth_settings_v2.login` block of `azurerm_windows_web_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.tokenStorePath(...)`.
sealed class WindowsWebAppTokenStore {
  const WindowsWebAppTokenStore();

  /// Sets `token_store_path`.
  const factory WindowsWebAppTokenStore.tokenStorePath(
    TfArg<String> tokenStorePath,
  ) = WindowsWebAppTokenStorePath;

  /// Sets `token_store_sas_setting_name`.
  const factory WindowsWebAppTokenStore.tokenStoreSasSettingName(
    TfArg<String> tokenStoreSasSettingName,
  ) = WindowsWebAppTokenStoreSasSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppTokenStore.tokenStorePath] choice: sets `token_store_path`.
final class WindowsWebAppTokenStorePath extends WindowsWebAppTokenStore {
  const WindowsWebAppTokenStorePath(this.tokenStorePath);

  final TfArg<String> tokenStorePath;

  @internal
  @override
  String get blockKey => 'token_store_path';

  @internal
  @override
  Map<String, Object?> encode() => {
    'token_store_path': tokenStorePath.toTfJson(),
  };
}

/// The [WindowsWebAppTokenStore.tokenStoreSasSettingName] choice: sets `token_store_sas_setting_name`.
final class WindowsWebAppTokenStoreSasSettingName
    extends WindowsWebAppTokenStore {
  const WindowsWebAppTokenStoreSasSettingName(this.tokenStoreSasSettingName);

  final TfArg<String> tokenStoreSasSettingName;

  @internal
  @override
  String get blockKey => 'token_store_sas_setting_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'token_store_sas_setting_name': tokenStoreSasSettingName.toTfJson(),
  };
}

/// `cookie_expiration_convention` — derived from the provider schema description.
extension type const WindowsWebAppCookieExpirationConvention._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppCookieExpirationConvention.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppCookieExpirationConvention.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppCookieExpirationConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const fixedtime = WindowsWebAppCookieExpirationConvention._(
    TfArgLiteral('FixedTime'),
  );
  static const identityproviderderived =
      WindowsWebAppCookieExpirationConvention._(
        TfArgLiteral('IdentityProviderDerived'),
      );

  static const List<WindowsWebAppCookieExpirationConvention> values = [
    fixedtime,
    identityproviderderived,
  ];
}

/// Typed helper for the `auth_settings_v2.microsoft_v2` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppMicrosoftV2 {
  const WindowsWebAppMicrosoftV2({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppTwitterV2 {
  const WindowsWebAppTwitterV2({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppBackup {
  const WindowsWebAppBackup({
    this.enabled,
    required this.name,
    required this.storageAccountUrl,
    required this.schedule,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final Sensitive<String> storageAccountUrl;

  final WindowsWebAppSchedule schedule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'storage_account_url': storageAccountUrl.toTfJson(),
    'schedule': schedule.encode(),
  };
}

/// Typed helper for the `backup.schedule` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppSchedule {
  const WindowsWebAppSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    this.keepAtLeastOneBackup,
    this.retentionPeriodDays,
    this.startTime,
  });

  final TfArg<num> frequencyInterval;

  final WindowsWebAppFrequencyUnit frequencyUnit;

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
extension type const WindowsWebAppFrequencyUnit._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppFrequencyUnit.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppFrequencyUnit.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppFrequencyUnit.arg(TfArg<String> arg) : this._(arg);

  static const day = WindowsWebAppFrequencyUnit._(TfArgLiteral('Day'));
  static const hour = WindowsWebAppFrequencyUnit._(TfArgLiteral('Hour'));

  static const List<WindowsWebAppFrequencyUnit> values = [day, hour];
}

/// Typed helper for the `connection_string` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppConnectionString {
  const WindowsWebAppConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final WindowsWebAppType type;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WindowsWebAppType._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppType.variable(String name) : this._(TfArg.variable(name));
  WindowsWebAppType.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppType.arg(TfArg<String> arg) : this._(arg);

  static const apihub = WindowsWebAppType._(TfArgLiteral('ApiHub'));
  static const custom = WindowsWebAppType._(TfArgLiteral('Custom'));
  static const docdb = WindowsWebAppType._(TfArgLiteral('DocDb'));
  static const eventhub = WindowsWebAppType._(TfArgLiteral('EventHub'));
  static const mysql = WindowsWebAppType._(TfArgLiteral('MySql'));
  static const notificationhub = WindowsWebAppType._(
    TfArgLiteral('NotificationHub'),
  );
  static const postgresql = WindowsWebAppType._(TfArgLiteral('PostgreSQL'));
  static const rediscache = WindowsWebAppType._(TfArgLiteral('RedisCache'));
  static const sqlazure = WindowsWebAppType._(TfArgLiteral('SQLAzure'));
  static const sqlserver = WindowsWebAppType._(TfArgLiteral('SQLServer'));
  static const servicebus = WindowsWebAppType._(TfArgLiteral('ServiceBus'));

  static const List<WindowsWebAppType> values = [
    apihub,
    custom,
    docdb,
    eventhub,
    mysql,
    notificationhub,
    postgresql,
    rediscache,
    sqlazure,
    sqlserver,
    servicebus,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppIdentity {
  const WindowsWebAppIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `logs` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppLogs {
  const WindowsWebAppLogs({
    this.detailedErrorMessages,
    this.failedRequestTracing,
    this.applicationLogs,
    this.httpLogs,
  });

  final TfArg<bool>? detailedErrorMessages;

  final TfArg<bool>? failedRequestTracing;

  final WindowsWebAppApplicationLogs? applicationLogs;

  final WindowsWebAppHttpLogs? httpLogs;

  @internal
  Map<String, Object?> encode() => {
    'detailed_error_messages': ?detailedErrorMessages?.toTfJson(),
    'failed_request_tracing': ?failedRequestTracing?.toTfJson(),
    'application_logs': ?applicationLogs?.encode(),
    'http_logs': ?httpLogs?.encode(),
  };
}

/// Typed helper for the `logs.application_logs` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppApplicationLogs {
  const WindowsWebAppApplicationLogs({
    required this.fileSystemLevel,
    this.azureBlobStorage,
  });

  final WindowsWebAppFileSystemLevel fileSystemLevel;

  final WindowsWebAppApplicationLogsAzureBlobStorage? azureBlobStorage;

  @internal
  Map<String, Object?> encode() => {
    'file_system_level': fileSystemLevel.toTfJson(),
    'azure_blob_storage': ?azureBlobStorage?.encode(),
  };
}

/// `file_system_level` — derived from the provider schema description.
extension type const WindowsWebAppFileSystemLevel._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppFileSystemLevel.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppFileSystemLevel.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppFileSystemLevel.arg(TfArg<String> arg) : this._(arg);

  static const error = WindowsWebAppFileSystemLevel._(TfArgLiteral('Error'));
  static const information = WindowsWebAppFileSystemLevel._(
    TfArgLiteral('Information'),
  );
  static const off = WindowsWebAppFileSystemLevel._(TfArgLiteral('Off'));
  static const verbose = WindowsWebAppFileSystemLevel._(
    TfArgLiteral('Verbose'),
  );
  static const warning = WindowsWebAppFileSystemLevel._(
    TfArgLiteral('Warning'),
  );

  static const List<WindowsWebAppFileSystemLevel> values = [
    error,
    information,
    off,
    verbose,
    warning,
  ];
}

/// Typed helper for the `logs.application_logs.azure_blob_storage` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppApplicationLogsAzureBlobStorage {
  const WindowsWebAppApplicationLogsAzureBlobStorage({
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

/// At most one of `azure_blob_storage`, `file_system` on the `logs.http_logs` block of `azurerm_windows_web_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.azureBlobStorage(...)`.
sealed class WindowsWebAppHttpLogs {
  const WindowsWebAppHttpLogs();

  /// Sets `azure_blob_storage`.
  const factory WindowsWebAppHttpLogs.azureBlobStorage(
    WindowsWebAppHttpLogsAzureBlobStorage azureBlobStorage,
  ) = WindowsWebAppHttpLogsAzureBlobStorageChoice;

  /// Sets `file_system`.
  const factory WindowsWebAppHttpLogs.fileSystem(
    WindowsWebAppFileSystem fileSystem,
  ) = WindowsWebAppHttpLogsFileSystem;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppHttpLogs.azureBlobStorage] choice: sets `azure_blob_storage`.
final class WindowsWebAppHttpLogsAzureBlobStorageChoice
    extends WindowsWebAppHttpLogs {
  const WindowsWebAppHttpLogsAzureBlobStorageChoice(this.azureBlobStorage);

  final WindowsWebAppHttpLogsAzureBlobStorage azureBlobStorage;

  @internal
  @override
  String get blockKey => 'azure_blob_storage';

  @internal
  @override
  Map<String, Object?> encode() => {
    'azure_blob_storage': azureBlobStorage.encode(),
  };
}

/// The [WindowsWebAppHttpLogs.fileSystem] choice: sets `file_system`.
final class WindowsWebAppHttpLogsFileSystem extends WindowsWebAppHttpLogs {
  const WindowsWebAppHttpLogsFileSystem(this.fileSystem);

  final WindowsWebAppFileSystem fileSystem;

  @internal
  @override
  String get blockKey => 'file_system';

  @internal
  @override
  Map<String, Object?> encode() => {'file_system': fileSystem.encode()};
}

/// Typed helper for the `logs.http_logs.azure_blob_storage` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppHttpLogsAzureBlobStorage {
  const WindowsWebAppHttpLogsAzureBlobStorage({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppFileSystem {
  const WindowsWebAppFileSystem({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppSiteConfig {
  const WindowsWebAppSiteConfig({
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
    this.handlerMapping,
    this.ipRestriction,
    this.scmIpRestriction,
    this.virtualApplication,
  });

  final TfArg<bool>? alwaysOn;

  final TfArg<String>? apiDefinitionUrl;

  final TfArg<String>? apiManagementApiId;

  final TfArg<String>? appCommandLine;

  final TfArg<String>? containerRegistryManagedIdentityClientId;

  final TfArg<bool>? containerRegistryUseManagedIdentity;

  final TfArg<List<String>>? defaultDocuments;

  final WindowsWebAppFtpsState? ftpsState;

  final TfArg<num>? healthCheckEvictionTimeInMin;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final WindowsWebAppIpRestrictionDefaultAction? ipRestrictionDefaultAction;

  final WindowsWebAppLoadBalancingMode? loadBalancingMode;

  final TfArg<bool>? localMysqlEnabled;

  final WindowsWebAppManagedPipelineMode? managedPipelineMode;

  final WindowsWebAppMinimumTlsCipherSuite? minimumTlsCipherSuite;

  final WindowsWebAppMinimumTlsVersion? minimumTlsVersion;

  final TfArg<bool>? remoteDebuggingEnabled;

  final TfArg<String>? remoteDebuggingVersion;

  final WindowsWebAppScmIpRestrictionDefaultAction?
  scmIpRestrictionDefaultAction;

  final WindowsWebAppScmMinimumTlsVersion? scmMinimumTlsVersion;

  final TfArg<bool>? scmUseMainIpRestriction;

  final TfArg<bool>? use32BitWorker;

  final TfArg<bool>? vnetRouteAllEnabled;

  final TfArg<bool>? websocketsEnabled;

  final TfArg<num>? workerCount;

  final WindowsWebAppApplicationStack? applicationStack;

  final WindowsWebAppAutoHealSetting? autoHealSetting;

  final WindowsWebAppCors? cors;

  final List<WindowsWebAppHandlerMapping>? handlerMapping;

  final List<WindowsWebAppIpRestriction>? ipRestriction;

  final List<WindowsWebAppScmIpRestriction>? scmIpRestriction;

  final List<WindowsWebAppVirtualApplication>? virtualApplication;

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
    if (handlerMapping != null)
      'handler_mapping': [for (final e in handlerMapping!) e.encode()],
    if (ipRestriction != null)
      'ip_restriction': [for (final e in ipRestriction!) e.encode()],
    if (scmIpRestriction != null)
      'scm_ip_restriction': [for (final e in scmIpRestriction!) e.encode()],
    if (virtualApplication != null)
      'virtual_application': [for (final e in virtualApplication!) e.encode()],
  };
}

/// `ftps_state` — derived from the provider schema description.
extension type const WindowsWebAppFtpsState._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppFtpsState.variable(String name) : this._(TfArg.variable(name));
  WindowsWebAppFtpsState.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppFtpsState.arg(TfArg<String> arg) : this._(arg);

  static const allallowed = WindowsWebAppFtpsState._(
    TfArgLiteral('AllAllowed'),
  );
  static const disabled = WindowsWebAppFtpsState._(TfArgLiteral('Disabled'));
  static const ftpsonly = WindowsWebAppFtpsState._(TfArgLiteral('FtpsOnly'));

  static const List<WindowsWebAppFtpsState> values = [
    allallowed,
    disabled,
    ftpsonly,
  ];
}

/// `ip_restriction_default_action` — derived from the provider schema description.
extension type const WindowsWebAppIpRestrictionDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = WindowsWebAppIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = WindowsWebAppIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<WindowsWebAppIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `load_balancing_mode` — derived from the provider schema description.
extension type const WindowsWebAppLoadBalancingMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppLoadBalancingMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppLoadBalancingMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppLoadBalancingMode.arg(TfArg<String> arg) : this._(arg);

  static const leastrequests = WindowsWebAppLoadBalancingMode._(
    TfArgLiteral('LeastRequests'),
  );
  static const leastresponsetime = WindowsWebAppLoadBalancingMode._(
    TfArgLiteral('LeastResponseTime'),
  );
  static const persiteroundrobin = WindowsWebAppLoadBalancingMode._(
    TfArgLiteral('PerSiteRoundRobin'),
  );
  static const requesthash = WindowsWebAppLoadBalancingMode._(
    TfArgLiteral('RequestHash'),
  );
  static const weightedroundrobin = WindowsWebAppLoadBalancingMode._(
    TfArgLiteral('WeightedRoundRobin'),
  );
  static const weightedtotaltraffic = WindowsWebAppLoadBalancingMode._(
    TfArgLiteral('WeightedTotalTraffic'),
  );

  static const List<WindowsWebAppLoadBalancingMode> values = [
    leastrequests,
    leastresponsetime,
    persiteroundrobin,
    requesthash,
    weightedroundrobin,
    weightedtotaltraffic,
  ];
}

/// `managed_pipeline_mode` — derived from the provider schema description.
extension type const WindowsWebAppManagedPipelineMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppManagedPipelineMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppManagedPipelineMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppManagedPipelineMode.arg(TfArg<String> arg) : this._(arg);

  static const classic = WindowsWebAppManagedPipelineMode._(
    TfArgLiteral('Classic'),
  );
  static const integrated = WindowsWebAppManagedPipelineMode._(
    TfArgLiteral('Integrated'),
  );

  static const List<WindowsWebAppManagedPipelineMode> values = [
    classic,
    integrated,
  ];
}

/// `minimum_tls_cipher_suite` — derived from the provider schema description.
extension type const WindowsWebAppMinimumTlsCipherSuite._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppMinimumTlsCipherSuite.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppMinimumTlsCipherSuite.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppMinimumTlsCipherSuite.arg(TfArg<String> arg) : this._(arg);

  static const tlsAes128GcmSha256 = WindowsWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_128_GCM_SHA256'),
  );
  static const tlsAes256GcmSha384 = WindowsWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_256_GCM_SHA384'),
  );
  static const tlsEcdheEcdsaWithAes128CbcSha256 =
      WindowsWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes128GcmSha256 =
      WindowsWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes256GcmSha384 =
      WindowsWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsEcdheRsaWithAes128CbcSha =
      WindowsWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA'),
      );
  static const tlsEcdheRsaWithAes128CbcSha256 =
      WindowsWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheRsaWithAes128GcmSha256 =
      WindowsWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheRsaWithAes256CbcSha =
      WindowsWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA'),
      );
  static const tlsEcdheRsaWithAes256CbcSha384 =
      WindowsWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384'),
      );
  static const tlsEcdheRsaWithAes256GcmSha384 =
      WindowsWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsRsaWithAes128CbcSha = WindowsWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA'),
  );
  static const tlsRsaWithAes128CbcSha256 = WindowsWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA256'),
  );
  static const tlsRsaWithAes128GcmSha256 = WindowsWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_128_GCM_SHA256'),
  );
  static const tlsRsaWithAes256CbcSha = WindowsWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA'),
  );
  static const tlsRsaWithAes256CbcSha256 = WindowsWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA256'),
  );
  static const tlsRsaWithAes256GcmSha384 = WindowsWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_256_GCM_SHA384'),
  );

  static const List<WindowsWebAppMinimumTlsCipherSuite> values = [
    tlsAes128GcmSha256,
    tlsAes256GcmSha384,
    tlsEcdheEcdsaWithAes128CbcSha256,
    tlsEcdheEcdsaWithAes128GcmSha256,
    tlsEcdheEcdsaWithAes256GcmSha384,
    tlsEcdheRsaWithAes128CbcSha,
    tlsEcdheRsaWithAes128CbcSha256,
    tlsEcdheRsaWithAes128GcmSha256,
    tlsEcdheRsaWithAes256CbcSha,
    tlsEcdheRsaWithAes256CbcSha384,
    tlsEcdheRsaWithAes256GcmSha384,
    tlsRsaWithAes128CbcSha,
    tlsRsaWithAes128CbcSha256,
    tlsRsaWithAes128GcmSha256,
    tlsRsaWithAes256CbcSha,
    tlsRsaWithAes256CbcSha256,
    tlsRsaWithAes256GcmSha384,
  ];
}

/// `minimum_tls_version` — derived from the provider schema description.
extension type const WindowsWebAppMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppMinimumTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p1 = WindowsWebAppMinimumTlsVersion._(TfArgLiteral('1.1'));
  static const v1p3 = WindowsWebAppMinimumTlsVersion._(TfArgLiteral('1.3'));
  static const v1p2 = WindowsWebAppMinimumTlsVersion._(TfArgLiteral('1.2'));
  static const v1p0 = WindowsWebAppMinimumTlsVersion._(TfArgLiteral('1.0'));

  static const List<WindowsWebAppMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// `scm_ip_restriction_default_action` — derived from the provider schema description.
extension type const WindowsWebAppScmIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsWebAppScmIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppScmIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppScmIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = WindowsWebAppScmIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = WindowsWebAppScmIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<WindowsWebAppScmIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `scm_minimum_tls_version` — derived from the provider schema description.
extension type const WindowsWebAppScmMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppScmMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppScmMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppScmMinimumTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p1 = WindowsWebAppScmMinimumTlsVersion._(TfArgLiteral('1.1'));
  static const v1p3 = WindowsWebAppScmMinimumTlsVersion._(TfArgLiteral('1.3'));
  static const v1p2 = WindowsWebAppScmMinimumTlsVersion._(TfArgLiteral('1.2'));
  static const v1p0 = WindowsWebAppScmMinimumTlsVersion._(TfArgLiteral('1.0'));

  static const List<WindowsWebAppScmMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// Typed helper for the `site_config.application_stack` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppApplicationStack {
  const WindowsWebAppApplicationStack({
    this.currentStack,
    this.dockerImageName,
    this.dockerRegistryPassword,
    this.dockerRegistryUrl,
    this.dockerRegistryUsername,
    this.dotnetCoreVersion,
    this.dotnetVersion,
    this.javaContainer,
    this.javaContainerVersion,
    this.javaEmbeddedServerEnabled,
    this.javaVersion,
    this.nodeVersion,
    this.phpVersion,
    this.python,
    this.tomcatVersion,
  });

  final WindowsWebAppCurrentStack? currentStack;

  final TfArg<String>? dockerImageName;

  final Sensitive<String>? dockerRegistryPassword;

  final TfArg<String>? dockerRegistryUrl;

  final TfArg<String>? dockerRegistryUsername;

  final TfArg<String>? dotnetCoreVersion;

  final WindowsWebAppDotnetVersion? dotnetVersion;

  final WindowsWebAppJavaContainer? javaContainer;

  final TfArg<String>? javaContainerVersion;

  final TfArg<bool>? javaEmbeddedServerEnabled;

  final TfArg<String>? javaVersion;

  final WindowsWebAppNodeVersion? nodeVersion;

  final TfArg<String>? phpVersion;

  final TfArg<bool>? python;

  final TfArg<String>? tomcatVersion;

  @internal
  Map<String, Object?> encode() => {
    'current_stack': ?currentStack?.toTfJson(),
    'docker_image_name': ?dockerImageName?.toTfJson(),
    'docker_registry_password': ?dockerRegistryPassword?.toTfJson(),
    'docker_registry_url': ?dockerRegistryUrl?.toTfJson(),
    'docker_registry_username': ?dockerRegistryUsername?.toTfJson(),
    'dotnet_core_version': ?dotnetCoreVersion?.toTfJson(),
    'dotnet_version': ?dotnetVersion?.toTfJson(),
    'java_container': ?javaContainer?.toTfJson(),
    'java_container_version': ?javaContainerVersion?.toTfJson(),
    'java_embedded_server_enabled': ?javaEmbeddedServerEnabled?.toTfJson(),
    'java_version': ?javaVersion?.toTfJson(),
    'node_version': ?nodeVersion?.toTfJson(),
    'php_version': ?phpVersion?.toTfJson(),
    'python': ?python?.toTfJson(),
    'tomcat_version': ?tomcatVersion?.toTfJson(),
  };
}

/// `current_stack` — derived from the provider schema description.
extension type const WindowsWebAppCurrentStack._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppCurrentStack.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppCurrentStack.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppCurrentStack.arg(TfArg<String> arg) : this._(arg);

  static const dotnet = WindowsWebAppCurrentStack._(TfArgLiteral('dotnet'));
  static const dotnetcore = WindowsWebAppCurrentStack._(
    TfArgLiteral('dotnetcore'),
  );
  static const node = WindowsWebAppCurrentStack._(TfArgLiteral('node'));
  static const python = WindowsWebAppCurrentStack._(TfArgLiteral('python'));
  static const php = WindowsWebAppCurrentStack._(TfArgLiteral('php'));
  static const java = WindowsWebAppCurrentStack._(TfArgLiteral('java'));

  static const List<WindowsWebAppCurrentStack> values = [
    dotnet,
    dotnetcore,
    node,
    python,
    php,
    java,
  ];
}

/// `dotnet_version` — derived from the provider schema description.
extension type const WindowsWebAppDotnetVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppDotnetVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppDotnetVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppDotnetVersion.arg(TfArg<String> arg) : this._(arg);

  static const v2p0 = WindowsWebAppDotnetVersion._(TfArgLiteral('v2.0'));
  static const v3p0 = WindowsWebAppDotnetVersion._(TfArgLiteral('v3.0'));
  static const v4p0 = WindowsWebAppDotnetVersion._(TfArgLiteral('v4.0'));
  static const v5p0 = WindowsWebAppDotnetVersion._(TfArgLiteral('v5.0'));
  static const v6p0 = WindowsWebAppDotnetVersion._(TfArgLiteral('v6.0'));
  static const v7p0 = WindowsWebAppDotnetVersion._(TfArgLiteral('v7.0'));
  static const v8p0 = WindowsWebAppDotnetVersion._(TfArgLiteral('v8.0'));
  static const v9p0 = WindowsWebAppDotnetVersion._(TfArgLiteral('v9.0'));
  static const v10p0 = WindowsWebAppDotnetVersion._(TfArgLiteral('v10.0'));

  static const List<WindowsWebAppDotnetVersion> values = [
    v2p0,
    v3p0,
    v4p0,
    v5p0,
    v6p0,
    v7p0,
    v8p0,
    v9p0,
    v10p0,
  ];
}

/// `java_container` — derived from the provider schema description.
extension type const WindowsWebAppJavaContainer._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppJavaContainer.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppJavaContainer.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppJavaContainer.arg(TfArg<String> arg) : this._(arg);

  static const java = WindowsWebAppJavaContainer._(TfArgLiteral('JAVA'));
  static const jetty = WindowsWebAppJavaContainer._(TfArgLiteral('JETTY'));
  static const tomcat = WindowsWebAppJavaContainer._(TfArgLiteral('TOMCAT'));

  static const List<WindowsWebAppJavaContainer> values = [java, jetty, tomcat];
}

/// `node_version` — derived from the provider schema description.
extension type const WindowsWebAppNodeVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppNodeVersion.variable(String name) : this._(TfArg.variable(name));
  WindowsWebAppNodeVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppNodeVersion.arg(TfArg<String> arg) : this._(arg);

  static const v14 = WindowsWebAppNodeVersion._(TfArgLiteral('~14'));
  static const v16 = WindowsWebAppNodeVersion._(TfArgLiteral('~16'));
  static const v18 = WindowsWebAppNodeVersion._(TfArgLiteral('~18'));
  static const v20 = WindowsWebAppNodeVersion._(TfArgLiteral('~20'));
  static const v22 = WindowsWebAppNodeVersion._(TfArgLiteral('~22'));
  static const v24 = WindowsWebAppNodeVersion._(TfArgLiteral('~24'));

  static const List<WindowsWebAppNodeVersion> values = [
    v14,
    v16,
    v18,
    v20,
    v22,
    v24,
  ];
}

/// Typed helper for the `site_config.auto_heal_setting` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppAutoHealSetting {
  const WindowsWebAppAutoHealSetting({
    required this.action,
    required this.trigger,
  });

  final WindowsWebAppAction action;

  final WindowsWebAppTrigger trigger;

  @internal
  Map<String, Object?> encode() => {
    'action': action.encode(),
    'trigger': trigger.encode(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.action` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppAction {
  const WindowsWebAppAction({
    required this.actionType,
    this.minimumProcessExecutionTime,
    this.customAction,
  });

  final WindowsWebAppActionType actionType;

  final TfArg<String>? minimumProcessExecutionTime;

  final WindowsWebAppCustomAction? customAction;

  @internal
  Map<String, Object?> encode() => {
    'action_type': actionType.toTfJson(),
    'minimum_process_execution_time': ?minimumProcessExecutionTime?.toTfJson(),
    'custom_action': ?customAction?.encode(),
  };
}

/// `action_type` — derived from the provider schema description.
extension type const WindowsWebAppActionType._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppActionType.variable(String name) : this._(TfArg.variable(name));
  WindowsWebAppActionType.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppActionType.arg(TfArg<String> arg) : this._(arg);

  static const customaction = WindowsWebAppActionType._(
    TfArgLiteral('CustomAction'),
  );
  static const logevent = WindowsWebAppActionType._(TfArgLiteral('LogEvent'));
  static const recycle = WindowsWebAppActionType._(TfArgLiteral('Recycle'));

  static const List<WindowsWebAppActionType> values = [
    customaction,
    logevent,
    recycle,
  ];
}

/// Typed helper for the `site_config.auto_heal_setting.action.custom_action` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppCustomAction {
  const WindowsWebAppCustomAction({required this.executable, this.parameters});

  final TfArg<String> executable;

  final TfArg<String>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'executable': executable.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.trigger` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppTrigger {
  const WindowsWebAppTrigger({
    this.privateMemoryKb,
    this.requests,
    this.slowRequest,
    this.slowRequestWithPath,
    this.statusCode,
  });

  final TfArg<num>? privateMemoryKb;

  final WindowsWebAppRequests? requests;

  final WindowsWebAppSlowRequest? slowRequest;

  final List<WindowsWebAppSlowRequestWithPath>? slowRequestWithPath;

  final List<WindowsWebAppStatusCode>? statusCode;

  @internal
  Map<String, Object?> encode() => {
    'private_memory_kb': ?privateMemoryKb?.toTfJson(),
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppRequests {
  const WindowsWebAppRequests({required this.count, required this.interval});

  final TfArg<num> count;

  final TfArg<String> interval;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'interval': interval.toTfJson(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.trigger.slow_request` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppSlowRequest {
  const WindowsWebAppSlowRequest({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppSlowRequestWithPath {
  const WindowsWebAppSlowRequestWithPath({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppStatusCode {
  const WindowsWebAppStatusCode({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppCors {
  const WindowsWebAppCors({this.allowedOrigins, this.supportCredentials});

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? supportCredentials;

  @internal
  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'support_credentials': ?supportCredentials?.toTfJson(),
  };
}

/// Typed helper for the `site_config.handler_mapping` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppHandlerMapping {
  const WindowsWebAppHandlerMapping({
    this.arguments,
    required this.extension,
    required this.scriptProcessorPath,
  });

  final TfArg<String>? arguments;

  final TfArg<String> extension;

  final TfArg<String> scriptProcessorPath;

  @internal
  Map<String, Object?> encode() => {
    'arguments': ?arguments?.toTfJson(),
    'extension': extension.toTfJson(),
    'script_processor_path': scriptProcessorPath.toTfJson(),
  };
}

/// Typed helper for the `site_config.ip_restriction` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppIpRestriction {
  const WindowsWebAppIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final WindowsWebAppIpRestrictionAction? action;

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
extension type const WindowsWebAppIpRestrictionAction._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppIpRestrictionAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppIpRestrictionAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppIpRestrictionAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = WindowsWebAppIpRestrictionAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = WindowsWebAppIpRestrictionAction._(TfArgLiteral('Deny'));

  static const List<WindowsWebAppIpRestrictionAction> values = [allow, deny];
}

/// Typed helper for the `site_config.scm_ip_restriction` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppScmIpRestriction {
  const WindowsWebAppScmIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final WindowsWebAppIpRestrictionAction? action;

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

/// Typed helper for the `site_config.virtual_application` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppVirtualApplication {
  const WindowsWebAppVirtualApplication({
    required this.physicalPath,
    required this.preload,
    required this.virtualPath,
    this.virtualDirectory,
  });

  final TfArg<String> physicalPath;

  final TfArg<bool> preload;

  final TfArg<String> virtualPath;

  final List<WindowsWebAppVirtualDirectory>? virtualDirectory;

  @internal
  Map<String, Object?> encode() => {
    'physical_path': physicalPath.toTfJson(),
    'preload': preload.toTfJson(),
    'virtual_path': virtualPath.toTfJson(),
    if (virtualDirectory != null)
      'virtual_directory': [for (final e in virtualDirectory!) e.encode()],
  };
}

/// Typed helper for the `site_config.virtual_application.virtual_directory` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppVirtualDirectory {
  const WindowsWebAppVirtualDirectory({this.physicalPath, this.virtualPath});

  final TfArg<String>? physicalPath;

  final TfArg<String>? virtualPath;

  @internal
  Map<String, Object?> encode() => {
    'physical_path': ?physicalPath?.toTfJson(),
    'virtual_path': ?virtualPath?.toTfJson(),
  };
}

/// Typed helper for the `sticky_settings` block of
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppStickySettings {
  const WindowsWebAppStickySettings({
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
/// `azurerm_windows_web_app` (derived from provider schema).
@immutable
final class WindowsWebAppStorageAccount {
  const WindowsWebAppStorageAccount({
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

/// Factory wrapper for `azurerm_windows_web_app`.
final class AzurermWindowsWebApp extends Resource {
  static const String tfType = 'azurerm_windows_web_app';

  AzurermWindowsWebApp(
    super.localName, {
    TfArg<Map<String, String>>? appSettings,
    TfArg<bool>? clientAffinityEnabled,
    TfArg<bool>? clientCertificateEnabled,
    TfArg<String>? clientCertificateExclusionPaths,
    WindowsWebAppClientCertificateMode? clientCertificateMode,
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
    TfArg<bool>? virtualNetworkImagePullEnabled,
    TfArg<String>? virtualNetworkSubnetId,
    TfArg<bool>? webdeployPublishBasicAuthenticationEnabled,
    TfArg<String>? zipDeployFile,
    WindowsWebAppAuthSettings? authSettings,
    WindowsWebAppAuthSettingsV2? authSettingsV2,
    WindowsWebAppBackup? backup,
    List<WindowsWebAppConnectionString>? connectionString,
    WindowsWebAppIdentity? identity,
    WindowsWebAppLogs? logs,
    required WindowsWebAppSiteConfig siteConfig,
    WindowsWebAppStickySettings? stickySettings,
    List<WindowsWebAppStorageAccount>? storageAccount,
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
           'virtual_network_image_pull_enabled':
               ?virtualNetworkImagePullEnabled,
           'virtual_network_subnet_id': ?virtualNetworkSubnetId,
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
  Set<String> get sensitiveFields => _azurermWindowsWebAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWindowsWebApp>`.
  RefTo<AzurermWindowsWebApp> get ref => RefTo.of(this);

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

  /// Reference to `virtual_network_image_pull_enabled` attribute.
  TfRef<bool> get virtualNetworkImagePullEnabled =>
      TfRef.attribute<bool>(this, 'virtual_network_image_pull_enabled');

  /// Reference to `virtual_network_subnet_id` attribute.
  TfRef<String> get virtualNetworkSubnetId =>
      TfRef.attribute<String>(this, 'virtual_network_subnet_id');

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
