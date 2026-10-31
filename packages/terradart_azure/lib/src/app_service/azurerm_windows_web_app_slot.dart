// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_windows_web_app_slot`.
const Set<String> _azurermWindowsWebAppSlotSensitive = <String>{
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

/// Windows Web App Slot Client Certificate enum for `client_certificate_mode`.
extension type const WindowsWebAppSlotClientCertificateMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotClientCertificateMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotClientCertificateMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotClientCertificateMode.arg(TfArg<String> arg)
    : this._(arg);

  static const optional = WindowsWebAppSlotClientCertificateMode._(
    TfArgLiteral('Optional'),
  );
  static const optionalinteractiveuser =
      WindowsWebAppSlotClientCertificateMode._(
        TfArgLiteral('OptionalInteractiveUser'),
      );
  static const required = WindowsWebAppSlotClientCertificateMode._(
    TfArgLiteral('Required'),
  );

  static const List<WindowsWebAppSlotClientCertificateMode> values = [
    optional,
    optionalinteractiveuser,
    required,
  ];
}

/// Typed helper for the `auth_settings` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotAuthSettings {
  const WindowsWebAppSlotAuthSettings({
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

  final WindowsWebAppSlotDefaultProvider? defaultProvider;

  final TfArg<bool> enabled;

  final TfArg<String>? issuer;

  final TfArg<String>? runtimeVersion;

  final TfArg<num>? tokenRefreshExtensionHours;

  final TfArg<bool>? tokenStoreEnabled;

  final WindowsWebAppSlotUnauthenticatedClientAction?
  unauthenticatedClientAction;

  final WindowsWebAppSlotActiveDirectory? activeDirectory;

  final WindowsWebAppSlotFacebook? facebook;

  final WindowsWebAppSlotGithub? github;

  final WindowsWebAppSlotGoogle? google;

  final WindowsWebAppSlotMicrosoft? microsoft;

  final WindowsWebAppSlotTwitter? twitter;

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
extension type const WindowsWebAppSlotDefaultProvider._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotDefaultProvider.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotDefaultProvider.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotDefaultProvider.arg(TfArg<String> arg) : this._(arg);

  static const azureactivedirectory = WindowsWebAppSlotDefaultProvider._(
    TfArgLiteral('AzureActiveDirectory'),
  );
  static const facebook = WindowsWebAppSlotDefaultProvider._(
    TfArgLiteral('Facebook'),
  );
  static const github = WindowsWebAppSlotDefaultProvider._(
    TfArgLiteral('Github'),
  );
  static const google = WindowsWebAppSlotDefaultProvider._(
    TfArgLiteral('Google'),
  );
  static const microsoftaccount = WindowsWebAppSlotDefaultProvider._(
    TfArgLiteral('MicrosoftAccount'),
  );
  static const twitter = WindowsWebAppSlotDefaultProvider._(
    TfArgLiteral('Twitter'),
  );

  static const List<WindowsWebAppSlotDefaultProvider> values = [
    azureactivedirectory,
    facebook,
    github,
    google,
    microsoftaccount,
    twitter,
  ];
}

/// `unauthenticated_client_action` — derived from the provider schema description.
extension type const WindowsWebAppSlotUnauthenticatedClientAction._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsWebAppSlotUnauthenticatedClientAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotUnauthenticatedClientAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotUnauthenticatedClientAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowanonymous = WindowsWebAppSlotUnauthenticatedClientAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const redirecttologinpage =
      WindowsWebAppSlotUnauthenticatedClientAction._(
        TfArgLiteral('RedirectToLoginPage'),
      );

  static const List<WindowsWebAppSlotUnauthenticatedClientAction> values = [
    allowanonymous,
    redirecttologinpage,
  ];
}

/// Typed helper for the `auth_settings.active_directory` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotActiveDirectory {
  const WindowsWebAppSlotActiveDirectory({
    this.allowedAudiences,
    required this.clientId,
    this.clientSecret,
  });

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<String> clientId;

  final WindowsWebAppSlotActiveDirectoryClientSecret? clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'client_id': clientId.toTfJson(),
    ...?clientSecret?.encode(),
  };
}

/// At most one of `client_secret`, `client_secret_setting_name` on the `auth_settings.active_directory` block of `azurerm_windows_web_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class WindowsWebAppSlotActiveDirectoryClientSecret {
  const WindowsWebAppSlotActiveDirectoryClientSecret();

  /// Sets `client_secret`.
  const factory WindowsWebAppSlotActiveDirectoryClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = WindowsWebAppSlotActiveDirectoryClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory WindowsWebAppSlotActiveDirectoryClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = WindowsWebAppSlotActiveDirectoryClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppSlotActiveDirectoryClientSecret.clientSecret] choice: sets `client_secret`.
final class WindowsWebAppSlotActiveDirectoryClientSecretChoice
    extends WindowsWebAppSlotActiveDirectoryClientSecret {
  const WindowsWebAppSlotActiveDirectoryClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [WindowsWebAppSlotActiveDirectoryClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class WindowsWebAppSlotActiveDirectoryClientSecretSettingName
    extends WindowsWebAppSlotActiveDirectoryClientSecret {
  const WindowsWebAppSlotActiveDirectoryClientSecretSettingName(
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotFacebook {
  const WindowsWebAppSlotFacebook({
    required this.appId,
    required this.appSecret,
    this.oauthScopes,
  });

  final TfArg<String> appId;

  final WindowsWebAppSlotAppSecret appSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'app_id': appId.toTfJson(),
    ...appSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `app_secret`, `app_secret_setting_name` on the `auth_settings.facebook` block of `azurerm_windows_web_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.appSecret(...)`.
sealed class WindowsWebAppSlotAppSecret {
  const WindowsWebAppSlotAppSecret();

  /// Sets `app_secret`.
  const factory WindowsWebAppSlotAppSecret.appSecret(
    Sensitive<String> appSecret,
  ) = WindowsWebAppSlotAppSecretChoice;

  /// Sets `app_secret_setting_name`.
  const factory WindowsWebAppSlotAppSecret.appSecretSettingName(
    TfArg<String> appSecretSettingName,
  ) = WindowsWebAppSlotAppSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppSlotAppSecret.appSecret] choice: sets `app_secret`.
final class WindowsWebAppSlotAppSecretChoice
    extends WindowsWebAppSlotAppSecret {
  const WindowsWebAppSlotAppSecretChoice(this.appSecret);

  final Sensitive<String> appSecret;

  @internal
  @override
  String get blockKey => 'app_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'app_secret': appSecret.toTfJson()};
}

/// The [WindowsWebAppSlotAppSecret.appSecretSettingName] choice: sets `app_secret_setting_name`.
final class WindowsWebAppSlotAppSecretSettingName
    extends WindowsWebAppSlotAppSecret {
  const WindowsWebAppSlotAppSecretSettingName(this.appSecretSettingName);

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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotGithub {
  const WindowsWebAppSlotGithub({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final WindowsWebAppSlotGithubClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.github` block of `azurerm_windows_web_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class WindowsWebAppSlotGithubClientSecret {
  const WindowsWebAppSlotGithubClientSecret();

  /// Sets `client_secret`.
  const factory WindowsWebAppSlotGithubClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = WindowsWebAppSlotGithubClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory WindowsWebAppSlotGithubClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = WindowsWebAppSlotGithubClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppSlotGithubClientSecret.clientSecret] choice: sets `client_secret`.
final class WindowsWebAppSlotGithubClientSecretChoice
    extends WindowsWebAppSlotGithubClientSecret {
  const WindowsWebAppSlotGithubClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [WindowsWebAppSlotGithubClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class WindowsWebAppSlotGithubClientSecretSettingName
    extends WindowsWebAppSlotGithubClientSecret {
  const WindowsWebAppSlotGithubClientSecretSettingName(
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotGoogle {
  const WindowsWebAppSlotGoogle({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final WindowsWebAppSlotGoogleClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.google` block of `azurerm_windows_web_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class WindowsWebAppSlotGoogleClientSecret {
  const WindowsWebAppSlotGoogleClientSecret();

  /// Sets `client_secret`.
  const factory WindowsWebAppSlotGoogleClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = WindowsWebAppSlotGoogleClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory WindowsWebAppSlotGoogleClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = WindowsWebAppSlotGoogleClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppSlotGoogleClientSecret.clientSecret] choice: sets `client_secret`.
final class WindowsWebAppSlotGoogleClientSecretChoice
    extends WindowsWebAppSlotGoogleClientSecret {
  const WindowsWebAppSlotGoogleClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [WindowsWebAppSlotGoogleClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class WindowsWebAppSlotGoogleClientSecretSettingName
    extends WindowsWebAppSlotGoogleClientSecret {
  const WindowsWebAppSlotGoogleClientSecretSettingName(
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotMicrosoft {
  const WindowsWebAppSlotMicrosoft({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final WindowsWebAppSlotMicrosoftClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.microsoft` block of `azurerm_windows_web_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class WindowsWebAppSlotMicrosoftClientSecret {
  const WindowsWebAppSlotMicrosoftClientSecret();

  /// Sets `client_secret`.
  const factory WindowsWebAppSlotMicrosoftClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = WindowsWebAppSlotMicrosoftClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory WindowsWebAppSlotMicrosoftClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = WindowsWebAppSlotMicrosoftClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppSlotMicrosoftClientSecret.clientSecret] choice: sets `client_secret`.
final class WindowsWebAppSlotMicrosoftClientSecretChoice
    extends WindowsWebAppSlotMicrosoftClientSecret {
  const WindowsWebAppSlotMicrosoftClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [WindowsWebAppSlotMicrosoftClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class WindowsWebAppSlotMicrosoftClientSecretSettingName
    extends WindowsWebAppSlotMicrosoftClientSecret {
  const WindowsWebAppSlotMicrosoftClientSecretSettingName(
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotTwitter {
  const WindowsWebAppSlotTwitter({
    required this.consumerKey,
    required this.consumerSecret,
  });

  final TfArg<String> consumerKey;

  final WindowsWebAppSlotConsumerSecret consumerSecret;

  @internal
  Map<String, Object?> encode() => {
    'consumer_key': consumerKey.toTfJson(),
    ...consumerSecret.encode(),
  };
}

/// Exactly one of `consumer_secret`, `consumer_secret_setting_name` on the `auth_settings.twitter` block of `azurerm_windows_web_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.consumerSecret(...)`.
sealed class WindowsWebAppSlotConsumerSecret {
  const WindowsWebAppSlotConsumerSecret();

  /// Sets `consumer_secret`.
  const factory WindowsWebAppSlotConsumerSecret.consumerSecret(
    Sensitive<String> consumerSecret,
  ) = WindowsWebAppSlotConsumerSecretChoice;

  /// Sets `consumer_secret_setting_name`.
  const factory WindowsWebAppSlotConsumerSecret.consumerSecretSettingName(
    TfArg<String> consumerSecretSettingName,
  ) = WindowsWebAppSlotConsumerSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppSlotConsumerSecret.consumerSecret] choice: sets `consumer_secret`.
final class WindowsWebAppSlotConsumerSecretChoice
    extends WindowsWebAppSlotConsumerSecret {
  const WindowsWebAppSlotConsumerSecretChoice(this.consumerSecret);

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

/// The [WindowsWebAppSlotConsumerSecret.consumerSecretSettingName] choice: sets `consumer_secret_setting_name`.
final class WindowsWebAppSlotConsumerSecretSettingName
    extends WindowsWebAppSlotConsumerSecret {
  const WindowsWebAppSlotConsumerSecretSettingName(
    this.consumerSecretSettingName,
  );

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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotAuthSettingsV2 {
  const WindowsWebAppSlotAuthSettingsV2({
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

  final WindowsWebAppSlotForwardProxyConvention? forwardProxyConvention;

  final TfArg<String>? forwardProxyCustomHostHeaderName;

  final TfArg<String>? forwardProxyCustomSchemeHeaderName;

  final TfArg<String>? httpRouteApiPrefix;

  final TfArg<bool>? requireAuthentication;

  final TfArg<bool>? requireHttps;

  final TfArg<String>? runtimeVersion;

  final WindowsWebAppSlotUnauthenticatedAction? unauthenticatedAction;

  final WindowsWebAppSlotActiveDirectoryV2? activeDirectoryV2;

  final WindowsWebAppSlotAppleV2? appleV2;

  final WindowsWebAppSlotAzureStaticWebAppV2? azureStaticWebAppV2;

  final List<WindowsWebAppSlotCustomOidcV2>? customOidcV2;

  final WindowsWebAppSlotFacebookV2? facebookV2;

  final WindowsWebAppSlotGithubV2? githubV2;

  final WindowsWebAppSlotGoogleV2? googleV2;

  final WindowsWebAppSlotLogin login;

  final WindowsWebAppSlotMicrosoftV2? microsoftV2;

  final WindowsWebAppSlotTwitterV2? twitterV2;

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
extension type const WindowsWebAppSlotForwardProxyConvention._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotForwardProxyConvention.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotForwardProxyConvention.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotForwardProxyConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = WindowsWebAppSlotForwardProxyConvention._(
    TfArgLiteral('Custom'),
  );
  static const noproxy = WindowsWebAppSlotForwardProxyConvention._(
    TfArgLiteral('NoProxy'),
  );
  static const standard = WindowsWebAppSlotForwardProxyConvention._(
    TfArgLiteral('Standard'),
  );

  static const List<WindowsWebAppSlotForwardProxyConvention> values = [
    custom,
    noproxy,
    standard,
  ];
}

/// `unauthenticated_action` — derived from the provider schema description.
extension type const WindowsWebAppSlotUnauthenticatedAction._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotUnauthenticatedAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotUnauthenticatedAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotUnauthenticatedAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowanonymous = WindowsWebAppSlotUnauthenticatedAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const redirecttologinpage = WindowsWebAppSlotUnauthenticatedAction._(
    TfArgLiteral('RedirectToLoginPage'),
  );
  static const return401 = WindowsWebAppSlotUnauthenticatedAction._(
    TfArgLiteral('Return401'),
  );
  static const return403 = WindowsWebAppSlotUnauthenticatedAction._(
    TfArgLiteral('Return403'),
  );

  static const List<WindowsWebAppSlotUnauthenticatedAction> values = [
    allowanonymous,
    redirecttologinpage,
    return401,
    return403,
  ];
}

/// Typed helper for the `auth_settings_v2.active_directory_v2` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotActiveDirectoryV2 {
  const WindowsWebAppSlotActiveDirectoryV2({
    this.allowedApplications,
    this.allowedAudiences,
    this.allowedGroups,
    this.allowedIdentities,
    required this.clientId,
    this.clientCredential,
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

  final WindowsWebAppSlotClientCredential? clientCredential;

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
    ...?clientCredential?.encode(),
    'jwt_allowed_client_applications': ?jwtAllowedClientApplications
        ?.toTfJson(),
    'jwt_allowed_groups': ?jwtAllowedGroups?.toTfJson(),
    'login_parameters': ?loginParameters?.toTfJson(),
    'tenant_auth_endpoint': tenantAuthEndpoint.toTfJson(),
    'www_authentication_disabled': ?wwwAuthenticationDisabled?.toTfJson(),
  };
}

/// At most one of `client_secret_certificate_thumbprint`, `client_secret_setting_name` on the `auth_settings_v2.active_directory_v2` block of `azurerm_windows_web_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecretCertificateThumbprint(...)`.
sealed class WindowsWebAppSlotClientCredential {
  const WindowsWebAppSlotClientCredential();

  /// Sets `client_secret_certificate_thumbprint`.
  const factory WindowsWebAppSlotClientCredential.clientSecretCertificateThumbprint(
    TfArg<String> clientSecretCertificateThumbprint,
  ) = WindowsWebAppSlotClientCredentialClientSecretCertificateThumbprint;

  /// Sets `client_secret_setting_name`.
  const factory WindowsWebAppSlotClientCredential.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = WindowsWebAppSlotClientCredentialClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppSlotClientCredential.clientSecretCertificateThumbprint] choice: sets `client_secret_certificate_thumbprint`.
final class WindowsWebAppSlotClientCredentialClientSecretCertificateThumbprint
    extends WindowsWebAppSlotClientCredential {
  const WindowsWebAppSlotClientCredentialClientSecretCertificateThumbprint(
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

/// The [WindowsWebAppSlotClientCredential.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class WindowsWebAppSlotClientCredentialClientSecretSettingName
    extends WindowsWebAppSlotClientCredential {
  const WindowsWebAppSlotClientCredentialClientSecretSettingName(
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotAppleV2 {
  const WindowsWebAppSlotAppleV2({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotAzureStaticWebAppV2 {
  const WindowsWebAppSlotAzureStaticWebAppV2({required this.clientId});

  final TfArg<String> clientId;

  @internal
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// Typed helper for the `auth_settings_v2.custom_oidc_v2` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotCustomOidcV2 {
  const WindowsWebAppSlotCustomOidcV2({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotFacebookV2 {
  const WindowsWebAppSlotFacebookV2({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotGithubV2 {
  const WindowsWebAppSlotGithubV2({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotGoogleV2 {
  const WindowsWebAppSlotGoogleV2({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotLogin {
  const WindowsWebAppSlotLogin({
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

  final WindowsWebAppSlotCookieExpirationConvention? cookieExpirationConvention;

  final TfArg<String>? cookieExpirationTime;

  final TfArg<String>? logoutEndpoint;

  final TfArg<String>? nonceExpirationTime;

  final TfArg<bool>? preserveUrlFragmentsForLogins;

  final TfArg<num>? tokenRefreshExtensionTime;

  final TfArg<bool>? tokenStoreEnabled;

  final WindowsWebAppSlotTokenStore? tokenStore;

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

/// At most one of `token_store_path`, `token_store_sas_setting_name` on the `auth_settings_v2.login` block of `azurerm_windows_web_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.tokenStorePath(...)`.
sealed class WindowsWebAppSlotTokenStore {
  const WindowsWebAppSlotTokenStore();

  /// Sets `token_store_path`.
  const factory WindowsWebAppSlotTokenStore.tokenStorePath(
    TfArg<String> tokenStorePath,
  ) = WindowsWebAppSlotTokenStorePath;

  /// Sets `token_store_sas_setting_name`.
  const factory WindowsWebAppSlotTokenStore.tokenStoreSasSettingName(
    TfArg<String> tokenStoreSasSettingName,
  ) = WindowsWebAppSlotTokenStoreSasSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppSlotTokenStore.tokenStorePath] choice: sets `token_store_path`.
final class WindowsWebAppSlotTokenStorePath
    extends WindowsWebAppSlotTokenStore {
  const WindowsWebAppSlotTokenStorePath(this.tokenStorePath);

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

/// The [WindowsWebAppSlotTokenStore.tokenStoreSasSettingName] choice: sets `token_store_sas_setting_name`.
final class WindowsWebAppSlotTokenStoreSasSettingName
    extends WindowsWebAppSlotTokenStore {
  const WindowsWebAppSlotTokenStoreSasSettingName(
    this.tokenStoreSasSettingName,
  );

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
extension type const WindowsWebAppSlotCookieExpirationConvention._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsWebAppSlotCookieExpirationConvention.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotCookieExpirationConvention.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotCookieExpirationConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const fixedtime = WindowsWebAppSlotCookieExpirationConvention._(
    TfArgLiteral('FixedTime'),
  );
  static const identityproviderderived =
      WindowsWebAppSlotCookieExpirationConvention._(
        TfArgLiteral('IdentityProviderDerived'),
      );

  static const List<WindowsWebAppSlotCookieExpirationConvention> values = [
    fixedtime,
    identityproviderderived,
  ];
}

/// Typed helper for the `auth_settings_v2.microsoft_v2` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotMicrosoftV2 {
  const WindowsWebAppSlotMicrosoftV2({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotTwitterV2 {
  const WindowsWebAppSlotTwitterV2({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotBackup {
  const WindowsWebAppSlotBackup({
    this.enabled,
    required this.name,
    required this.storageAccountUrl,
    required this.schedule,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final Sensitive<String> storageAccountUrl;

  final WindowsWebAppSlotSchedule schedule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'storage_account_url': storageAccountUrl.toTfJson(),
    'schedule': schedule.encode(),
  };
}

/// Typed helper for the `backup.schedule` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotSchedule {
  const WindowsWebAppSlotSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    this.keepAtLeastOneBackup,
    this.retentionPeriodDays,
    this.startTime,
  });

  final TfArg<num> frequencyInterval;

  final WindowsWebAppSlotFrequencyUnit frequencyUnit;

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
extension type const WindowsWebAppSlotFrequencyUnit._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotFrequencyUnit.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotFrequencyUnit.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotFrequencyUnit.arg(TfArg<String> arg) : this._(arg);

  static const day = WindowsWebAppSlotFrequencyUnit._(TfArgLiteral('Day'));
  static const hour = WindowsWebAppSlotFrequencyUnit._(TfArgLiteral('Hour'));

  static const List<WindowsWebAppSlotFrequencyUnit> values = [day, hour];
}

/// Typed helper for the `connection_string` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotConnectionString {
  const WindowsWebAppSlotConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final WindowsWebAppSlotConnectionStringType type;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WindowsWebAppSlotConnectionStringType._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotConnectionStringType.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotConnectionStringType.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotConnectionStringType.arg(TfArg<String> arg)
    : this._(arg);

  static const apihub = WindowsWebAppSlotConnectionStringType._(
    TfArgLiteral('ApiHub'),
  );
  static const custom = WindowsWebAppSlotConnectionStringType._(
    TfArgLiteral('Custom'),
  );
  static const docdb = WindowsWebAppSlotConnectionStringType._(
    TfArgLiteral('DocDb'),
  );
  static const eventhub = WindowsWebAppSlotConnectionStringType._(
    TfArgLiteral('EventHub'),
  );
  static const mysql = WindowsWebAppSlotConnectionStringType._(
    TfArgLiteral('MySql'),
  );
  static const notificationhub = WindowsWebAppSlotConnectionStringType._(
    TfArgLiteral('NotificationHub'),
  );
  static const postgresql = WindowsWebAppSlotConnectionStringType._(
    TfArgLiteral('PostgreSQL'),
  );
  static const rediscache = WindowsWebAppSlotConnectionStringType._(
    TfArgLiteral('RedisCache'),
  );
  static const sqlazure = WindowsWebAppSlotConnectionStringType._(
    TfArgLiteral('SQLAzure'),
  );
  static const sqlserver = WindowsWebAppSlotConnectionStringType._(
    TfArgLiteral('SQLServer'),
  );
  static const servicebus = WindowsWebAppSlotConnectionStringType._(
    TfArgLiteral('ServiceBus'),
  );

  static const List<WindowsWebAppSlotConnectionStringType> values = [
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotIdentity {
  const WindowsWebAppSlotIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `logs` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotLogs {
  const WindowsWebAppSlotLogs({
    this.detailedErrorMessages,
    this.failedRequestTracing,
    this.applicationLogs,
    this.httpLogs,
  });

  final TfArg<bool>? detailedErrorMessages;

  final TfArg<bool>? failedRequestTracing;

  final WindowsWebAppSlotApplicationLogs? applicationLogs;

  final WindowsWebAppSlotHttpLogs? httpLogs;

  @internal
  Map<String, Object?> encode() => {
    'detailed_error_messages': ?detailedErrorMessages?.toTfJson(),
    'failed_request_tracing': ?failedRequestTracing?.toTfJson(),
    'application_logs': ?applicationLogs?.encode(),
    'http_logs': ?httpLogs?.encode(),
  };
}

/// Typed helper for the `logs.application_logs` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotApplicationLogs {
  const WindowsWebAppSlotApplicationLogs({
    required this.fileSystemLevel,
    this.azureBlobStorage,
  });

  final WindowsWebAppSlotFileSystemLevel fileSystemLevel;

  final WindowsWebAppSlotApplicationLogsAzureBlobStorage? azureBlobStorage;

  @internal
  Map<String, Object?> encode() => {
    'file_system_level': fileSystemLevel.toTfJson(),
    'azure_blob_storage': ?azureBlobStorage?.encode(),
  };
}

/// `file_system_level` — derived from the provider schema description.
extension type const WindowsWebAppSlotFileSystemLevel._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotFileSystemLevel.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotFileSystemLevel.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotFileSystemLevel.arg(TfArg<String> arg) : this._(arg);

  static const error = WindowsWebAppSlotFileSystemLevel._(
    TfArgLiteral('Error'),
  );
  static const information = WindowsWebAppSlotFileSystemLevel._(
    TfArgLiteral('Information'),
  );
  static const off = WindowsWebAppSlotFileSystemLevel._(TfArgLiteral('Off'));
  static const verbose = WindowsWebAppSlotFileSystemLevel._(
    TfArgLiteral('Verbose'),
  );
  static const warning = WindowsWebAppSlotFileSystemLevel._(
    TfArgLiteral('Warning'),
  );

  static const List<WindowsWebAppSlotFileSystemLevel> values = [
    error,
    information,
    off,
    verbose,
    warning,
  ];
}

/// Typed helper for the `logs.application_logs.azure_blob_storage` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotApplicationLogsAzureBlobStorage {
  const WindowsWebAppSlotApplicationLogsAzureBlobStorage({
    required this.level,
    required this.retentionInDays,
    required this.sasUrl,
  });

  final WindowsWebAppSlotLevel level;

  final TfArg<num> retentionInDays;

  final TfArg<String> sasUrl;

  @internal
  Map<String, Object?> encode() => {
    'level': level.toTfJson(),
    'retention_in_days': retentionInDays.toTfJson(),
    'sas_url': sasUrl.toTfJson(),
  };
}

/// `level` — derived from the provider schema description.
extension type const WindowsWebAppSlotLevel._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotLevel.variable(String name) : this._(TfArg.variable(name));
  WindowsWebAppSlotLevel.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotLevel.arg(TfArg<String> arg) : this._(arg);

  static const error = WindowsWebAppSlotLevel._(TfArgLiteral('Error'));
  static const information = WindowsWebAppSlotLevel._(
    TfArgLiteral('Information'),
  );
  static const verbose = WindowsWebAppSlotLevel._(TfArgLiteral('Verbose'));
  static const warning = WindowsWebAppSlotLevel._(TfArgLiteral('Warning'));

  static const List<WindowsWebAppSlotLevel> values = [
    error,
    information,
    verbose,
    warning,
  ];
}

/// At most one of `azure_blob_storage`, `file_system` on the `logs.http_logs` block of `azurerm_windows_web_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.azureBlobStorage(...)`.
sealed class WindowsWebAppSlotHttpLogs {
  const WindowsWebAppSlotHttpLogs();

  /// Sets `azure_blob_storage`.
  const factory WindowsWebAppSlotHttpLogs.azureBlobStorage(
    WindowsWebAppSlotHttpLogsAzureBlobStorage azureBlobStorage,
  ) = WindowsWebAppSlotHttpLogsAzureBlobStorageChoice;

  /// Sets `file_system`.
  const factory WindowsWebAppSlotHttpLogs.fileSystem(
    WindowsWebAppSlotFileSystem fileSystem,
  ) = WindowsWebAppSlotHttpLogsFileSystem;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsWebAppSlotHttpLogs.azureBlobStorage] choice: sets `azure_blob_storage`.
final class WindowsWebAppSlotHttpLogsAzureBlobStorageChoice
    extends WindowsWebAppSlotHttpLogs {
  const WindowsWebAppSlotHttpLogsAzureBlobStorageChoice(this.azureBlobStorage);

  final WindowsWebAppSlotHttpLogsAzureBlobStorage azureBlobStorage;

  @internal
  @override
  String get blockKey => 'azure_blob_storage';

  @internal
  @override
  Map<String, Object?> encode() => {
    'azure_blob_storage': azureBlobStorage.encode(),
  };
}

/// The [WindowsWebAppSlotHttpLogs.fileSystem] choice: sets `file_system`.
final class WindowsWebAppSlotHttpLogsFileSystem
    extends WindowsWebAppSlotHttpLogs {
  const WindowsWebAppSlotHttpLogsFileSystem(this.fileSystem);

  final WindowsWebAppSlotFileSystem fileSystem;

  @internal
  @override
  String get blockKey => 'file_system';

  @internal
  @override
  Map<String, Object?> encode() => {'file_system': fileSystem.encode()};
}

/// Typed helper for the `logs.http_logs.azure_blob_storage` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotHttpLogsAzureBlobStorage {
  const WindowsWebAppSlotHttpLogsAzureBlobStorage({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotFileSystem {
  const WindowsWebAppSlotFileSystem({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotSiteConfig {
  const WindowsWebAppSlotSiteConfig({
    this.alwaysOn,
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.autoSwapSlotName,
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

  final TfArg<String>? autoSwapSlotName;

  final TfArg<String>? containerRegistryManagedIdentityClientId;

  final TfArg<bool>? containerRegistryUseManagedIdentity;

  final TfArg<List<String>>? defaultDocuments;

  final WindowsWebAppSlotFtpsState? ftpsState;

  final TfArg<num>? healthCheckEvictionTimeInMin;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final WindowsWebAppSlotIpRestrictionDefaultAction? ipRestrictionDefaultAction;

  final WindowsWebAppSlotLoadBalancingMode? loadBalancingMode;

  final TfArg<bool>? localMysqlEnabled;

  final WindowsWebAppSlotManagedPipelineMode? managedPipelineMode;

  final WindowsWebAppSlotMinimumTlsCipherSuite? minimumTlsCipherSuite;

  final WindowsWebAppSlotMinimumTlsVersion? minimumTlsVersion;

  final TfArg<bool>? remoteDebuggingEnabled;

  final WindowsWebAppSlotRemoteDebuggingVersion? remoteDebuggingVersion;

  final WindowsWebAppSlotScmIpRestrictionDefaultAction?
  scmIpRestrictionDefaultAction;

  final WindowsWebAppSlotScmMinimumTlsVersion? scmMinimumTlsVersion;

  final TfArg<bool>? scmUseMainIpRestriction;

  final TfArg<bool>? use32BitWorker;

  final TfArg<bool>? vnetRouteAllEnabled;

  final TfArg<bool>? websocketsEnabled;

  final TfArg<num>? workerCount;

  final WindowsWebAppSlotApplicationStack? applicationStack;

  final WindowsWebAppSlotAutoHealSetting? autoHealSetting;

  final WindowsWebAppSlotCors? cors;

  final List<WindowsWebAppSlotHandlerMapping>? handlerMapping;

  final List<WindowsWebAppSlotIpRestriction>? ipRestriction;

  final List<WindowsWebAppSlotScmIpRestriction>? scmIpRestriction;

  final List<WindowsWebAppSlotVirtualApplication>? virtualApplication;

  @internal
  Map<String, Object?> encode() => {
    'always_on': ?alwaysOn?.toTfJson(),
    'api_definition_url': ?apiDefinitionUrl?.toTfJson(),
    'api_management_api_id': ?apiManagementApiId?.toTfJson(),
    'app_command_line': ?appCommandLine?.toTfJson(),
    'auto_swap_slot_name': ?autoSwapSlotName?.toTfJson(),
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
extension type const WindowsWebAppSlotFtpsState._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotFtpsState.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotFtpsState.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotFtpsState.arg(TfArg<String> arg) : this._(arg);

  static const allallowed = WindowsWebAppSlotFtpsState._(
    TfArgLiteral('AllAllowed'),
  );
  static const disabled = WindowsWebAppSlotFtpsState._(
    TfArgLiteral('Disabled'),
  );
  static const ftpsonly = WindowsWebAppSlotFtpsState._(
    TfArgLiteral('FtpsOnly'),
  );

  static const List<WindowsWebAppSlotFtpsState> values = [
    allallowed,
    disabled,
    ftpsonly,
  ];
}

/// `ip_restriction_default_action` — derived from the provider schema description.
extension type const WindowsWebAppSlotIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsWebAppSlotIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = WindowsWebAppSlotIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = WindowsWebAppSlotIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<WindowsWebAppSlotIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `load_balancing_mode` — derived from the provider schema description.
extension type const WindowsWebAppSlotLoadBalancingMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotLoadBalancingMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotLoadBalancingMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotLoadBalancingMode.arg(TfArg<String> arg) : this._(arg);

  static const leastrequests = WindowsWebAppSlotLoadBalancingMode._(
    TfArgLiteral('LeastRequests'),
  );
  static const leastresponsetime = WindowsWebAppSlotLoadBalancingMode._(
    TfArgLiteral('LeastResponseTime'),
  );
  static const persiteroundrobin = WindowsWebAppSlotLoadBalancingMode._(
    TfArgLiteral('PerSiteRoundRobin'),
  );
  static const requesthash = WindowsWebAppSlotLoadBalancingMode._(
    TfArgLiteral('RequestHash'),
  );
  static const weightedroundrobin = WindowsWebAppSlotLoadBalancingMode._(
    TfArgLiteral('WeightedRoundRobin'),
  );
  static const weightedtotaltraffic = WindowsWebAppSlotLoadBalancingMode._(
    TfArgLiteral('WeightedTotalTraffic'),
  );

  static const List<WindowsWebAppSlotLoadBalancingMode> values = [
    leastrequests,
    leastresponsetime,
    persiteroundrobin,
    requesthash,
    weightedroundrobin,
    weightedtotaltraffic,
  ];
}

/// `managed_pipeline_mode` — derived from the provider schema description.
extension type const WindowsWebAppSlotManagedPipelineMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotManagedPipelineMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotManagedPipelineMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotManagedPipelineMode.arg(TfArg<String> arg)
    : this._(arg);

  static const classic = WindowsWebAppSlotManagedPipelineMode._(
    TfArgLiteral('Classic'),
  );
  static const integrated = WindowsWebAppSlotManagedPipelineMode._(
    TfArgLiteral('Integrated'),
  );

  static const List<WindowsWebAppSlotManagedPipelineMode> values = [
    classic,
    integrated,
  ];
}

/// `minimum_tls_cipher_suite` — derived from the provider schema description.
extension type const WindowsWebAppSlotMinimumTlsCipherSuite._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotMinimumTlsCipherSuite.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotMinimumTlsCipherSuite.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotMinimumTlsCipherSuite.arg(TfArg<String> arg)
    : this._(arg);

  static const tlsAes128GcmSha256 = WindowsWebAppSlotMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_128_GCM_SHA256'),
  );
  static const tlsAes256GcmSha384 = WindowsWebAppSlotMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_256_GCM_SHA384'),
  );
  static const tlsEcdheEcdsaWithAes128CbcSha256 =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes128GcmSha256 =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes256GcmSha384 =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsEcdheRsaWithAes128CbcSha =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA'),
      );
  static const tlsEcdheRsaWithAes128CbcSha256 =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheRsaWithAes128GcmSha256 =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheRsaWithAes256CbcSha =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA'),
      );
  static const tlsEcdheRsaWithAes256CbcSha384 =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384'),
      );
  static const tlsEcdheRsaWithAes256GcmSha384 =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsRsaWithAes128CbcSha =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA'),
      );
  static const tlsRsaWithAes128CbcSha256 =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsRsaWithAes128GcmSha256 =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsRsaWithAes256CbcSha =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA'),
      );
  static const tlsRsaWithAes256CbcSha256 =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA256'),
      );
  static const tlsRsaWithAes256GcmSha384 =
      WindowsWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_256_GCM_SHA384'),
      );

  static const List<WindowsWebAppSlotMinimumTlsCipherSuite> values = [
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
extension type const WindowsWebAppSlotMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotMinimumTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p1 = WindowsWebAppSlotMinimumTlsVersion._(TfArgLiteral('1.1'));
  static const v1p3 = WindowsWebAppSlotMinimumTlsVersion._(TfArgLiteral('1.3'));
  static const v1p2 = WindowsWebAppSlotMinimumTlsVersion._(TfArgLiteral('1.2'));
  static const v1p0 = WindowsWebAppSlotMinimumTlsVersion._(TfArgLiteral('1.0'));

  static const List<WindowsWebAppSlotMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// `remote_debugging_version` — derived from the provider schema description.
extension type const WindowsWebAppSlotRemoteDebuggingVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotRemoteDebuggingVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotRemoteDebuggingVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotRemoteDebuggingVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const vs2022 = WindowsWebAppSlotRemoteDebuggingVersion._(
    TfArgLiteral('VS2022'),
  );

  static const List<WindowsWebAppSlotRemoteDebuggingVersion> values = [vs2022];
}

/// `scm_ip_restriction_default_action` — derived from the provider schema description.
extension type const WindowsWebAppSlotScmIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsWebAppSlotScmIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotScmIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotScmIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = WindowsWebAppSlotScmIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = WindowsWebAppSlotScmIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<WindowsWebAppSlotScmIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `scm_minimum_tls_version` — derived from the provider schema description.
extension type const WindowsWebAppSlotScmMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotScmMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotScmMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotScmMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p1 = WindowsWebAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p3 = WindowsWebAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.3'),
  );
  static const v1p2 = WindowsWebAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p0 = WindowsWebAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.0'),
  );

  static const List<WindowsWebAppSlotScmMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// Typed helper for the `site_config.application_stack` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotApplicationStack {
  const WindowsWebAppSlotApplicationStack({
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

  final WindowsWebAppSlotCurrentStack? currentStack;

  final TfArg<String>? dockerImageName;

  final Sensitive<String>? dockerRegistryPassword;

  final TfArg<String>? dockerRegistryUrl;

  final TfArg<String>? dockerRegistryUsername;

  final WindowsWebAppSlotDotnetCoreVersion? dotnetCoreVersion;

  final WindowsWebAppSlotDotnetVersion? dotnetVersion;

  final WindowsWebAppSlotJavaContainer? javaContainer;

  final TfArg<String>? javaContainerVersion;

  final TfArg<bool>? javaEmbeddedServerEnabled;

  final TfArg<String>? javaVersion;

  final WindowsWebAppSlotNodeVersion? nodeVersion;

  final WindowsWebAppSlotPhpVersion? phpVersion;

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
extension type const WindowsWebAppSlotCurrentStack._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotCurrentStack.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotCurrentStack.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotCurrentStack.arg(TfArg<String> arg) : this._(arg);

  static const dotnet = WindowsWebAppSlotCurrentStack._(TfArgLiteral('dotnet'));
  static const dotnetcore = WindowsWebAppSlotCurrentStack._(
    TfArgLiteral('dotnetcore'),
  );
  static const node = WindowsWebAppSlotCurrentStack._(TfArgLiteral('node'));
  static const python = WindowsWebAppSlotCurrentStack._(TfArgLiteral('python'));
  static const php = WindowsWebAppSlotCurrentStack._(TfArgLiteral('php'));
  static const java = WindowsWebAppSlotCurrentStack._(TfArgLiteral('java'));

  static const List<WindowsWebAppSlotCurrentStack> values = [
    dotnet,
    dotnetcore,
    node,
    python,
    php,
    java,
  ];
}

/// `dotnet_core_version` — derived from the provider schema description.
extension type const WindowsWebAppSlotDotnetCoreVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotDotnetCoreVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotDotnetCoreVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotDotnetCoreVersion.arg(TfArg<String> arg) : this._(arg);

  static const v4p0 = WindowsWebAppSlotDotnetCoreVersion._(
    TfArgLiteral('v4.0'),
  );

  static const List<WindowsWebAppSlotDotnetCoreVersion> values = [v4p0];
}

/// `dotnet_version` — derived from the provider schema description.
extension type const WindowsWebAppSlotDotnetVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotDotnetVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotDotnetVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotDotnetVersion.arg(TfArg<String> arg) : this._(arg);

  static const v2p0 = WindowsWebAppSlotDotnetVersion._(TfArgLiteral('v2.0'));
  static const v3p0 = WindowsWebAppSlotDotnetVersion._(TfArgLiteral('v3.0'));
  static const v4p0 = WindowsWebAppSlotDotnetVersion._(TfArgLiteral('v4.0'));
  static const v5p0 = WindowsWebAppSlotDotnetVersion._(TfArgLiteral('v5.0'));
  static const v6p0 = WindowsWebAppSlotDotnetVersion._(TfArgLiteral('v6.0'));
  static const v7p0 = WindowsWebAppSlotDotnetVersion._(TfArgLiteral('v7.0'));
  static const v8p0 = WindowsWebAppSlotDotnetVersion._(TfArgLiteral('v8.0'));
  static const v9p0 = WindowsWebAppSlotDotnetVersion._(TfArgLiteral('v9.0'));
  static const v10p0 = WindowsWebAppSlotDotnetVersion._(TfArgLiteral('v10.0'));

  static const List<WindowsWebAppSlotDotnetVersion> values = [
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
extension type const WindowsWebAppSlotJavaContainer._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotJavaContainer.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotJavaContainer.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotJavaContainer.arg(TfArg<String> arg) : this._(arg);

  static const java = WindowsWebAppSlotJavaContainer._(TfArgLiteral('JAVA'));
  static const jetty = WindowsWebAppSlotJavaContainer._(TfArgLiteral('JETTY'));
  static const tomcat = WindowsWebAppSlotJavaContainer._(
    TfArgLiteral('TOMCAT'),
  );

  static const List<WindowsWebAppSlotJavaContainer> values = [
    java,
    jetty,
    tomcat,
  ];
}

/// `node_version` — derived from the provider schema description.
extension type const WindowsWebAppSlotNodeVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotNodeVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotNodeVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotNodeVersion.arg(TfArg<String> arg) : this._(arg);

  static const v14 = WindowsWebAppSlotNodeVersion._(TfArgLiteral('~14'));
  static const v16 = WindowsWebAppSlotNodeVersion._(TfArgLiteral('~16'));
  static const v18 = WindowsWebAppSlotNodeVersion._(TfArgLiteral('~18'));
  static const v20 = WindowsWebAppSlotNodeVersion._(TfArgLiteral('~20'));
  static const v22 = WindowsWebAppSlotNodeVersion._(TfArgLiteral('~22'));
  static const v24 = WindowsWebAppSlotNodeVersion._(TfArgLiteral('~24'));

  static const List<WindowsWebAppSlotNodeVersion> values = [
    v14,
    v16,
    v18,
    v20,
    v22,
    v24,
  ];
}

/// `php_version` — derived from the provider schema description.
extension type const WindowsWebAppSlotPhpVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotPhpVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotPhpVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotPhpVersion.arg(TfArg<String> arg) : this._(arg);

  static const v7p1 = WindowsWebAppSlotPhpVersion._(TfArgLiteral('7.1'));
  static const v7p4 = WindowsWebAppSlotPhpVersion._(TfArgLiteral('7.4'));
  static const off = WindowsWebAppSlotPhpVersion._(TfArgLiteral('Off'));

  static const List<WindowsWebAppSlotPhpVersion> values = [v7p1, v7p4, off];
}

/// Typed helper for the `site_config.auto_heal_setting` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotAutoHealSetting {
  const WindowsWebAppSlotAutoHealSetting({
    required this.action,
    required this.trigger,
  });

  final WindowsWebAppSlotAction action;

  final WindowsWebAppSlotTrigger trigger;

  @internal
  Map<String, Object?> encode() => {
    'action': action.encode(),
    'trigger': trigger.encode(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.action` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotAction {
  const WindowsWebAppSlotAction({
    required this.actionType,
    this.minimumProcessExecutionTime,
    this.customAction,
  });

  final WindowsWebAppSlotActionType actionType;

  final TfArg<String>? minimumProcessExecutionTime;

  final WindowsWebAppSlotCustomAction? customAction;

  @internal
  Map<String, Object?> encode() => {
    'action_type': actionType.toTfJson(),
    'minimum_process_execution_time': ?minimumProcessExecutionTime?.toTfJson(),
    'custom_action': ?customAction?.encode(),
  };
}

/// `action_type` — derived from the provider schema description.
extension type const WindowsWebAppSlotActionType._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotActionType.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotActionType.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotActionType.arg(TfArg<String> arg) : this._(arg);

  static const customaction = WindowsWebAppSlotActionType._(
    TfArgLiteral('CustomAction'),
  );
  static const logevent = WindowsWebAppSlotActionType._(
    TfArgLiteral('LogEvent'),
  );
  static const recycle = WindowsWebAppSlotActionType._(TfArgLiteral('Recycle'));

  static const List<WindowsWebAppSlotActionType> values = [
    customaction,
    logevent,
    recycle,
  ];
}

/// Typed helper for the `site_config.auto_heal_setting.action.custom_action` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotCustomAction {
  const WindowsWebAppSlotCustomAction({
    required this.executable,
    this.parameters,
  });

  final TfArg<String> executable;

  final TfArg<String>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'executable': executable.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.trigger` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotTrigger {
  const WindowsWebAppSlotTrigger({
    this.privateMemoryKb,
    this.requests,
    this.slowRequest,
    this.slowRequestWithPath,
    this.statusCode,
  });

  final TfArg<num>? privateMemoryKb;

  final WindowsWebAppSlotRequests? requests;

  final WindowsWebAppSlotSlowRequest? slowRequest;

  final List<WindowsWebAppSlotSlowRequestWithPath>? slowRequestWithPath;

  final List<WindowsWebAppSlotStatusCode>? statusCode;

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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotRequests {
  const WindowsWebAppSlotRequests({
    required this.count,
    required this.interval,
  });

  final TfArg<num> count;

  final TfArg<String> interval;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'interval': interval.toTfJson(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.trigger.slow_request` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotSlowRequest {
  const WindowsWebAppSlotSlowRequest({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotSlowRequestWithPath {
  const WindowsWebAppSlotSlowRequestWithPath({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotStatusCode {
  const WindowsWebAppSlotStatusCode({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotCors {
  const WindowsWebAppSlotCors({this.allowedOrigins, this.supportCredentials});

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? supportCredentials;

  @internal
  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'support_credentials': ?supportCredentials?.toTfJson(),
  };
}

/// Typed helper for the `site_config.handler_mapping` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotHandlerMapping {
  const WindowsWebAppSlotHandlerMapping({
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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotIpRestriction {
  const WindowsWebAppSlotIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final WindowsWebAppSlotIpRestrictionAction? action;

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
extension type const WindowsWebAppSlotIpRestrictionAction._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotIpRestrictionAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotIpRestrictionAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotIpRestrictionAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = WindowsWebAppSlotIpRestrictionAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = WindowsWebAppSlotIpRestrictionAction._(
    TfArgLiteral('Deny'),
  );

  static const List<WindowsWebAppSlotIpRestrictionAction> values = [
    allow,
    deny,
  ];
}

/// Typed helper for the `site_config.scm_ip_restriction` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotScmIpRestriction {
  const WindowsWebAppSlotScmIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final WindowsWebAppSlotIpRestrictionAction? action;

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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotVirtualApplication {
  const WindowsWebAppSlotVirtualApplication({
    required this.physicalPath,
    required this.preload,
    required this.virtualPath,
    this.virtualDirectory,
  });

  final TfArg<String> physicalPath;

  final TfArg<bool> preload;

  final TfArg<String> virtualPath;

  final List<WindowsWebAppSlotVirtualDirectory>? virtualDirectory;

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
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotVirtualDirectory {
  const WindowsWebAppSlotVirtualDirectory({
    this.physicalPath,
    this.virtualPath,
  });

  final TfArg<String>? physicalPath;

  final TfArg<String>? virtualPath;

  @internal
  Map<String, Object?> encode() => {
    'physical_path': ?physicalPath?.toTfJson(),
    'virtual_path': ?virtualPath?.toTfJson(),
  };
}

/// Typed helper for the `storage_account` block of
/// `azurerm_windows_web_app_slot` (derived from provider schema).
@immutable
final class WindowsWebAppSlotStorageAccount {
  const WindowsWebAppSlotStorageAccount({
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

  final WindowsWebAppSlotStorageAccountType type;

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

/// `type` — derived from the provider schema description.
extension type const WindowsWebAppSlotStorageAccountType._(TfArg<String> _)
    implements TfArg<String> {
  WindowsWebAppSlotStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  WindowsWebAppSlotStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsWebAppSlotStorageAccountType.arg(TfArg<String> arg)
    : this._(arg);

  static const azurefiles = WindowsWebAppSlotStorageAccountType._(
    TfArgLiteral('AzureFiles'),
  );

  static const List<WindowsWebAppSlotStorageAccountType> values = [azurefiles];
}

/// Factory wrapper for `azurerm_windows_web_app_slot`.
final class AzurermWindowsWebAppSlot extends Resource {
  static const String tfType = 'azurerm_windows_web_app_slot';

  AzurermWindowsWebAppSlot(
    super.localName, {
    required TfArg<String> appServiceId,
    TfArg<Map<String, String>>? appSettings,
    TfArg<bool>? clientAffinityEnabled,
    TfArg<bool>? clientCertificateEnabled,
    TfArg<String>? clientCertificateExclusionPaths,
    WindowsWebAppSlotClientCertificateMode? clientCertificateMode,
    TfArg<bool>? enabled,
    TfArg<bool>? endToEndTlsEncryptionEnabled,
    TfArg<bool>? ftpPublishBasicAuthenticationEnabled,
    TfArg<bool>? httpsOnly,
    TfArg<String>? keyVaultReferenceIdentityId,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    TfArg<String>? servicePlanId,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? virtualNetworkBackupRestoreEnabled,
    TfArg<bool>? virtualNetworkImagePullEnabled,
    TfArg<String>? virtualNetworkSubnetId,
    TfArg<bool>? webdeployPublishBasicAuthenticationEnabled,
    TfArg<String>? zipDeployFile,
    WindowsWebAppSlotAuthSettings? authSettings,
    WindowsWebAppSlotAuthSettingsV2? authSettingsV2,
    WindowsWebAppSlotBackup? backup,
    List<WindowsWebAppSlotConnectionString>? connectionString,
    WindowsWebAppSlotIdentity? identity,
    WindowsWebAppSlotLogs? logs,
    required WindowsWebAppSlotSiteConfig siteConfig,
    List<WindowsWebAppSlotStorageAccount>? storageAccount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_service_id': appServiceId,
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
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'service_plan_id': ?servicePlanId,
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
           if (storageAccount != null)
             'storage_account': TfArg.literal([
               for (final e in storageAccount) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermWindowsWebAppSlotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWindowsWebAppSlot>`.
  RefTo<AzurermWindowsWebAppSlot> get ref => RefTo.of(this);

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

  /// Reference to `app_service_id` attribute.
  TfRef<String> get appServiceId =>
      TfRef.attribute<String>(this, 'app_service_id');

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

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

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
