// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_linux_web_app_slot`.
const Set<String> _azurermLinuxWebAppSlotSensitive = <String>{
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

/// Linux Web App Slot Client Certificate enum for `client_certificate_mode`.
extension type const LinuxWebAppSlotClientCertificateMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotClientCertificateMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotClientCertificateMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotClientCertificateMode.arg(TfArg<String> arg)
    : this._(arg);

  static const optional = LinuxWebAppSlotClientCertificateMode._(
    TfArgLiteral('Optional'),
  );
  static const optionalinteractiveuser = LinuxWebAppSlotClientCertificateMode._(
    TfArgLiteral('OptionalInteractiveUser'),
  );
  static const required = LinuxWebAppSlotClientCertificateMode._(
    TfArgLiteral('Required'),
  );

  static const List<LinuxWebAppSlotClientCertificateMode> values = [
    optional,
    optionalinteractiveuser,
    required,
  ];
}

/// Typed helper for the `auth_settings` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotAuthSettings {
  const LinuxWebAppSlotAuthSettings({
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

  final LinuxWebAppSlotDefaultProvider? defaultProvider;

  final TfArg<bool> enabled;

  final TfArg<String>? issuer;

  final TfArg<String>? runtimeVersion;

  final TfArg<num>? tokenRefreshExtensionHours;

  final TfArg<bool>? tokenStoreEnabled;

  final LinuxWebAppSlotUnauthenticatedClientAction? unauthenticatedClientAction;

  final LinuxWebAppSlotActiveDirectory? activeDirectory;

  final LinuxWebAppSlotFacebook? facebook;

  final LinuxWebAppSlotGithub? github;

  final LinuxWebAppSlotGoogle? google;

  final LinuxWebAppSlotMicrosoft? microsoft;

  final LinuxWebAppSlotTwitter? twitter;

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
extension type const LinuxWebAppSlotDefaultProvider._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotDefaultProvider.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotDefaultProvider.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotDefaultProvider.arg(TfArg<String> arg) : this._(arg);

  static const azureactivedirectory = LinuxWebAppSlotDefaultProvider._(
    TfArgLiteral('AzureActiveDirectory'),
  );
  static const facebook = LinuxWebAppSlotDefaultProvider._(
    TfArgLiteral('Facebook'),
  );
  static const github = LinuxWebAppSlotDefaultProvider._(
    TfArgLiteral('Github'),
  );
  static const google = LinuxWebAppSlotDefaultProvider._(
    TfArgLiteral('Google'),
  );
  static const microsoftaccount = LinuxWebAppSlotDefaultProvider._(
    TfArgLiteral('MicrosoftAccount'),
  );
  static const twitter = LinuxWebAppSlotDefaultProvider._(
    TfArgLiteral('Twitter'),
  );

  static const List<LinuxWebAppSlotDefaultProvider> values = [
    azureactivedirectory,
    facebook,
    github,
    google,
    microsoftaccount,
    twitter,
  ];
}

/// `unauthenticated_client_action` — derived from the provider schema description.
extension type const LinuxWebAppSlotUnauthenticatedClientAction._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxWebAppSlotUnauthenticatedClientAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotUnauthenticatedClientAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotUnauthenticatedClientAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowanonymous = LinuxWebAppSlotUnauthenticatedClientAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const redirecttologinpage =
      LinuxWebAppSlotUnauthenticatedClientAction._(
        TfArgLiteral('RedirectToLoginPage'),
      );

  static const List<LinuxWebAppSlotUnauthenticatedClientAction> values = [
    allowanonymous,
    redirecttologinpage,
  ];
}

/// Typed helper for the `auth_settings.active_directory` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotActiveDirectory {
  const LinuxWebAppSlotActiveDirectory({
    this.allowedAudiences,
    required this.clientId,
    this.clientSecret,
  });

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<String> clientId;

  final LinuxWebAppSlotActiveDirectoryClientSecret? clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'client_id': clientId.toTfJson(),
    ...?clientSecret?.encode(),
  };
}

/// At most one of `client_secret`, `client_secret_setting_name` on the `auth_settings.active_directory` block of `azurerm_linux_web_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxWebAppSlotActiveDirectoryClientSecret {
  const LinuxWebAppSlotActiveDirectoryClientSecret();

  /// Sets `client_secret`.
  const factory LinuxWebAppSlotActiveDirectoryClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxWebAppSlotActiveDirectoryClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxWebAppSlotActiveDirectoryClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxWebAppSlotActiveDirectoryClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppSlotActiveDirectoryClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxWebAppSlotActiveDirectoryClientSecretChoice
    extends LinuxWebAppSlotActiveDirectoryClientSecret {
  const LinuxWebAppSlotActiveDirectoryClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxWebAppSlotActiveDirectoryClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxWebAppSlotActiveDirectoryClientSecretSettingName
    extends LinuxWebAppSlotActiveDirectoryClientSecret {
  const LinuxWebAppSlotActiveDirectoryClientSecretSettingName(
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotFacebook {
  const LinuxWebAppSlotFacebook({
    required this.appId,
    required this.appSecret,
    this.oauthScopes,
  });

  final TfArg<String> appId;

  final LinuxWebAppSlotAppSecret appSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'app_id': appId.toTfJson(),
    ...appSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `app_secret`, `app_secret_setting_name` on the `auth_settings.facebook` block of `azurerm_linux_web_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.appSecret(...)`.
sealed class LinuxWebAppSlotAppSecret {
  const LinuxWebAppSlotAppSecret();

  /// Sets `app_secret`.
  const factory LinuxWebAppSlotAppSecret.appSecret(
    Sensitive<String> appSecret,
  ) = LinuxWebAppSlotAppSecretChoice;

  /// Sets `app_secret_setting_name`.
  const factory LinuxWebAppSlotAppSecret.appSecretSettingName(
    TfArg<String> appSecretSettingName,
  ) = LinuxWebAppSlotAppSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppSlotAppSecret.appSecret] choice: sets `app_secret`.
final class LinuxWebAppSlotAppSecretChoice extends LinuxWebAppSlotAppSecret {
  const LinuxWebAppSlotAppSecretChoice(this.appSecret);

  final Sensitive<String> appSecret;

  @internal
  @override
  String get blockKey => 'app_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'app_secret': appSecret.toTfJson()};
}

/// The [LinuxWebAppSlotAppSecret.appSecretSettingName] choice: sets `app_secret_setting_name`.
final class LinuxWebAppSlotAppSecretSettingName
    extends LinuxWebAppSlotAppSecret {
  const LinuxWebAppSlotAppSecretSettingName(this.appSecretSettingName);

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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotGithub {
  const LinuxWebAppSlotGithub({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxWebAppSlotGithubClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.github` block of `azurerm_linux_web_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxWebAppSlotGithubClientSecret {
  const LinuxWebAppSlotGithubClientSecret();

  /// Sets `client_secret`.
  const factory LinuxWebAppSlotGithubClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxWebAppSlotGithubClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxWebAppSlotGithubClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxWebAppSlotGithubClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppSlotGithubClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxWebAppSlotGithubClientSecretChoice
    extends LinuxWebAppSlotGithubClientSecret {
  const LinuxWebAppSlotGithubClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxWebAppSlotGithubClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxWebAppSlotGithubClientSecretSettingName
    extends LinuxWebAppSlotGithubClientSecret {
  const LinuxWebAppSlotGithubClientSecretSettingName(
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotGoogle {
  const LinuxWebAppSlotGoogle({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxWebAppSlotGoogleClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.google` block of `azurerm_linux_web_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxWebAppSlotGoogleClientSecret {
  const LinuxWebAppSlotGoogleClientSecret();

  /// Sets `client_secret`.
  const factory LinuxWebAppSlotGoogleClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxWebAppSlotGoogleClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxWebAppSlotGoogleClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxWebAppSlotGoogleClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppSlotGoogleClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxWebAppSlotGoogleClientSecretChoice
    extends LinuxWebAppSlotGoogleClientSecret {
  const LinuxWebAppSlotGoogleClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxWebAppSlotGoogleClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxWebAppSlotGoogleClientSecretSettingName
    extends LinuxWebAppSlotGoogleClientSecret {
  const LinuxWebAppSlotGoogleClientSecretSettingName(
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotMicrosoft {
  const LinuxWebAppSlotMicrosoft({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxWebAppSlotMicrosoftClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.microsoft` block of `azurerm_linux_web_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxWebAppSlotMicrosoftClientSecret {
  const LinuxWebAppSlotMicrosoftClientSecret();

  /// Sets `client_secret`.
  const factory LinuxWebAppSlotMicrosoftClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxWebAppSlotMicrosoftClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxWebAppSlotMicrosoftClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxWebAppSlotMicrosoftClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppSlotMicrosoftClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxWebAppSlotMicrosoftClientSecretChoice
    extends LinuxWebAppSlotMicrosoftClientSecret {
  const LinuxWebAppSlotMicrosoftClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxWebAppSlotMicrosoftClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxWebAppSlotMicrosoftClientSecretSettingName
    extends LinuxWebAppSlotMicrosoftClientSecret {
  const LinuxWebAppSlotMicrosoftClientSecretSettingName(
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotTwitter {
  const LinuxWebAppSlotTwitter({
    required this.consumerKey,
    required this.consumerSecret,
  });

  final TfArg<String> consumerKey;

  final LinuxWebAppSlotConsumerSecret consumerSecret;

  @internal
  Map<String, Object?> encode() => {
    'consumer_key': consumerKey.toTfJson(),
    ...consumerSecret.encode(),
  };
}

/// Exactly one of `consumer_secret`, `consumer_secret_setting_name` on the `auth_settings.twitter` block of `azurerm_linux_web_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.consumerSecret(...)`.
sealed class LinuxWebAppSlotConsumerSecret {
  const LinuxWebAppSlotConsumerSecret();

  /// Sets `consumer_secret`.
  const factory LinuxWebAppSlotConsumerSecret.consumerSecret(
    Sensitive<String> consumerSecret,
  ) = LinuxWebAppSlotConsumerSecretChoice;

  /// Sets `consumer_secret_setting_name`.
  const factory LinuxWebAppSlotConsumerSecret.consumerSecretSettingName(
    TfArg<String> consumerSecretSettingName,
  ) = LinuxWebAppSlotConsumerSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppSlotConsumerSecret.consumerSecret] choice: sets `consumer_secret`.
final class LinuxWebAppSlotConsumerSecretChoice
    extends LinuxWebAppSlotConsumerSecret {
  const LinuxWebAppSlotConsumerSecretChoice(this.consumerSecret);

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

/// The [LinuxWebAppSlotConsumerSecret.consumerSecretSettingName] choice: sets `consumer_secret_setting_name`.
final class LinuxWebAppSlotConsumerSecretSettingName
    extends LinuxWebAppSlotConsumerSecret {
  const LinuxWebAppSlotConsumerSecretSettingName(
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotAuthSettingsV2 {
  const LinuxWebAppSlotAuthSettingsV2({
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

  final LinuxWebAppSlotForwardProxyConvention? forwardProxyConvention;

  final TfArg<String>? forwardProxyCustomHostHeaderName;

  final TfArg<String>? forwardProxyCustomSchemeHeaderName;

  final TfArg<String>? httpRouteApiPrefix;

  final TfArg<bool>? requireAuthentication;

  final TfArg<bool>? requireHttps;

  final TfArg<String>? runtimeVersion;

  final LinuxWebAppSlotUnauthenticatedAction? unauthenticatedAction;

  final LinuxWebAppSlotActiveDirectoryV2? activeDirectoryV2;

  final LinuxWebAppSlotAppleV2? appleV2;

  final LinuxWebAppSlotAzureStaticWebAppV2? azureStaticWebAppV2;

  final List<LinuxWebAppSlotCustomOidcV2>? customOidcV2;

  final LinuxWebAppSlotFacebookV2? facebookV2;

  final LinuxWebAppSlotGithubV2? githubV2;

  final LinuxWebAppSlotGoogleV2? googleV2;

  final LinuxWebAppSlotLogin login;

  final LinuxWebAppSlotMicrosoftV2? microsoftV2;

  final LinuxWebAppSlotTwitterV2? twitterV2;

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
extension type const LinuxWebAppSlotForwardProxyConvention._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotForwardProxyConvention.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotForwardProxyConvention.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotForwardProxyConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = LinuxWebAppSlotForwardProxyConvention._(
    TfArgLiteral('Custom'),
  );
  static const noproxy = LinuxWebAppSlotForwardProxyConvention._(
    TfArgLiteral('NoProxy'),
  );
  static const standard = LinuxWebAppSlotForwardProxyConvention._(
    TfArgLiteral('Standard'),
  );

  static const List<LinuxWebAppSlotForwardProxyConvention> values = [
    custom,
    noproxy,
    standard,
  ];
}

/// `unauthenticated_action` — derived from the provider schema description.
extension type const LinuxWebAppSlotUnauthenticatedAction._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotUnauthenticatedAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotUnauthenticatedAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotUnauthenticatedAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowanonymous = LinuxWebAppSlotUnauthenticatedAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const redirecttologinpage = LinuxWebAppSlotUnauthenticatedAction._(
    TfArgLiteral('RedirectToLoginPage'),
  );
  static const return401 = LinuxWebAppSlotUnauthenticatedAction._(
    TfArgLiteral('Return401'),
  );
  static const return403 = LinuxWebAppSlotUnauthenticatedAction._(
    TfArgLiteral('Return403'),
  );

  static const List<LinuxWebAppSlotUnauthenticatedAction> values = [
    allowanonymous,
    redirecttologinpage,
    return401,
    return403,
  ];
}

/// Typed helper for the `auth_settings_v2.active_directory_v2` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotActiveDirectoryV2 {
  const LinuxWebAppSlotActiveDirectoryV2({
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

  final LinuxWebAppSlotClientCredential? clientCredential;

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

/// At most one of `client_secret_certificate_thumbprint`, `client_secret_setting_name` on the `auth_settings_v2.active_directory_v2` block of `azurerm_linux_web_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecretCertificateThumbprint(...)`.
sealed class LinuxWebAppSlotClientCredential {
  const LinuxWebAppSlotClientCredential();

  /// Sets `client_secret_certificate_thumbprint`.
  const factory LinuxWebAppSlotClientCredential.clientSecretCertificateThumbprint(
    TfArg<String> clientSecretCertificateThumbprint,
  ) = LinuxWebAppSlotClientCredentialClientSecretCertificateThumbprint;

  /// Sets `client_secret_setting_name`.
  const factory LinuxWebAppSlotClientCredential.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxWebAppSlotClientCredentialClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppSlotClientCredential.clientSecretCertificateThumbprint] choice: sets `client_secret_certificate_thumbprint`.
final class LinuxWebAppSlotClientCredentialClientSecretCertificateThumbprint
    extends LinuxWebAppSlotClientCredential {
  const LinuxWebAppSlotClientCredentialClientSecretCertificateThumbprint(
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

/// The [LinuxWebAppSlotClientCredential.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxWebAppSlotClientCredentialClientSecretSettingName
    extends LinuxWebAppSlotClientCredential {
  const LinuxWebAppSlotClientCredentialClientSecretSettingName(
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotAppleV2 {
  const LinuxWebAppSlotAppleV2({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotAzureStaticWebAppV2 {
  const LinuxWebAppSlotAzureStaticWebAppV2({required this.clientId});

  final TfArg<String> clientId;

  @internal
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// Typed helper for the `auth_settings_v2.custom_oidc_v2` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotCustomOidcV2 {
  const LinuxWebAppSlotCustomOidcV2({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotFacebookV2 {
  const LinuxWebAppSlotFacebookV2({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotGithubV2 {
  const LinuxWebAppSlotGithubV2({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotGoogleV2 {
  const LinuxWebAppSlotGoogleV2({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotLogin {
  const LinuxWebAppSlotLogin({
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

  final LinuxWebAppSlotCookieExpirationConvention? cookieExpirationConvention;

  final TfArg<String>? cookieExpirationTime;

  final TfArg<String>? logoutEndpoint;

  final TfArg<String>? nonceExpirationTime;

  final TfArg<bool>? preserveUrlFragmentsForLogins;

  final TfArg<num>? tokenRefreshExtensionTime;

  final TfArg<bool>? tokenStoreEnabled;

  final LinuxWebAppSlotTokenStore? tokenStore;

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

/// At most one of `token_store_path`, `token_store_sas_setting_name` on the `auth_settings_v2.login` block of `azurerm_linux_web_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.tokenStorePath(...)`.
sealed class LinuxWebAppSlotTokenStore {
  const LinuxWebAppSlotTokenStore();

  /// Sets `token_store_path`.
  const factory LinuxWebAppSlotTokenStore.tokenStorePath(
    TfArg<String> tokenStorePath,
  ) = LinuxWebAppSlotTokenStorePath;

  /// Sets `token_store_sas_setting_name`.
  const factory LinuxWebAppSlotTokenStore.tokenStoreSasSettingName(
    TfArg<String> tokenStoreSasSettingName,
  ) = LinuxWebAppSlotTokenStoreSasSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppSlotTokenStore.tokenStorePath] choice: sets `token_store_path`.
final class LinuxWebAppSlotTokenStorePath extends LinuxWebAppSlotTokenStore {
  const LinuxWebAppSlotTokenStorePath(this.tokenStorePath);

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

/// The [LinuxWebAppSlotTokenStore.tokenStoreSasSettingName] choice: sets `token_store_sas_setting_name`.
final class LinuxWebAppSlotTokenStoreSasSettingName
    extends LinuxWebAppSlotTokenStore {
  const LinuxWebAppSlotTokenStoreSasSettingName(this.tokenStoreSasSettingName);

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
extension type const LinuxWebAppSlotCookieExpirationConvention._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxWebAppSlotCookieExpirationConvention.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotCookieExpirationConvention.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotCookieExpirationConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const fixedtime = LinuxWebAppSlotCookieExpirationConvention._(
    TfArgLiteral('FixedTime'),
  );
  static const identityproviderderived =
      LinuxWebAppSlotCookieExpirationConvention._(
        TfArgLiteral('IdentityProviderDerived'),
      );

  static const List<LinuxWebAppSlotCookieExpirationConvention> values = [
    fixedtime,
    identityproviderderived,
  ];
}

/// Typed helper for the `auth_settings_v2.microsoft_v2` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotMicrosoftV2 {
  const LinuxWebAppSlotMicrosoftV2({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotTwitterV2 {
  const LinuxWebAppSlotTwitterV2({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotBackup {
  const LinuxWebAppSlotBackup({
    this.enabled,
    required this.name,
    required this.storageAccountUrl,
    required this.schedule,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final Sensitive<String> storageAccountUrl;

  final LinuxWebAppSlotSchedule schedule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'storage_account_url': storageAccountUrl.toTfJson(),
    'schedule': schedule.encode(),
  };
}

/// Typed helper for the `backup.schedule` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotSchedule {
  const LinuxWebAppSlotSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    this.keepAtLeastOneBackup,
    this.retentionPeriodDays,
    this.startTime,
  });

  final TfArg<num> frequencyInterval;

  final LinuxWebAppSlotFrequencyUnit frequencyUnit;

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
extension type const LinuxWebAppSlotFrequencyUnit._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotFrequencyUnit.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotFrequencyUnit.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotFrequencyUnit.arg(TfArg<String> arg) : this._(arg);

  static const day = LinuxWebAppSlotFrequencyUnit._(TfArgLiteral('Day'));
  static const hour = LinuxWebAppSlotFrequencyUnit._(TfArgLiteral('Hour'));

  static const List<LinuxWebAppSlotFrequencyUnit> values = [day, hour];
}

/// Typed helper for the `connection_string` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotConnectionString {
  const LinuxWebAppSlotConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final LinuxWebAppSlotConnectionStringType type;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LinuxWebAppSlotConnectionStringType._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotConnectionStringType.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotConnectionStringType.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotConnectionStringType.arg(TfArg<String> arg)
    : this._(arg);

  static const apihub = LinuxWebAppSlotConnectionStringType._(
    TfArgLiteral('ApiHub'),
  );
  static const custom = LinuxWebAppSlotConnectionStringType._(
    TfArgLiteral('Custom'),
  );
  static const docdb = LinuxWebAppSlotConnectionStringType._(
    TfArgLiteral('DocDb'),
  );
  static const eventhub = LinuxWebAppSlotConnectionStringType._(
    TfArgLiteral('EventHub'),
  );
  static const mysql = LinuxWebAppSlotConnectionStringType._(
    TfArgLiteral('MySql'),
  );
  static const notificationhub = LinuxWebAppSlotConnectionStringType._(
    TfArgLiteral('NotificationHub'),
  );
  static const postgresql = LinuxWebAppSlotConnectionStringType._(
    TfArgLiteral('PostgreSQL'),
  );
  static const rediscache = LinuxWebAppSlotConnectionStringType._(
    TfArgLiteral('RedisCache'),
  );
  static const sqlazure = LinuxWebAppSlotConnectionStringType._(
    TfArgLiteral('SQLAzure'),
  );
  static const sqlserver = LinuxWebAppSlotConnectionStringType._(
    TfArgLiteral('SQLServer'),
  );
  static const servicebus = LinuxWebAppSlotConnectionStringType._(
    TfArgLiteral('ServiceBus'),
  );

  static const List<LinuxWebAppSlotConnectionStringType> values = [
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotIdentity {
  const LinuxWebAppSlotIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `logs` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotLogs {
  const LinuxWebAppSlotLogs({
    this.detailedErrorMessages,
    this.failedRequestTracing,
    this.applicationLogs,
    this.httpLogs,
  });

  final TfArg<bool>? detailedErrorMessages;

  final TfArg<bool>? failedRequestTracing;

  final LinuxWebAppSlotApplicationLogs? applicationLogs;

  final LinuxWebAppSlotHttpLogs? httpLogs;

  @internal
  Map<String, Object?> encode() => {
    'detailed_error_messages': ?detailedErrorMessages?.toTfJson(),
    'failed_request_tracing': ?failedRequestTracing?.toTfJson(),
    'application_logs': ?applicationLogs?.encode(),
    'http_logs': ?httpLogs?.encode(),
  };
}

/// Typed helper for the `logs.application_logs` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotApplicationLogs {
  const LinuxWebAppSlotApplicationLogs({
    required this.fileSystemLevel,
    this.azureBlobStorage,
  });

  final LinuxWebAppSlotFileSystemLevel fileSystemLevel;

  final LinuxWebAppSlotApplicationLogsAzureBlobStorage? azureBlobStorage;

  @internal
  Map<String, Object?> encode() => {
    'file_system_level': fileSystemLevel.toTfJson(),
    'azure_blob_storage': ?azureBlobStorage?.encode(),
  };
}

/// `file_system_level` — derived from the provider schema description.
extension type const LinuxWebAppSlotFileSystemLevel._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotFileSystemLevel.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotFileSystemLevel.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotFileSystemLevel.arg(TfArg<String> arg) : this._(arg);

  static const error = LinuxWebAppSlotFileSystemLevel._(TfArgLiteral('Error'));
  static const information = LinuxWebAppSlotFileSystemLevel._(
    TfArgLiteral('Information'),
  );
  static const off = LinuxWebAppSlotFileSystemLevel._(TfArgLiteral('Off'));
  static const verbose = LinuxWebAppSlotFileSystemLevel._(
    TfArgLiteral('Verbose'),
  );
  static const warning = LinuxWebAppSlotFileSystemLevel._(
    TfArgLiteral('Warning'),
  );

  static const List<LinuxWebAppSlotFileSystemLevel> values = [
    error,
    information,
    off,
    verbose,
    warning,
  ];
}

/// Typed helper for the `logs.application_logs.azure_blob_storage` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotApplicationLogsAzureBlobStorage {
  const LinuxWebAppSlotApplicationLogsAzureBlobStorage({
    required this.level,
    required this.retentionInDays,
    required this.sasUrl,
  });

  final LinuxWebAppSlotLevel level;

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
extension type const LinuxWebAppSlotLevel._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotLevel.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppSlotLevel.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotLevel.arg(TfArg<String> arg) : this._(arg);

  static const error = LinuxWebAppSlotLevel._(TfArgLiteral('Error'));
  static const information = LinuxWebAppSlotLevel._(
    TfArgLiteral('Information'),
  );
  static const verbose = LinuxWebAppSlotLevel._(TfArgLiteral('Verbose'));
  static const warning = LinuxWebAppSlotLevel._(TfArgLiteral('Warning'));

  static const List<LinuxWebAppSlotLevel> values = [
    error,
    information,
    verbose,
    warning,
  ];
}

/// At most one of `azure_blob_storage`, `file_system` on the `logs.http_logs` block of `azurerm_linux_web_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.azureBlobStorage(...)`.
sealed class LinuxWebAppSlotHttpLogs {
  const LinuxWebAppSlotHttpLogs();

  /// Sets `azure_blob_storage`.
  const factory LinuxWebAppSlotHttpLogs.azureBlobStorage(
    LinuxWebAppSlotHttpLogsAzureBlobStorage azureBlobStorage,
  ) = LinuxWebAppSlotHttpLogsAzureBlobStorageChoice;

  /// Sets `file_system`.
  const factory LinuxWebAppSlotHttpLogs.fileSystem(
    LinuxWebAppSlotFileSystem fileSystem,
  ) = LinuxWebAppSlotHttpLogsFileSystem;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppSlotHttpLogs.azureBlobStorage] choice: sets `azure_blob_storage`.
final class LinuxWebAppSlotHttpLogsAzureBlobStorageChoice
    extends LinuxWebAppSlotHttpLogs {
  const LinuxWebAppSlotHttpLogsAzureBlobStorageChoice(this.azureBlobStorage);

  final LinuxWebAppSlotHttpLogsAzureBlobStorage azureBlobStorage;

  @internal
  @override
  String get blockKey => 'azure_blob_storage';

  @internal
  @override
  Map<String, Object?> encode() => {
    'azure_blob_storage': azureBlobStorage.encode(),
  };
}

/// The [LinuxWebAppSlotHttpLogs.fileSystem] choice: sets `file_system`.
final class LinuxWebAppSlotHttpLogsFileSystem extends LinuxWebAppSlotHttpLogs {
  const LinuxWebAppSlotHttpLogsFileSystem(this.fileSystem);

  final LinuxWebAppSlotFileSystem fileSystem;

  @internal
  @override
  String get blockKey => 'file_system';

  @internal
  @override
  Map<String, Object?> encode() => {'file_system': fileSystem.encode()};
}

/// Typed helper for the `logs.http_logs.azure_blob_storage` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotHttpLogsAzureBlobStorage {
  const LinuxWebAppSlotHttpLogsAzureBlobStorage({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotFileSystem {
  const LinuxWebAppSlotFileSystem({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotSiteConfig {
  const LinuxWebAppSlotSiteConfig({
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
    this.ipRestriction,
    this.scmIpRestriction,
  });

  final TfArg<bool>? alwaysOn;

  final TfArg<String>? apiDefinitionUrl;

  final TfArg<String>? apiManagementApiId;

  final TfArg<String>? appCommandLine;

  final TfArg<String>? autoSwapSlotName;

  final TfArg<String>? containerRegistryManagedIdentityClientId;

  final TfArg<bool>? containerRegistryUseManagedIdentity;

  final TfArg<List<String>>? defaultDocuments;

  final LinuxWebAppSlotFtpsState? ftpsState;

  final TfArg<num>? healthCheckEvictionTimeInMin;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final LinuxWebAppSlotIpRestrictionDefaultAction? ipRestrictionDefaultAction;

  final LinuxWebAppSlotLoadBalancingMode? loadBalancingMode;

  final TfArg<bool>? localMysqlEnabled;

  final LinuxWebAppSlotManagedPipelineMode? managedPipelineMode;

  final LinuxWebAppSlotMinimumTlsCipherSuite? minimumTlsCipherSuite;

  final LinuxWebAppSlotMinimumTlsVersion? minimumTlsVersion;

  final TfArg<bool>? remoteDebuggingEnabled;

  final LinuxWebAppSlotRemoteDebuggingVersion? remoteDebuggingVersion;

  final LinuxWebAppSlotScmIpRestrictionDefaultAction?
  scmIpRestrictionDefaultAction;

  final LinuxWebAppSlotScmMinimumTlsVersion? scmMinimumTlsVersion;

  final TfArg<bool>? scmUseMainIpRestriction;

  final TfArg<bool>? use32BitWorker;

  final TfArg<bool>? vnetRouteAllEnabled;

  final TfArg<bool>? websocketsEnabled;

  final TfArg<num>? workerCount;

  final LinuxWebAppSlotApplicationStack? applicationStack;

  final LinuxWebAppSlotAutoHealSetting? autoHealSetting;

  final LinuxWebAppSlotCors? cors;

  final List<LinuxWebAppSlotIpRestriction>? ipRestriction;

  final List<LinuxWebAppSlotScmIpRestriction>? scmIpRestriction;

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
    if (ipRestriction != null)
      'ip_restriction': [for (final e in ipRestriction!) e.encode()],
    if (scmIpRestriction != null)
      'scm_ip_restriction': [for (final e in scmIpRestriction!) e.encode()],
  };
}

/// `ftps_state` — derived from the provider schema description.
extension type const LinuxWebAppSlotFtpsState._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotFtpsState.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppSlotFtpsState.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotFtpsState.arg(TfArg<String> arg) : this._(arg);

  static const allallowed = LinuxWebAppSlotFtpsState._(
    TfArgLiteral('AllAllowed'),
  );
  static const disabled = LinuxWebAppSlotFtpsState._(TfArgLiteral('Disabled'));
  static const ftpsonly = LinuxWebAppSlotFtpsState._(TfArgLiteral('FtpsOnly'));

  static const List<LinuxWebAppSlotFtpsState> values = [
    allallowed,
    disabled,
    ftpsonly,
  ];
}

/// `ip_restriction_default_action` — derived from the provider schema description.
extension type const LinuxWebAppSlotIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxWebAppSlotIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = LinuxWebAppSlotIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = LinuxWebAppSlotIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<LinuxWebAppSlotIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `load_balancing_mode` — derived from the provider schema description.
extension type const LinuxWebAppSlotLoadBalancingMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotLoadBalancingMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotLoadBalancingMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotLoadBalancingMode.arg(TfArg<String> arg) : this._(arg);

  static const leastrequests = LinuxWebAppSlotLoadBalancingMode._(
    TfArgLiteral('LeastRequests'),
  );
  static const leastresponsetime = LinuxWebAppSlotLoadBalancingMode._(
    TfArgLiteral('LeastResponseTime'),
  );
  static const persiteroundrobin = LinuxWebAppSlotLoadBalancingMode._(
    TfArgLiteral('PerSiteRoundRobin'),
  );
  static const requesthash = LinuxWebAppSlotLoadBalancingMode._(
    TfArgLiteral('RequestHash'),
  );
  static const weightedroundrobin = LinuxWebAppSlotLoadBalancingMode._(
    TfArgLiteral('WeightedRoundRobin'),
  );
  static const weightedtotaltraffic = LinuxWebAppSlotLoadBalancingMode._(
    TfArgLiteral('WeightedTotalTraffic'),
  );

  static const List<LinuxWebAppSlotLoadBalancingMode> values = [
    leastrequests,
    leastresponsetime,
    persiteroundrobin,
    requesthash,
    weightedroundrobin,
    weightedtotaltraffic,
  ];
}

/// `managed_pipeline_mode` — derived from the provider schema description.
extension type const LinuxWebAppSlotManagedPipelineMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotManagedPipelineMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotManagedPipelineMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotManagedPipelineMode.arg(TfArg<String> arg) : this._(arg);

  static const classic = LinuxWebAppSlotManagedPipelineMode._(
    TfArgLiteral('Classic'),
  );
  static const integrated = LinuxWebAppSlotManagedPipelineMode._(
    TfArgLiteral('Integrated'),
  );

  static const List<LinuxWebAppSlotManagedPipelineMode> values = [
    classic,
    integrated,
  ];
}

/// `minimum_tls_cipher_suite` — derived from the provider schema description.
extension type const LinuxWebAppSlotMinimumTlsCipherSuite._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotMinimumTlsCipherSuite.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotMinimumTlsCipherSuite.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotMinimumTlsCipherSuite.arg(TfArg<String> arg)
    : this._(arg);

  static const tlsAes128GcmSha256 = LinuxWebAppSlotMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_128_GCM_SHA256'),
  );
  static const tlsAes256GcmSha384 = LinuxWebAppSlotMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_256_GCM_SHA384'),
  );
  static const tlsEcdheEcdsaWithAes128CbcSha256 =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes128GcmSha256 =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes256GcmSha384 =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsEcdheRsaWithAes128CbcSha =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA'),
      );
  static const tlsEcdheRsaWithAes128CbcSha256 =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheRsaWithAes128GcmSha256 =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheRsaWithAes256CbcSha =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA'),
      );
  static const tlsEcdheRsaWithAes256CbcSha384 =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384'),
      );
  static const tlsEcdheRsaWithAes256GcmSha384 =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsRsaWithAes128CbcSha = LinuxWebAppSlotMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA'),
  );
  static const tlsRsaWithAes128CbcSha256 =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsRsaWithAes128GcmSha256 =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsRsaWithAes256CbcSha = LinuxWebAppSlotMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA'),
  );
  static const tlsRsaWithAes256CbcSha256 =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA256'),
      );
  static const tlsRsaWithAes256GcmSha384 =
      LinuxWebAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_256_GCM_SHA384'),
      );

  static const List<LinuxWebAppSlotMinimumTlsCipherSuite> values = [
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
extension type const LinuxWebAppSlotMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotMinimumTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p1 = LinuxWebAppSlotMinimumTlsVersion._(TfArgLiteral('1.1'));
  static const v1p3 = LinuxWebAppSlotMinimumTlsVersion._(TfArgLiteral('1.3'));
  static const v1p2 = LinuxWebAppSlotMinimumTlsVersion._(TfArgLiteral('1.2'));
  static const v1p0 = LinuxWebAppSlotMinimumTlsVersion._(TfArgLiteral('1.0'));

  static const List<LinuxWebAppSlotMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// `remote_debugging_version` — derived from the provider schema description.
extension type const LinuxWebAppSlotRemoteDebuggingVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotRemoteDebuggingVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotRemoteDebuggingVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotRemoteDebuggingVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const vs2022 = LinuxWebAppSlotRemoteDebuggingVersion._(
    TfArgLiteral('VS2022'),
  );

  static const List<LinuxWebAppSlotRemoteDebuggingVersion> values = [vs2022];
}

/// `scm_ip_restriction_default_action` — derived from the provider schema description.
extension type const LinuxWebAppSlotScmIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxWebAppSlotScmIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotScmIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotScmIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = LinuxWebAppSlotScmIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = LinuxWebAppSlotScmIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<LinuxWebAppSlotScmIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `scm_minimum_tls_version` — derived from the provider schema description.
extension type const LinuxWebAppSlotScmMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotScmMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotScmMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotScmMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p1 = LinuxWebAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p3 = LinuxWebAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.3'),
  );
  static const v1p2 = LinuxWebAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p0 = LinuxWebAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.0'),
  );

  static const List<LinuxWebAppSlotScmMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// Typed helper for the `site_config.application_stack` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotApplicationStack {
  const LinuxWebAppSlotApplicationStack({
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

  final LinuxWebAppSlotDotnetVersion? dotnetVersion;

  final LinuxWebAppSlotGoVersion? goVersion;

  final LinuxWebAppSlotJavaServer? javaServer;

  final TfArg<String>? javaServerVersion;

  final LinuxWebAppSlotJavaVersion? javaVersion;

  final LinuxWebAppSlotNodeVersion? nodeVersion;

  final LinuxWebAppSlotPhpVersion? phpVersion;

  final LinuxWebAppSlotPythonVersion? pythonVersion;

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

/// `dotnet_version` — derived from the provider schema description.
extension type const LinuxWebAppSlotDotnetVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotDotnetVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotDotnetVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotDotnetVersion.arg(TfArg<String> arg) : this._(arg);

  static const v3p1 = LinuxWebAppSlotDotnetVersion._(TfArgLiteral('3.1'));
  static const v5p0 = LinuxWebAppSlotDotnetVersion._(TfArgLiteral('5.0'));
  static const v6p0 = LinuxWebAppSlotDotnetVersion._(TfArgLiteral('6.0'));
  static const v7p0 = LinuxWebAppSlotDotnetVersion._(TfArgLiteral('7.0'));
  static const v8p0 = LinuxWebAppSlotDotnetVersion._(TfArgLiteral('8.0'));
  static const v9p0 = LinuxWebAppSlotDotnetVersion._(TfArgLiteral('9.0'));
  static const v10p0 = LinuxWebAppSlotDotnetVersion._(TfArgLiteral('10.0'));

  static const List<LinuxWebAppSlotDotnetVersion> values = [
    v3p1,
    v5p0,
    v6p0,
    v7p0,
    v8p0,
    v9p0,
    v10p0,
  ];
}

/// `go_version` — derived from the provider schema description.
extension type const LinuxWebAppSlotGoVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotGoVersion.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppSlotGoVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotGoVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p19 = LinuxWebAppSlotGoVersion._(TfArgLiteral('1.19'));
  static const v1p18 = LinuxWebAppSlotGoVersion._(TfArgLiteral('1.18'));

  static const List<LinuxWebAppSlotGoVersion> values = [v1p19, v1p18];
}

/// `java_server` — derived from the provider schema description.
extension type const LinuxWebAppSlotJavaServer._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotJavaServer.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotJavaServer.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotJavaServer.arg(TfArg<String> arg) : this._(arg);

  static const java = LinuxWebAppSlotJavaServer._(TfArgLiteral('JAVA'));
  static const tomcat = LinuxWebAppSlotJavaServer._(TfArgLiteral('TOMCAT'));
  static const jbosseap = LinuxWebAppSlotJavaServer._(TfArgLiteral('JBOSSEAP'));

  static const List<LinuxWebAppSlotJavaServer> values = [
    java,
    tomcat,
    jbosseap,
  ];
}

/// `java_version` — derived from the provider schema description.
extension type const LinuxWebAppSlotJavaVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotJavaVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotJavaVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotJavaVersion.arg(TfArg<String> arg) : this._(arg);

  static const v8 = LinuxWebAppSlotJavaVersion._(TfArgLiteral('8'));
  static const v11 = LinuxWebAppSlotJavaVersion._(TfArgLiteral('11'));
  static const v17 = LinuxWebAppSlotJavaVersion._(TfArgLiteral('17'));
  static const v21 = LinuxWebAppSlotJavaVersion._(TfArgLiteral('21'));
  static const v25 = LinuxWebAppSlotJavaVersion._(TfArgLiteral('25'));

  static const List<LinuxWebAppSlotJavaVersion> values = [
    v8,
    v11,
    v17,
    v21,
    v25,
  ];
}

/// `node_version` — derived from the provider schema description.
extension type const LinuxWebAppSlotNodeVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotNodeVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotNodeVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotNodeVersion.arg(TfArg<String> arg) : this._(arg);

  static const v12Lts = LinuxWebAppSlotNodeVersion._(TfArgLiteral('12-lts'));
  static const v14Lts = LinuxWebAppSlotNodeVersion._(TfArgLiteral('14-lts'));
  static const v16Lts = LinuxWebAppSlotNodeVersion._(TfArgLiteral('16-lts'));
  static const v18Lts = LinuxWebAppSlotNodeVersion._(TfArgLiteral('18-lts'));
  static const v20Lts = LinuxWebAppSlotNodeVersion._(TfArgLiteral('20-lts'));
  static const v22Lts = LinuxWebAppSlotNodeVersion._(TfArgLiteral('22-lts'));
  static const v24Lts = LinuxWebAppSlotNodeVersion._(TfArgLiteral('24-lts'));

  static const List<LinuxWebAppSlotNodeVersion> values = [
    v12Lts,
    v14Lts,
    v16Lts,
    v18Lts,
    v20Lts,
    v22Lts,
    v24Lts,
  ];
}

/// `php_version` — derived from the provider schema description.
extension type const LinuxWebAppSlotPhpVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotPhpVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotPhpVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotPhpVersion.arg(TfArg<String> arg) : this._(arg);

  static const v7p4 = LinuxWebAppSlotPhpVersion._(TfArgLiteral('7.4'));
  static const v8p0 = LinuxWebAppSlotPhpVersion._(TfArgLiteral('8.0'));
  static const v8p1 = LinuxWebAppSlotPhpVersion._(TfArgLiteral('8.1'));
  static const v8p2 = LinuxWebAppSlotPhpVersion._(TfArgLiteral('8.2'));
  static const v8p3 = LinuxWebAppSlotPhpVersion._(TfArgLiteral('8.3'));
  static const v8p4 = LinuxWebAppSlotPhpVersion._(TfArgLiteral('8.4'));
  static const v8p5 = LinuxWebAppSlotPhpVersion._(TfArgLiteral('8.5'));

  static const List<LinuxWebAppSlotPhpVersion> values = [
    v7p4,
    v8p0,
    v8p1,
    v8p2,
    v8p3,
    v8p4,
    v8p5,
  ];
}

/// `python_version` — derived from the provider schema description.
extension type const LinuxWebAppSlotPythonVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotPythonVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotPythonVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotPythonVersion.arg(TfArg<String> arg) : this._(arg);

  static const v3p7 = LinuxWebAppSlotPythonVersion._(TfArgLiteral('3.7'));
  static const v3p8 = LinuxWebAppSlotPythonVersion._(TfArgLiteral('3.8'));
  static const v3p9 = LinuxWebAppSlotPythonVersion._(TfArgLiteral('3.9'));
  static const v3p10 = LinuxWebAppSlotPythonVersion._(TfArgLiteral('3.10'));
  static const v3p11 = LinuxWebAppSlotPythonVersion._(TfArgLiteral('3.11'));
  static const v3p12 = LinuxWebAppSlotPythonVersion._(TfArgLiteral('3.12'));
  static const v3p13 = LinuxWebAppSlotPythonVersion._(TfArgLiteral('3.13'));
  static const v3p14 = LinuxWebAppSlotPythonVersion._(TfArgLiteral('3.14'));

  static const List<LinuxWebAppSlotPythonVersion> values = [
    v3p7,
    v3p8,
    v3p9,
    v3p10,
    v3p11,
    v3p12,
    v3p13,
    v3p14,
  ];
}

/// Typed helper for the `site_config.auto_heal_setting` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotAutoHealSetting {
  const LinuxWebAppSlotAutoHealSetting({this.action, this.trigger});

  final LinuxWebAppSlotAction? action;

  final LinuxWebAppSlotTrigger? trigger;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.encode(),
    'trigger': ?trigger?.encode(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.action` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotAction {
  const LinuxWebAppSlotAction({
    required this.actionType,
    this.minimumProcessExecutionTime,
  });

  final LinuxWebAppSlotActionType actionType;

  final TfArg<String>? minimumProcessExecutionTime;

  @internal
  Map<String, Object?> encode() => {
    'action_type': actionType.toTfJson(),
    'minimum_process_execution_time': ?minimumProcessExecutionTime?.toTfJson(),
  };
}

/// `action_type` — derived from the provider schema description.
extension type const LinuxWebAppSlotActionType._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotActionType.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotActionType.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotActionType.arg(TfArg<String> arg) : this._(arg);

  static const recycle = LinuxWebAppSlotActionType._(TfArgLiteral('Recycle'));

  static const List<LinuxWebAppSlotActionType> values = [recycle];
}

/// Typed helper for the `site_config.auto_heal_setting.trigger` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotTrigger {
  const LinuxWebAppSlotTrigger({
    this.requests,
    this.slowRequest,
    this.slowRequestWithPath,
    this.statusCode,
  });

  final LinuxWebAppSlotRequests? requests;

  final LinuxWebAppSlotSlowRequest? slowRequest;

  final List<LinuxWebAppSlotSlowRequestWithPath>? slowRequestWithPath;

  final List<LinuxWebAppSlotStatusCode>? statusCode;

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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotRequests {
  const LinuxWebAppSlotRequests({required this.count, required this.interval});

  final TfArg<num> count;

  final TfArg<String> interval;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'interval': interval.toTfJson(),
  };
}

/// Typed helper for the `site_config.auto_heal_setting.trigger.slow_request` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotSlowRequest {
  const LinuxWebAppSlotSlowRequest({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotSlowRequestWithPath {
  const LinuxWebAppSlotSlowRequestWithPath({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotStatusCode {
  const LinuxWebAppSlotStatusCode({
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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotCors {
  const LinuxWebAppSlotCors({this.allowedOrigins, this.supportCredentials});

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? supportCredentials;

  @internal
  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'support_credentials': ?supportCredentials?.toTfJson(),
  };
}

/// Typed helper for the `site_config.ip_restriction` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotIpRestriction {
  const LinuxWebAppSlotIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final LinuxWebAppSlotIpRestrictionAction? action;

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
extension type const LinuxWebAppSlotIpRestrictionAction._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotIpRestrictionAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotIpRestrictionAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotIpRestrictionAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = LinuxWebAppSlotIpRestrictionAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = LinuxWebAppSlotIpRestrictionAction._(
    TfArgLiteral('Deny'),
  );

  static const List<LinuxWebAppSlotIpRestrictionAction> values = [allow, deny];
}

/// Typed helper for the `site_config.scm_ip_restriction` block of
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotScmIpRestriction {
  const LinuxWebAppSlotScmIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final LinuxWebAppSlotIpRestrictionAction? action;

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
/// `azurerm_linux_web_app_slot` (derived from provider schema).
@immutable
final class LinuxWebAppSlotStorageAccount {
  const LinuxWebAppSlotStorageAccount({
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

  final LinuxWebAppSlotStorageAccountType type;

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
extension type const LinuxWebAppSlotStorageAccountType._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppSlotStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppSlotStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppSlotStorageAccountType.arg(TfArg<String> arg) : this._(arg);

  static const azureblob = LinuxWebAppSlotStorageAccountType._(
    TfArgLiteral('AzureBlob'),
  );
  static const azurefiles = LinuxWebAppSlotStorageAccountType._(
    TfArgLiteral('AzureFiles'),
  );

  static const List<LinuxWebAppSlotStorageAccountType> values = [
    azureblob,
    azurefiles,
  ];
}

/// Factory wrapper for `azurerm_linux_web_app_slot`.
final class AzurermLinuxWebAppSlot extends Resource {
  static const String tfType = 'azurerm_linux_web_app_slot';

  AzurermLinuxWebAppSlot(
    super.localName, {
    required TfArg<String> appServiceId,
    TfArg<Map<String, String>>? appSettings,
    TfArg<bool>? clientAffinityEnabled,
    TfArg<bool>? clientCertificateEnabled,
    TfArg<String>? clientCertificateExclusionPaths,
    LinuxWebAppSlotClientCertificateMode? clientCertificateMode,
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
    TfArg<String>? virtualNetworkSubnetId,
    TfArg<bool>? vnetImagePullEnabled,
    TfArg<bool>? webdeployPublishBasicAuthenticationEnabled,
    TfArg<String>? zipDeployFile,
    LinuxWebAppSlotAuthSettings? authSettings,
    LinuxWebAppSlotAuthSettingsV2? authSettingsV2,
    LinuxWebAppSlotBackup? backup,
    List<LinuxWebAppSlotConnectionString>? connectionString,
    LinuxWebAppSlotIdentity? identity,
    LinuxWebAppSlotLogs? logs,
    required LinuxWebAppSlotSiteConfig siteConfig,
    List<LinuxWebAppSlotStorageAccount>? storageAccount,
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
           if (storageAccount != null)
             'storage_account': TfArg.literal([
               for (final e in storageAccount) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLinuxWebAppSlotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLinuxWebAppSlot>`.
  RefTo<AzurermLinuxWebAppSlot> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_metadata` attribute.
  TfRef<Map<String, String>> get appMetadata =>
      TfRef.attribute<Map<String, String>>(this, 'app_metadata');

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
