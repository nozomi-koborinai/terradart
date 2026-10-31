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

  final LinuxWebAppDefaultProvider? defaultProvider;

  final TfArg<bool> enabled;

  final TfArg<String>? issuer;

  final TfArg<String>? runtimeVersion;

  final TfArg<num>? tokenRefreshExtensionHours;

  final TfArg<bool>? tokenStoreEnabled;

  final LinuxWebAppUnauthenticatedClientAction? unauthenticatedClientAction;

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

/// `default_provider` — derived from the provider schema description.
extension type const LinuxWebAppDefaultProvider._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppDefaultProvider.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppDefaultProvider.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppDefaultProvider.arg(TfArg<String> arg) : this._(arg);

  static const azureactivedirectory = LinuxWebAppDefaultProvider._(
    TfArgLiteral('AzureActiveDirectory'),
  );
  static const facebook = LinuxWebAppDefaultProvider._(
    TfArgLiteral('Facebook'),
  );
  static const github = LinuxWebAppDefaultProvider._(TfArgLiteral('Github'));
  static const google = LinuxWebAppDefaultProvider._(TfArgLiteral('Google'));
  static const microsoftaccount = LinuxWebAppDefaultProvider._(
    TfArgLiteral('MicrosoftAccount'),
  );
  static const twitter = LinuxWebAppDefaultProvider._(TfArgLiteral('Twitter'));

  static const List<LinuxWebAppDefaultProvider> values = [
    azureactivedirectory,
    facebook,
    github,
    google,
    microsoftaccount,
    twitter,
  ];
}

/// `unauthenticated_client_action` — derived from the provider schema description.
extension type const LinuxWebAppUnauthenticatedClientAction._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppUnauthenticatedClientAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppUnauthenticatedClientAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppUnauthenticatedClientAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowanonymous = LinuxWebAppUnauthenticatedClientAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const redirecttologinpage = LinuxWebAppUnauthenticatedClientAction._(
    TfArgLiteral('RedirectToLoginPage'),
  );

  static const List<LinuxWebAppUnauthenticatedClientAction> values = [
    allowanonymous,
    redirecttologinpage,
  ];
}

/// Typed helper for the `auth_settings.active_directory` block of
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppActiveDirectory {
  const LinuxWebAppActiveDirectory({
    this.allowedAudiences,
    required this.clientId,
    this.clientSecret,
  });

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<String> clientId;

  final LinuxWebAppActiveDirectoryClientSecret? clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'client_id': clientId.toTfJson(),
    ...?clientSecret?.encode(),
  };
}

/// At most one of `client_secret`, `client_secret_setting_name` on the `auth_settings.active_directory` block of `azurerm_linux_web_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxWebAppActiveDirectoryClientSecret {
  const LinuxWebAppActiveDirectoryClientSecret();

  /// Sets `client_secret`.
  const factory LinuxWebAppActiveDirectoryClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxWebAppActiveDirectoryClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxWebAppActiveDirectoryClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxWebAppActiveDirectoryClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppActiveDirectoryClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxWebAppActiveDirectoryClientSecretChoice
    extends LinuxWebAppActiveDirectoryClientSecret {
  const LinuxWebAppActiveDirectoryClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxWebAppActiveDirectoryClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxWebAppActiveDirectoryClientSecretSettingName
    extends LinuxWebAppActiveDirectoryClientSecret {
  const LinuxWebAppActiveDirectoryClientSecretSettingName(
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
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppFacebook {
  const LinuxWebAppFacebook({
    required this.appId,
    required this.appSecret,
    this.oauthScopes,
  });

  final TfArg<String> appId;

  final LinuxWebAppSecret appSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'app_id': appId.toTfJson(),
    ...appSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `app_secret`, `app_secret_setting_name` on the `auth_settings.facebook` block of `azurerm_linux_web_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.appSecret(...)`.
sealed class LinuxWebAppSecret {
  const LinuxWebAppSecret();

  /// Sets `app_secret`.
  const factory LinuxWebAppSecret.appSecret(Sensitive<String> appSecret) =
      LinuxWebAppSecretChoice;

  /// Sets `app_secret_setting_name`.
  const factory LinuxWebAppSecret.appSecretSettingName(
    TfArg<String> appSecretSettingName,
  ) = LinuxWebAppSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppSecret.appSecret] choice: sets `app_secret`.
final class LinuxWebAppSecretChoice extends LinuxWebAppSecret {
  const LinuxWebAppSecretChoice(this.appSecret);

  final Sensitive<String> appSecret;

  @internal
  @override
  String get blockKey => 'app_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'app_secret': appSecret.toTfJson()};
}

/// The [LinuxWebAppSecret.appSecretSettingName] choice: sets `app_secret_setting_name`.
final class LinuxWebAppSecretSettingName extends LinuxWebAppSecret {
  const LinuxWebAppSecretSettingName(this.appSecretSettingName);

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
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppGithub {
  const LinuxWebAppGithub({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxWebAppGithubClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.github` block of `azurerm_linux_web_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxWebAppGithubClientSecret {
  const LinuxWebAppGithubClientSecret();

  /// Sets `client_secret`.
  const factory LinuxWebAppGithubClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxWebAppGithubClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxWebAppGithubClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxWebAppGithubClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppGithubClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxWebAppGithubClientSecretChoice
    extends LinuxWebAppGithubClientSecret {
  const LinuxWebAppGithubClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxWebAppGithubClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxWebAppGithubClientSecretSettingName
    extends LinuxWebAppGithubClientSecret {
  const LinuxWebAppGithubClientSecretSettingName(this.clientSecretSettingName);

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
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppGoogle {
  const LinuxWebAppGoogle({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxWebAppGoogleClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.google` block of `azurerm_linux_web_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxWebAppGoogleClientSecret {
  const LinuxWebAppGoogleClientSecret();

  /// Sets `client_secret`.
  const factory LinuxWebAppGoogleClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxWebAppGoogleClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxWebAppGoogleClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxWebAppGoogleClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppGoogleClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxWebAppGoogleClientSecretChoice
    extends LinuxWebAppGoogleClientSecret {
  const LinuxWebAppGoogleClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxWebAppGoogleClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxWebAppGoogleClientSecretSettingName
    extends LinuxWebAppGoogleClientSecret {
  const LinuxWebAppGoogleClientSecretSettingName(this.clientSecretSettingName);

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
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppMicrosoft {
  const LinuxWebAppMicrosoft({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxWebAppMicrosoftClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.microsoft` block of `azurerm_linux_web_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxWebAppMicrosoftClientSecret {
  const LinuxWebAppMicrosoftClientSecret();

  /// Sets `client_secret`.
  const factory LinuxWebAppMicrosoftClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxWebAppMicrosoftClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxWebAppMicrosoftClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxWebAppMicrosoftClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppMicrosoftClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxWebAppMicrosoftClientSecretChoice
    extends LinuxWebAppMicrosoftClientSecret {
  const LinuxWebAppMicrosoftClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxWebAppMicrosoftClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxWebAppMicrosoftClientSecretSettingName
    extends LinuxWebAppMicrosoftClientSecret {
  const LinuxWebAppMicrosoftClientSecretSettingName(
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
/// `azurerm_linux_web_app` (derived from provider schema).
@immutable
final class LinuxWebAppTwitter {
  const LinuxWebAppTwitter({
    required this.consumerKey,
    required this.consumerSecret,
  });

  final TfArg<String> consumerKey;

  final LinuxWebAppConsumerSecret consumerSecret;

  @internal
  Map<String, Object?> encode() => {
    'consumer_key': consumerKey.toTfJson(),
    ...consumerSecret.encode(),
  };
}

/// Exactly one of `consumer_secret`, `consumer_secret_setting_name` on the `auth_settings.twitter` block of `azurerm_linux_web_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.consumerSecret(...)`.
sealed class LinuxWebAppConsumerSecret {
  const LinuxWebAppConsumerSecret();

  /// Sets `consumer_secret`.
  const factory LinuxWebAppConsumerSecret.consumerSecret(
    Sensitive<String> consumerSecret,
  ) = LinuxWebAppConsumerSecretChoice;

  /// Sets `consumer_secret_setting_name`.
  const factory LinuxWebAppConsumerSecret.consumerSecretSettingName(
    TfArg<String> consumerSecretSettingName,
  ) = LinuxWebAppConsumerSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppConsumerSecret.consumerSecret] choice: sets `consumer_secret`.
final class LinuxWebAppConsumerSecretChoice extends LinuxWebAppConsumerSecret {
  const LinuxWebAppConsumerSecretChoice(this.consumerSecret);

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

/// The [LinuxWebAppConsumerSecret.consumerSecretSettingName] choice: sets `consumer_secret_setting_name`.
final class LinuxWebAppConsumerSecretSettingName
    extends LinuxWebAppConsumerSecret {
  const LinuxWebAppConsumerSecretSettingName(this.consumerSecretSettingName);

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

  final LinuxWebAppForwardProxyConvention? forwardProxyConvention;

  final TfArg<String>? forwardProxyCustomHostHeaderName;

  final TfArg<String>? forwardProxyCustomSchemeHeaderName;

  final TfArg<String>? httpRouteApiPrefix;

  final TfArg<bool>? requireAuthentication;

  final TfArg<bool>? requireHttps;

  final TfArg<String>? runtimeVersion;

  final LinuxWebAppUnauthenticatedAction? unauthenticatedAction;

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

/// `forward_proxy_convention` — derived from the provider schema description.
extension type const LinuxWebAppForwardProxyConvention._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppForwardProxyConvention.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppForwardProxyConvention.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppForwardProxyConvention.arg(TfArg<String> arg) : this._(arg);

  static const custom = LinuxWebAppForwardProxyConvention._(
    TfArgLiteral('Custom'),
  );
  static const noproxy = LinuxWebAppForwardProxyConvention._(
    TfArgLiteral('NoProxy'),
  );
  static const standard = LinuxWebAppForwardProxyConvention._(
    TfArgLiteral('Standard'),
  );

  static const List<LinuxWebAppForwardProxyConvention> values = [
    custom,
    noproxy,
    standard,
  ];
}

/// `unauthenticated_action` — derived from the provider schema description.
extension type const LinuxWebAppUnauthenticatedAction._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppUnauthenticatedAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppUnauthenticatedAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppUnauthenticatedAction.arg(TfArg<String> arg) : this._(arg);

  static const allowanonymous = LinuxWebAppUnauthenticatedAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const redirecttologinpage = LinuxWebAppUnauthenticatedAction._(
    TfArgLiteral('RedirectToLoginPage'),
  );
  static const return401 = LinuxWebAppUnauthenticatedAction._(
    TfArgLiteral('Return401'),
  );
  static const return403 = LinuxWebAppUnauthenticatedAction._(
    TfArgLiteral('Return403'),
  );

  static const List<LinuxWebAppUnauthenticatedAction> values = [
    allowanonymous,
    redirecttologinpage,
    return401,
    return403,
  ];
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

  final LinuxWebAppActiveDirectoryV2ClientSecret? clientSecret;

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

/// At most one of `client_secret_certificate_thumbprint`, `client_secret_setting_name` on the `auth_settings_v2.active_directory_v2` block of `azurerm_linux_web_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecretCertificateThumbprint(...)`.
sealed class LinuxWebAppActiveDirectoryV2ClientSecret {
  const LinuxWebAppActiveDirectoryV2ClientSecret();

  /// Sets `client_secret_certificate_thumbprint`.
  const factory LinuxWebAppActiveDirectoryV2ClientSecret.clientSecretCertificateThumbprint(
    TfArg<String> clientSecretCertificateThumbprint,
  ) = LinuxWebAppActiveDirectoryV2ClientSecretCertificateThumbprint;

  /// Sets `client_secret_setting_name`.
  const factory LinuxWebAppActiveDirectoryV2ClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxWebAppActiveDirectoryV2ClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppActiveDirectoryV2ClientSecret.clientSecretCertificateThumbprint] choice: sets `client_secret_certificate_thumbprint`.
final class LinuxWebAppActiveDirectoryV2ClientSecretCertificateThumbprint
    extends LinuxWebAppActiveDirectoryV2ClientSecret {
  const LinuxWebAppActiveDirectoryV2ClientSecretCertificateThumbprint(
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

/// The [LinuxWebAppActiveDirectoryV2ClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxWebAppActiveDirectoryV2ClientSecretSettingName
    extends LinuxWebAppActiveDirectoryV2ClientSecret {
  const LinuxWebAppActiveDirectoryV2ClientSecretSettingName(
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
    this.tokenStore,
    this.validateNonce,
  });

  final TfArg<List<String>>? allowedExternalRedirectUrls;

  final LinuxWebAppCookieExpirationConvention? cookieExpirationConvention;

  final TfArg<String>? cookieExpirationTime;

  final TfArg<String>? logoutEndpoint;

  final TfArg<String>? nonceExpirationTime;

  final TfArg<bool>? preserveUrlFragmentsForLogins;

  final TfArg<num>? tokenRefreshExtensionTime;

  final TfArg<bool>? tokenStoreEnabled;

  final LinuxWebAppTokenStore? tokenStore;

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

/// At most one of `token_store_path`, `token_store_sas_setting_name` on the `auth_settings_v2.login` block of `azurerm_linux_web_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.tokenStorePath(...)`.
sealed class LinuxWebAppTokenStore {
  const LinuxWebAppTokenStore();

  /// Sets `token_store_path`.
  const factory LinuxWebAppTokenStore.tokenStorePath(
    TfArg<String> tokenStorePath,
  ) = LinuxWebAppTokenStorePath;

  /// Sets `token_store_sas_setting_name`.
  const factory LinuxWebAppTokenStore.tokenStoreSasSettingName(
    TfArg<String> tokenStoreSasSettingName,
  ) = LinuxWebAppTokenStoreSasSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppTokenStore.tokenStorePath] choice: sets `token_store_path`.
final class LinuxWebAppTokenStorePath extends LinuxWebAppTokenStore {
  const LinuxWebAppTokenStorePath(this.tokenStorePath);

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

/// The [LinuxWebAppTokenStore.tokenStoreSasSettingName] choice: sets `token_store_sas_setting_name`.
final class LinuxWebAppTokenStoreSasSettingName extends LinuxWebAppTokenStore {
  const LinuxWebAppTokenStoreSasSettingName(this.tokenStoreSasSettingName);

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
extension type const LinuxWebAppCookieExpirationConvention._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppCookieExpirationConvention.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppCookieExpirationConvention.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppCookieExpirationConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const fixedtime = LinuxWebAppCookieExpirationConvention._(
    TfArgLiteral('FixedTime'),
  );
  static const identityproviderderived =
      LinuxWebAppCookieExpirationConvention._(
        TfArgLiteral('IdentityProviderDerived'),
      );

  static const List<LinuxWebAppCookieExpirationConvention> values = [
    fixedtime,
    identityproviderderived,
  ];
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

  final LinuxWebAppFrequencyUnit frequencyUnit;

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
extension type const LinuxWebAppFrequencyUnit._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppFrequencyUnit.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppFrequencyUnit.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppFrequencyUnit.arg(TfArg<String> arg) : this._(arg);

  static const day = LinuxWebAppFrequencyUnit._(TfArgLiteral('Day'));
  static const hour = LinuxWebAppFrequencyUnit._(TfArgLiteral('Hour'));

  static const List<LinuxWebAppFrequencyUnit> values = [day, hour];
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

  final LinuxWebAppConnectionStringType type;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LinuxWebAppConnectionStringType._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppConnectionStringType.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppConnectionStringType.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppConnectionStringType.arg(TfArg<String> arg) : this._(arg);

  static const apihub = LinuxWebAppConnectionStringType._(
    TfArgLiteral('ApiHub'),
  );
  static const custom = LinuxWebAppConnectionStringType._(
    TfArgLiteral('Custom'),
  );
  static const docdb = LinuxWebAppConnectionStringType._(TfArgLiteral('DocDb'));
  static const eventhub = LinuxWebAppConnectionStringType._(
    TfArgLiteral('EventHub'),
  );
  static const mysql = LinuxWebAppConnectionStringType._(TfArgLiteral('MySql'));
  static const notificationhub = LinuxWebAppConnectionStringType._(
    TfArgLiteral('NotificationHub'),
  );
  static const postgresql = LinuxWebAppConnectionStringType._(
    TfArgLiteral('PostgreSQL'),
  );
  static const rediscache = LinuxWebAppConnectionStringType._(
    TfArgLiteral('RedisCache'),
  );
  static const sqlazure = LinuxWebAppConnectionStringType._(
    TfArgLiteral('SQLAzure'),
  );
  static const sqlserver = LinuxWebAppConnectionStringType._(
    TfArgLiteral('SQLServer'),
  );
  static const servicebus = LinuxWebAppConnectionStringType._(
    TfArgLiteral('ServiceBus'),
  );

  static const List<LinuxWebAppConnectionStringType> values = [
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

  final LinuxWebAppFileSystemLevel fileSystemLevel;

  final LinuxWebAppApplicationLogsAzureBlobStorage? azureBlobStorage;

  @internal
  Map<String, Object?> encode() => {
    'file_system_level': fileSystemLevel.toTfJson(),
    'azure_blob_storage': ?azureBlobStorage?.encode(),
  };
}

/// `file_system_level` — derived from the provider schema description.
extension type const LinuxWebAppFileSystemLevel._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppFileSystemLevel.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppFileSystemLevel.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppFileSystemLevel.arg(TfArg<String> arg) : this._(arg);

  static const error = LinuxWebAppFileSystemLevel._(TfArgLiteral('Error'));
  static const information = LinuxWebAppFileSystemLevel._(
    TfArgLiteral('Information'),
  );
  static const off = LinuxWebAppFileSystemLevel._(TfArgLiteral('Off'));
  static const verbose = LinuxWebAppFileSystemLevel._(TfArgLiteral('Verbose'));
  static const warning = LinuxWebAppFileSystemLevel._(TfArgLiteral('Warning'));

  static const List<LinuxWebAppFileSystemLevel> values = [
    error,
    information,
    off,
    verbose,
    warning,
  ];
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

/// At most one of `azure_blob_storage`, `file_system` on the `logs.http_logs` block of `azurerm_linux_web_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.azureBlobStorage(...)`.
sealed class LinuxWebAppHttpLogs {
  const LinuxWebAppHttpLogs();

  /// Sets `azure_blob_storage`.
  const factory LinuxWebAppHttpLogs.azureBlobStorage(
    LinuxWebAppHttpLogsAzureBlobStorage azureBlobStorage,
  ) = LinuxWebAppHttpLogsAzureBlobStorageChoice;

  /// Sets `file_system`.
  const factory LinuxWebAppHttpLogs.fileSystem(
    LinuxWebAppFileSystem fileSystem,
  ) = LinuxWebAppHttpLogsFileSystem;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxWebAppHttpLogs.azureBlobStorage] choice: sets `azure_blob_storage`.
final class LinuxWebAppHttpLogsAzureBlobStorageChoice
    extends LinuxWebAppHttpLogs {
  const LinuxWebAppHttpLogsAzureBlobStorageChoice(this.azureBlobStorage);

  final LinuxWebAppHttpLogsAzureBlobStorage azureBlobStorage;

  @internal
  @override
  String get blockKey => 'azure_blob_storage';

  @internal
  @override
  Map<String, Object?> encode() => {
    'azure_blob_storage': azureBlobStorage.encode(),
  };
}

/// The [LinuxWebAppHttpLogs.fileSystem] choice: sets `file_system`.
final class LinuxWebAppHttpLogsFileSystem extends LinuxWebAppHttpLogs {
  const LinuxWebAppHttpLogsFileSystem(this.fileSystem);

  final LinuxWebAppFileSystem fileSystem;

  @internal
  @override
  String get blockKey => 'file_system';

  @internal
  @override
  Map<String, Object?> encode() => {'file_system': fileSystem.encode()};
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

  final LinuxWebAppFtpsState? ftpsState;

  final TfArg<num>? healthCheckEvictionTimeInMin;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final LinuxWebAppIpRestrictionDefaultAction? ipRestrictionDefaultAction;

  final LinuxWebAppLoadBalancingMode? loadBalancingMode;

  final TfArg<bool>? localMysqlEnabled;

  final LinuxWebAppManagedPipelineMode? managedPipelineMode;

  final LinuxWebAppMinimumTlsCipherSuite? minimumTlsCipherSuite;

  final LinuxWebAppMinimumTlsVersion? minimumTlsVersion;

  final TfArg<bool>? remoteDebuggingEnabled;

  final TfArg<String>? remoteDebuggingVersion;

  final LinuxWebAppScmIpRestrictionDefaultAction? scmIpRestrictionDefaultAction;

  final LinuxWebAppScmMinimumTlsVersion? scmMinimumTlsVersion;

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

/// `ftps_state` — derived from the provider schema description.
extension type const LinuxWebAppFtpsState._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppFtpsState.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppFtpsState.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppFtpsState.arg(TfArg<String> arg) : this._(arg);

  static const allallowed = LinuxWebAppFtpsState._(TfArgLiteral('AllAllowed'));
  static const disabled = LinuxWebAppFtpsState._(TfArgLiteral('Disabled'));
  static const ftpsonly = LinuxWebAppFtpsState._(TfArgLiteral('FtpsOnly'));

  static const List<LinuxWebAppFtpsState> values = [
    allallowed,
    disabled,
    ftpsonly,
  ];
}

/// `ip_restriction_default_action` — derived from the provider schema description.
extension type const LinuxWebAppIpRestrictionDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = LinuxWebAppIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = LinuxWebAppIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<LinuxWebAppIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `load_balancing_mode` — derived from the provider schema description.
extension type const LinuxWebAppLoadBalancingMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppLoadBalancingMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppLoadBalancingMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppLoadBalancingMode.arg(TfArg<String> arg) : this._(arg);

  static const leastrequests = LinuxWebAppLoadBalancingMode._(
    TfArgLiteral('LeastRequests'),
  );
  static const weightedroundrobin = LinuxWebAppLoadBalancingMode._(
    TfArgLiteral('WeightedRoundRobin'),
  );
  static const leastresponsetime = LinuxWebAppLoadBalancingMode._(
    TfArgLiteral('LeastResponseTime'),
  );
  static const weightedtotaltraffic = LinuxWebAppLoadBalancingMode._(
    TfArgLiteral('WeightedTotalTraffic'),
  );
  static const requesthash = LinuxWebAppLoadBalancingMode._(
    TfArgLiteral('RequestHash'),
  );
  static const persiteroundrobin = LinuxWebAppLoadBalancingMode._(
    TfArgLiteral('PerSiteRoundRobin'),
  );

  static const List<LinuxWebAppLoadBalancingMode> values = [
    leastrequests,
    weightedroundrobin,
    leastresponsetime,
    weightedtotaltraffic,
    requesthash,
    persiteroundrobin,
  ];
}

/// `managed_pipeline_mode` — derived from the provider schema description.
extension type const LinuxWebAppManagedPipelineMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppManagedPipelineMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppManagedPipelineMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppManagedPipelineMode.arg(TfArg<String> arg) : this._(arg);

  static const classic = LinuxWebAppManagedPipelineMode._(
    TfArgLiteral('Classic'),
  );
  static const integrated = LinuxWebAppManagedPipelineMode._(
    TfArgLiteral('Integrated'),
  );

  static const List<LinuxWebAppManagedPipelineMode> values = [
    classic,
    integrated,
  ];
}

/// `minimum_tls_cipher_suite` — derived from the provider schema description.
extension type const LinuxWebAppMinimumTlsCipherSuite._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppMinimumTlsCipherSuite.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppMinimumTlsCipherSuite.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppMinimumTlsCipherSuite.arg(TfArg<String> arg) : this._(arg);

  static const tlsAes128GcmSha256 = LinuxWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_128_GCM_SHA256'),
  );
  static const tlsAes256GcmSha384 = LinuxWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_256_GCM_SHA384'),
  );
  static const tlsEcdheEcdsaWithAes128CbcSha256 =
      LinuxWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes128GcmSha256 =
      LinuxWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes256GcmSha384 =
      LinuxWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsEcdheRsaWithAes128CbcSha = LinuxWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA'),
  );
  static const tlsEcdheRsaWithAes128CbcSha256 =
      LinuxWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheRsaWithAes128GcmSha256 =
      LinuxWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheRsaWithAes256CbcSha = LinuxWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA'),
  );
  static const tlsEcdheRsaWithAes256CbcSha384 =
      LinuxWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384'),
      );
  static const tlsEcdheRsaWithAes256GcmSha384 =
      LinuxWebAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsRsaWithAes128CbcSha = LinuxWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA'),
  );
  static const tlsRsaWithAes128CbcSha256 = LinuxWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA256'),
  );
  static const tlsRsaWithAes128GcmSha256 = LinuxWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_128_GCM_SHA256'),
  );
  static const tlsRsaWithAes256CbcSha = LinuxWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA'),
  );
  static const tlsRsaWithAes256CbcSha256 = LinuxWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA256'),
  );
  static const tlsRsaWithAes256GcmSha384 = LinuxWebAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_256_GCM_SHA384'),
  );

  static const List<LinuxWebAppMinimumTlsCipherSuite> values = [
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
extension type const LinuxWebAppMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppMinimumTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p1 = LinuxWebAppMinimumTlsVersion._(TfArgLiteral('1.1'));
  static const v1p3 = LinuxWebAppMinimumTlsVersion._(TfArgLiteral('1.3'));
  static const v1p2 = LinuxWebAppMinimumTlsVersion._(TfArgLiteral('1.2'));
  static const v1p0 = LinuxWebAppMinimumTlsVersion._(TfArgLiteral('1.0'));

  static const List<LinuxWebAppMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// `scm_ip_restriction_default_action` — derived from the provider schema description.
extension type const LinuxWebAppScmIpRestrictionDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppScmIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppScmIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppScmIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = LinuxWebAppScmIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = LinuxWebAppScmIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<LinuxWebAppScmIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `scm_minimum_tls_version` — derived from the provider schema description.
extension type const LinuxWebAppScmMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppScmMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppScmMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppScmMinimumTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p1 = LinuxWebAppScmMinimumTlsVersion._(TfArgLiteral('1.1'));
  static const v1p3 = LinuxWebAppScmMinimumTlsVersion._(TfArgLiteral('1.3'));
  static const v1p2 = LinuxWebAppScmMinimumTlsVersion._(TfArgLiteral('1.2'));
  static const v1p0 = LinuxWebAppScmMinimumTlsVersion._(TfArgLiteral('1.0'));

  static const List<LinuxWebAppScmMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
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

  final LinuxWebAppDotnetVersion? dotnetVersion;

  final LinuxWebAppGoVersion? goVersion;

  final LinuxWebAppJavaServer? javaServer;

  final TfArg<String>? javaServerVersion;

  final LinuxWebAppJavaVersion? javaVersion;

  final LinuxWebAppNodeVersion? nodeVersion;

  final LinuxWebAppPhpVersion? phpVersion;

  final LinuxWebAppPythonVersion? pythonVersion;

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
extension type const LinuxWebAppDotnetVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppDotnetVersion.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppDotnetVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppDotnetVersion.arg(TfArg<String> arg) : this._(arg);

  static const v3p1 = LinuxWebAppDotnetVersion._(TfArgLiteral('3.1'));
  static const v5p0 = LinuxWebAppDotnetVersion._(TfArgLiteral('5.0'));
  static const v6p0 = LinuxWebAppDotnetVersion._(TfArgLiteral('6.0'));
  static const v7p0 = LinuxWebAppDotnetVersion._(TfArgLiteral('7.0'));
  static const v8p0 = LinuxWebAppDotnetVersion._(TfArgLiteral('8.0'));
  static const v9p0 = LinuxWebAppDotnetVersion._(TfArgLiteral('9.0'));
  static const v10p0 = LinuxWebAppDotnetVersion._(TfArgLiteral('10.0'));

  static const List<LinuxWebAppDotnetVersion> values = [
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
extension type const LinuxWebAppGoVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppGoVersion.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppGoVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppGoVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p19 = LinuxWebAppGoVersion._(TfArgLiteral('1.19'));
  static const v1p18 = LinuxWebAppGoVersion._(TfArgLiteral('1.18'));

  static const List<LinuxWebAppGoVersion> values = [v1p19, v1p18];
}

/// `java_server` — derived from the provider schema description.
extension type const LinuxWebAppJavaServer._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppJavaServer.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppJavaServer.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppJavaServer.arg(TfArg<String> arg) : this._(arg);

  static const java = LinuxWebAppJavaServer._(TfArgLiteral('JAVA'));
  static const tomcat = LinuxWebAppJavaServer._(TfArgLiteral('TOMCAT'));
  static const jbosseap = LinuxWebAppJavaServer._(TfArgLiteral('JBOSSEAP'));

  static const List<LinuxWebAppJavaServer> values = [java, tomcat, jbosseap];
}

/// `java_version` — derived from the provider schema description.
extension type const LinuxWebAppJavaVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppJavaVersion.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppJavaVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppJavaVersion.arg(TfArg<String> arg) : this._(arg);

  static const v8 = LinuxWebAppJavaVersion._(TfArgLiteral('8'));
  static const v11 = LinuxWebAppJavaVersion._(TfArgLiteral('11'));
  static const v17 = LinuxWebAppJavaVersion._(TfArgLiteral('17'));
  static const v21 = LinuxWebAppJavaVersion._(TfArgLiteral('21'));
  static const v25 = LinuxWebAppJavaVersion._(TfArgLiteral('25'));

  static const List<LinuxWebAppJavaVersion> values = [v8, v11, v17, v21, v25];
}

/// `node_version` — derived from the provider schema description.
extension type const LinuxWebAppNodeVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppNodeVersion.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppNodeVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppNodeVersion.arg(TfArg<String> arg) : this._(arg);

  static const v12Lts = LinuxWebAppNodeVersion._(TfArgLiteral('12-lts'));
  static const v14Lts = LinuxWebAppNodeVersion._(TfArgLiteral('14-lts'));
  static const v16Lts = LinuxWebAppNodeVersion._(TfArgLiteral('16-lts'));
  static const v18Lts = LinuxWebAppNodeVersion._(TfArgLiteral('18-lts'));
  static const v20Lts = LinuxWebAppNodeVersion._(TfArgLiteral('20-lts'));
  static const v22Lts = LinuxWebAppNodeVersion._(TfArgLiteral('22-lts'));
  static const v24Lts = LinuxWebAppNodeVersion._(TfArgLiteral('24-lts'));

  static const List<LinuxWebAppNodeVersion> values = [
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
extension type const LinuxWebAppPhpVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppPhpVersion.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppPhpVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppPhpVersion.arg(TfArg<String> arg) : this._(arg);

  static const v7p4 = LinuxWebAppPhpVersion._(TfArgLiteral('7.4'));
  static const v8p0 = LinuxWebAppPhpVersion._(TfArgLiteral('8.0'));
  static const v8p1 = LinuxWebAppPhpVersion._(TfArgLiteral('8.1'));
  static const v8p2 = LinuxWebAppPhpVersion._(TfArgLiteral('8.2'));
  static const v8p3 = LinuxWebAppPhpVersion._(TfArgLiteral('8.3'));
  static const v8p4 = LinuxWebAppPhpVersion._(TfArgLiteral('8.4'));
  static const v8p5 = LinuxWebAppPhpVersion._(TfArgLiteral('8.5'));

  static const List<LinuxWebAppPhpVersion> values = [
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
extension type const LinuxWebAppPythonVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppPythonVersion.variable(String name) : this._(TfArg.variable(name));
  LinuxWebAppPythonVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppPythonVersion.arg(TfArg<String> arg) : this._(arg);

  static const v3p7 = LinuxWebAppPythonVersion._(TfArgLiteral('3.7'));
  static const v3p8 = LinuxWebAppPythonVersion._(TfArgLiteral('3.8'));
  static const v3p9 = LinuxWebAppPythonVersion._(TfArgLiteral('3.9'));
  static const v3p10 = LinuxWebAppPythonVersion._(TfArgLiteral('3.10'));
  static const v3p11 = LinuxWebAppPythonVersion._(TfArgLiteral('3.11'));
  static const v3p12 = LinuxWebAppPythonVersion._(TfArgLiteral('3.12'));
  static const v3p13 = LinuxWebAppPythonVersion._(TfArgLiteral('3.13'));
  static const v3p14 = LinuxWebAppPythonVersion._(TfArgLiteral('3.14'));

  static const List<LinuxWebAppPythonVersion> values = [
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

  final LinuxWebAppIpRestrictionAction? action;

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
extension type const LinuxWebAppIpRestrictionAction._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppIpRestrictionAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppIpRestrictionAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppIpRestrictionAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = LinuxWebAppIpRestrictionAction._(TfArgLiteral('Allow'));
  static const deny = LinuxWebAppIpRestrictionAction._(TfArgLiteral('Deny'));

  static const List<LinuxWebAppIpRestrictionAction> values = [allow, deny];
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

  final LinuxWebAppIpRestrictionAction? action;

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

  final LinuxWebAppStorageAccountType type;

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
extension type const LinuxWebAppStorageAccountType._(TfArg<String> _)
    implements TfArg<String> {
  LinuxWebAppStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  LinuxWebAppStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxWebAppStorageAccountType.arg(TfArg<String> arg) : this._(arg);

  static const azureblob = LinuxWebAppStorageAccountType._(
    TfArgLiteral('AzureBlob'),
  );
  static const azurefiles = LinuxWebAppStorageAccountType._(
    TfArgLiteral('AzureFiles'),
  );

  static const List<LinuxWebAppStorageAccountType> values = [
    azureblob,
    azurefiles,
  ];
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
