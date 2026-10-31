// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_linux_function_app`.
const Set<String> _azurermLinuxFunctionAppSensitive = <String>{
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

/// Linux Function App Client Certificate enum for `client_certificate_mode`.
extension type const LinuxFunctionAppClientCertificateMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppClientCertificateMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppClientCertificateMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppClientCertificateMode.arg(TfArg<String> arg)
    : this._(arg);

  static const optional = LinuxFunctionAppClientCertificateMode._(
    TfArgLiteral('Optional'),
  );
  static const optionalinteractiveuser =
      LinuxFunctionAppClientCertificateMode._(
        TfArgLiteral('OptionalInteractiveUser'),
      );
  static const required = LinuxFunctionAppClientCertificateMode._(
    TfArgLiteral('Required'),
  );

  static const List<LinuxFunctionAppClientCertificateMode> values = [
    optional,
    optionalinteractiveuser,
    required,
  ];
}

/// Exactly one of `storage_account_name`, `storage_key_vault_secret_id` on `azurerm_linux_function_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.storageAccountName(...)`.
sealed class LinuxFunctionAppStorage {
  const LinuxFunctionAppStorage();

  /// Sets `storage_account_name`.
  const factory LinuxFunctionAppStorage.storageAccountName(
    RefTo<AzurermStorageAccount> storageAccountName,
  ) = LinuxFunctionAppStorageAccountName;

  /// Sets `storage_key_vault_secret_id`.
  const factory LinuxFunctionAppStorage.storageKeyVaultSecretId(
    TfArg<String> storageKeyVaultSecretId,
  ) = LinuxFunctionAppStorageKeyVaultSecretId;

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

/// The [LinuxFunctionAppStorage.storageAccountName] choice: sets `storage_account_name`.
final class LinuxFunctionAppStorageAccountName extends LinuxFunctionAppStorage {
  const LinuxFunctionAppStorageAccountName(this.storageAccountName);

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

/// The [LinuxFunctionAppStorage.storageKeyVaultSecretId] choice: sets `storage_key_vault_secret_id`.
final class LinuxFunctionAppStorageKeyVaultSecretId
    extends LinuxFunctionAppStorage {
  const LinuxFunctionAppStorageKeyVaultSecretId(this.storageKeyVaultSecretId);

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

/// At most one of `storage_account_access_key`, `storage_uses_managed_identity` on `azurerm_linux_function_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.storageAccountAccessKey(...)`.
sealed class LinuxFunctionAppStorageAccess {
  const LinuxFunctionAppStorageAccess();

  /// Sets `storage_account_access_key`.
  const factory LinuxFunctionAppStorageAccess.storageAccountAccessKey(
    Sensitive<String> storageAccountAccessKey,
  ) = LinuxFunctionAppStorageAccessStorageAccountAccessKey;

  /// Sets `storage_uses_managed_identity`.
  const factory LinuxFunctionAppStorageAccess.storageUsesManagedIdentity(
    TfArg<bool> storageUsesManagedIdentity,
  ) = LinuxFunctionAppStorageAccessStorageUsesManagedIdentity;

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

/// The [LinuxFunctionAppStorageAccess.storageAccountAccessKey] choice: sets `storage_account_access_key`.
final class LinuxFunctionAppStorageAccessStorageAccountAccessKey
    extends LinuxFunctionAppStorageAccess {
  const LinuxFunctionAppStorageAccessStorageAccountAccessKey(
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

/// The [LinuxFunctionAppStorageAccess.storageUsesManagedIdentity] choice: sets `storage_uses_managed_identity`.
final class LinuxFunctionAppStorageAccessStorageUsesManagedIdentity
    extends LinuxFunctionAppStorageAccess {
  const LinuxFunctionAppStorageAccessStorageUsesManagedIdentity(
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppAuthSettings {
  const LinuxFunctionAppAuthSettings({
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

  final LinuxFunctionAppDefaultProvider? defaultProvider;

  final TfArg<bool> enabled;

  final TfArg<String>? issuer;

  final TfArg<String>? runtimeVersion;

  final TfArg<num>? tokenRefreshExtensionHours;

  final TfArg<bool>? tokenStoreEnabled;

  final LinuxFunctionAppUnauthenticatedClientAction?
  unauthenticatedClientAction;

  final LinuxFunctionAppActiveDirectory? activeDirectory;

  final LinuxFunctionAppFacebook? facebook;

  final LinuxFunctionAppGithub? github;

  final LinuxFunctionAppGoogle? google;

  final LinuxFunctionAppMicrosoft? microsoft;

  final LinuxFunctionAppTwitter? twitter;

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
extension type const LinuxFunctionAppDefaultProvider._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppDefaultProvider.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppDefaultProvider.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppDefaultProvider.arg(TfArg<String> arg) : this._(arg);

  static const azureactivedirectory = LinuxFunctionAppDefaultProvider._(
    TfArgLiteral('AzureActiveDirectory'),
  );
  static const facebook = LinuxFunctionAppDefaultProvider._(
    TfArgLiteral('Facebook'),
  );
  static const github = LinuxFunctionAppDefaultProvider._(
    TfArgLiteral('Github'),
  );
  static const google = LinuxFunctionAppDefaultProvider._(
    TfArgLiteral('Google'),
  );
  static const microsoftaccount = LinuxFunctionAppDefaultProvider._(
    TfArgLiteral('MicrosoftAccount'),
  );
  static const twitter = LinuxFunctionAppDefaultProvider._(
    TfArgLiteral('Twitter'),
  );

  static const List<LinuxFunctionAppDefaultProvider> values = [
    azureactivedirectory,
    facebook,
    github,
    google,
    microsoftaccount,
    twitter,
  ];
}

/// `unauthenticated_client_action` — derived from the provider schema description.
extension type const LinuxFunctionAppUnauthenticatedClientAction._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppUnauthenticatedClientAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppUnauthenticatedClientAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppUnauthenticatedClientAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowanonymous = LinuxFunctionAppUnauthenticatedClientAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const redirecttologinpage =
      LinuxFunctionAppUnauthenticatedClientAction._(
        TfArgLiteral('RedirectToLoginPage'),
      );

  static const List<LinuxFunctionAppUnauthenticatedClientAction> values = [
    allowanonymous,
    redirecttologinpage,
  ];
}

/// Typed helper for the `auth_settings.active_directory` block of
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppActiveDirectory {
  const LinuxFunctionAppActiveDirectory({
    this.allowedAudiences,
    required this.clientId,
    this.clientSecret,
  });

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<String> clientId;

  final LinuxFunctionAppActiveDirectoryClientSecret? clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'client_id': clientId.toTfJson(),
    ...?clientSecret?.encode(),
  };
}

/// At most one of `client_secret`, `client_secret_setting_name` on the `auth_settings.active_directory` block of `azurerm_linux_function_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxFunctionAppActiveDirectoryClientSecret {
  const LinuxFunctionAppActiveDirectoryClientSecret();

  /// Sets `client_secret`.
  const factory LinuxFunctionAppActiveDirectoryClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxFunctionAppActiveDirectoryClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxFunctionAppActiveDirectoryClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxFunctionAppActiveDirectoryClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppActiveDirectoryClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxFunctionAppActiveDirectoryClientSecretChoice
    extends LinuxFunctionAppActiveDirectoryClientSecret {
  const LinuxFunctionAppActiveDirectoryClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxFunctionAppActiveDirectoryClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxFunctionAppActiveDirectoryClientSecretSettingName
    extends LinuxFunctionAppActiveDirectoryClientSecret {
  const LinuxFunctionAppActiveDirectoryClientSecretSettingName(
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppFacebook {
  const LinuxFunctionAppFacebook({
    required this.appId,
    required this.appSecret,
    this.oauthScopes,
  });

  final TfArg<String> appId;

  final LinuxFunctionAppSecret appSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'app_id': appId.toTfJson(),
    ...appSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `app_secret`, `app_secret_setting_name` on the `auth_settings.facebook` block of `azurerm_linux_function_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.appSecret(...)`.
sealed class LinuxFunctionAppSecret {
  const LinuxFunctionAppSecret();

  /// Sets `app_secret`.
  const factory LinuxFunctionAppSecret.appSecret(Sensitive<String> appSecret) =
      LinuxFunctionAppSecretChoice;

  /// Sets `app_secret_setting_name`.
  const factory LinuxFunctionAppSecret.appSecretSettingName(
    TfArg<String> appSecretSettingName,
  ) = LinuxFunctionAppSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppSecret.appSecret] choice: sets `app_secret`.
final class LinuxFunctionAppSecretChoice extends LinuxFunctionAppSecret {
  const LinuxFunctionAppSecretChoice(this.appSecret);

  final Sensitive<String> appSecret;

  @internal
  @override
  String get blockKey => 'app_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'app_secret': appSecret.toTfJson()};
}

/// The [LinuxFunctionAppSecret.appSecretSettingName] choice: sets `app_secret_setting_name`.
final class LinuxFunctionAppSecretSettingName extends LinuxFunctionAppSecret {
  const LinuxFunctionAppSecretSettingName(this.appSecretSettingName);

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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppGithub {
  const LinuxFunctionAppGithub({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxFunctionAppGithubClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.github` block of `azurerm_linux_function_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxFunctionAppGithubClientSecret {
  const LinuxFunctionAppGithubClientSecret();

  /// Sets `client_secret`.
  const factory LinuxFunctionAppGithubClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxFunctionAppGithubClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxFunctionAppGithubClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxFunctionAppGithubClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppGithubClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxFunctionAppGithubClientSecretChoice
    extends LinuxFunctionAppGithubClientSecret {
  const LinuxFunctionAppGithubClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxFunctionAppGithubClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxFunctionAppGithubClientSecretSettingName
    extends LinuxFunctionAppGithubClientSecret {
  const LinuxFunctionAppGithubClientSecretSettingName(
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppGoogle {
  const LinuxFunctionAppGoogle({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxFunctionAppGoogleClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.google` block of `azurerm_linux_function_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxFunctionAppGoogleClientSecret {
  const LinuxFunctionAppGoogleClientSecret();

  /// Sets `client_secret`.
  const factory LinuxFunctionAppGoogleClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxFunctionAppGoogleClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxFunctionAppGoogleClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxFunctionAppGoogleClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppGoogleClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxFunctionAppGoogleClientSecretChoice
    extends LinuxFunctionAppGoogleClientSecret {
  const LinuxFunctionAppGoogleClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxFunctionAppGoogleClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxFunctionAppGoogleClientSecretSettingName
    extends LinuxFunctionAppGoogleClientSecret {
  const LinuxFunctionAppGoogleClientSecretSettingName(
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppMicrosoft {
  const LinuxFunctionAppMicrosoft({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxFunctionAppMicrosoftClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.microsoft` block of `azurerm_linux_function_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxFunctionAppMicrosoftClientSecret {
  const LinuxFunctionAppMicrosoftClientSecret();

  /// Sets `client_secret`.
  const factory LinuxFunctionAppMicrosoftClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxFunctionAppMicrosoftClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxFunctionAppMicrosoftClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxFunctionAppMicrosoftClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppMicrosoftClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxFunctionAppMicrosoftClientSecretChoice
    extends LinuxFunctionAppMicrosoftClientSecret {
  const LinuxFunctionAppMicrosoftClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxFunctionAppMicrosoftClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxFunctionAppMicrosoftClientSecretSettingName
    extends LinuxFunctionAppMicrosoftClientSecret {
  const LinuxFunctionAppMicrosoftClientSecretSettingName(
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppTwitter {
  const LinuxFunctionAppTwitter({
    required this.consumerKey,
    required this.consumerSecret,
  });

  final TfArg<String> consumerKey;

  final LinuxFunctionAppConsumerSecret consumerSecret;

  @internal
  Map<String, Object?> encode() => {
    'consumer_key': consumerKey.toTfJson(),
    ...consumerSecret.encode(),
  };
}

/// Exactly one of `consumer_secret`, `consumer_secret_setting_name` on the `auth_settings.twitter` block of `azurerm_linux_function_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.consumerSecret(...)`.
sealed class LinuxFunctionAppConsumerSecret {
  const LinuxFunctionAppConsumerSecret();

  /// Sets `consumer_secret`.
  const factory LinuxFunctionAppConsumerSecret.consumerSecret(
    Sensitive<String> consumerSecret,
  ) = LinuxFunctionAppConsumerSecretChoice;

  /// Sets `consumer_secret_setting_name`.
  const factory LinuxFunctionAppConsumerSecret.consumerSecretSettingName(
    TfArg<String> consumerSecretSettingName,
  ) = LinuxFunctionAppConsumerSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppConsumerSecret.consumerSecret] choice: sets `consumer_secret`.
final class LinuxFunctionAppConsumerSecretChoice
    extends LinuxFunctionAppConsumerSecret {
  const LinuxFunctionAppConsumerSecretChoice(this.consumerSecret);

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

/// The [LinuxFunctionAppConsumerSecret.consumerSecretSettingName] choice: sets `consumer_secret_setting_name`.
final class LinuxFunctionAppConsumerSecretSettingName
    extends LinuxFunctionAppConsumerSecret {
  const LinuxFunctionAppConsumerSecretSettingName(
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppAuthSettingsV2 {
  const LinuxFunctionAppAuthSettingsV2({
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

  final LinuxFunctionAppForwardProxyConvention? forwardProxyConvention;

  final TfArg<String>? forwardProxyCustomHostHeaderName;

  final TfArg<String>? forwardProxyCustomSchemeHeaderName;

  final TfArg<String>? httpRouteApiPrefix;

  final TfArg<bool>? requireAuthentication;

  final TfArg<bool>? requireHttps;

  final TfArg<String>? runtimeVersion;

  final LinuxFunctionAppUnauthenticatedAction? unauthenticatedAction;

  final LinuxFunctionAppActiveDirectoryV2? activeDirectoryV2;

  final LinuxFunctionAppAppleV2? appleV2;

  final LinuxFunctionAppAzureStaticWebAppV2? azureStaticWebAppV2;

  final List<LinuxFunctionAppCustomOidcV2>? customOidcV2;

  final LinuxFunctionAppFacebookV2? facebookV2;

  final LinuxFunctionAppGithubV2? githubV2;

  final LinuxFunctionAppGoogleV2? googleV2;

  final LinuxFunctionAppLogin login;

  final LinuxFunctionAppMicrosoftV2? microsoftV2;

  final LinuxFunctionAppTwitterV2? twitterV2;

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
extension type const LinuxFunctionAppForwardProxyConvention._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppForwardProxyConvention.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppForwardProxyConvention.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppForwardProxyConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = LinuxFunctionAppForwardProxyConvention._(
    TfArgLiteral('Custom'),
  );
  static const noproxy = LinuxFunctionAppForwardProxyConvention._(
    TfArgLiteral('NoProxy'),
  );
  static const standard = LinuxFunctionAppForwardProxyConvention._(
    TfArgLiteral('Standard'),
  );

  static const List<LinuxFunctionAppForwardProxyConvention> values = [
    custom,
    noproxy,
    standard,
  ];
}

/// `unauthenticated_action` — derived from the provider schema description.
extension type const LinuxFunctionAppUnauthenticatedAction._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppUnauthenticatedAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppUnauthenticatedAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppUnauthenticatedAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowanonymous = LinuxFunctionAppUnauthenticatedAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const redirecttologinpage = LinuxFunctionAppUnauthenticatedAction._(
    TfArgLiteral('RedirectToLoginPage'),
  );
  static const return401 = LinuxFunctionAppUnauthenticatedAction._(
    TfArgLiteral('Return401'),
  );
  static const return403 = LinuxFunctionAppUnauthenticatedAction._(
    TfArgLiteral('Return403'),
  );

  static const List<LinuxFunctionAppUnauthenticatedAction> values = [
    allowanonymous,
    redirecttologinpage,
    return401,
    return403,
  ];
}

/// Typed helper for the `auth_settings_v2.active_directory_v2` block of
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppActiveDirectoryV2 {
  const LinuxFunctionAppActiveDirectoryV2({
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

  final LinuxFunctionAppClientCredential? clientCredential;

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

/// At most one of `client_secret_certificate_thumbprint`, `client_secret_setting_name` on the `auth_settings_v2.active_directory_v2` block of `azurerm_linux_function_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecretCertificateThumbprint(...)`.
sealed class LinuxFunctionAppClientCredential {
  const LinuxFunctionAppClientCredential();

  /// Sets `client_secret_certificate_thumbprint`.
  const factory LinuxFunctionAppClientCredential.clientSecretCertificateThumbprint(
    TfArg<String> clientSecretCertificateThumbprint,
  ) = LinuxFunctionAppClientCredentialClientSecretCertificateThumbprint;

  /// Sets `client_secret_setting_name`.
  const factory LinuxFunctionAppClientCredential.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxFunctionAppClientCredentialClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppClientCredential.clientSecretCertificateThumbprint] choice: sets `client_secret_certificate_thumbprint`.
final class LinuxFunctionAppClientCredentialClientSecretCertificateThumbprint
    extends LinuxFunctionAppClientCredential {
  const LinuxFunctionAppClientCredentialClientSecretCertificateThumbprint(
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

/// The [LinuxFunctionAppClientCredential.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxFunctionAppClientCredentialClientSecretSettingName
    extends LinuxFunctionAppClientCredential {
  const LinuxFunctionAppClientCredentialClientSecretSettingName(
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppAppleV2 {
  const LinuxFunctionAppAppleV2({
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppAzureStaticWebAppV2 {
  const LinuxFunctionAppAzureStaticWebAppV2({required this.clientId});

  final TfArg<String> clientId;

  @internal
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// Typed helper for the `auth_settings_v2.custom_oidc_v2` block of
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppCustomOidcV2 {
  const LinuxFunctionAppCustomOidcV2({
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppFacebookV2 {
  const LinuxFunctionAppFacebookV2({
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppGithubV2 {
  const LinuxFunctionAppGithubV2({
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppGoogleV2 {
  const LinuxFunctionAppGoogleV2({
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppLogin {
  const LinuxFunctionAppLogin({
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

  final LinuxFunctionAppCookieExpirationConvention? cookieExpirationConvention;

  final TfArg<String>? cookieExpirationTime;

  final TfArg<String>? logoutEndpoint;

  final TfArg<String>? nonceExpirationTime;

  final TfArg<bool>? preserveUrlFragmentsForLogins;

  final TfArg<num>? tokenRefreshExtensionTime;

  final TfArg<bool>? tokenStoreEnabled;

  final LinuxFunctionAppTokenStore? tokenStore;

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

/// At most one of `token_store_path`, `token_store_sas_setting_name` on the `auth_settings_v2.login` block of `azurerm_linux_function_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.tokenStorePath(...)`.
sealed class LinuxFunctionAppTokenStore {
  const LinuxFunctionAppTokenStore();

  /// Sets `token_store_path`.
  const factory LinuxFunctionAppTokenStore.tokenStorePath(
    TfArg<String> tokenStorePath,
  ) = LinuxFunctionAppTokenStorePath;

  /// Sets `token_store_sas_setting_name`.
  const factory LinuxFunctionAppTokenStore.tokenStoreSasSettingName(
    TfArg<String> tokenStoreSasSettingName,
  ) = LinuxFunctionAppTokenStoreSasSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppTokenStore.tokenStorePath] choice: sets `token_store_path`.
final class LinuxFunctionAppTokenStorePath extends LinuxFunctionAppTokenStore {
  const LinuxFunctionAppTokenStorePath(this.tokenStorePath);

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

/// The [LinuxFunctionAppTokenStore.tokenStoreSasSettingName] choice: sets `token_store_sas_setting_name`.
final class LinuxFunctionAppTokenStoreSasSettingName
    extends LinuxFunctionAppTokenStore {
  const LinuxFunctionAppTokenStoreSasSettingName(this.tokenStoreSasSettingName);

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
extension type const LinuxFunctionAppCookieExpirationConvention._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppCookieExpirationConvention.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppCookieExpirationConvention.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppCookieExpirationConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const fixedtime = LinuxFunctionAppCookieExpirationConvention._(
    TfArgLiteral('FixedTime'),
  );
  static const identityproviderderived =
      LinuxFunctionAppCookieExpirationConvention._(
        TfArgLiteral('IdentityProviderDerived'),
      );

  static const List<LinuxFunctionAppCookieExpirationConvention> values = [
    fixedtime,
    identityproviderderived,
  ];
}

/// Typed helper for the `auth_settings_v2.microsoft_v2` block of
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppMicrosoftV2 {
  const LinuxFunctionAppMicrosoftV2({
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppTwitterV2 {
  const LinuxFunctionAppTwitterV2({
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppBackup {
  const LinuxFunctionAppBackup({
    this.enabled,
    required this.name,
    required this.storageAccountUrl,
    required this.schedule,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final Sensitive<String> storageAccountUrl;

  final LinuxFunctionAppSchedule schedule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'storage_account_url': storageAccountUrl.toTfJson(),
    'schedule': schedule.encode(),
  };
}

/// Typed helper for the `backup.schedule` block of
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppSchedule {
  const LinuxFunctionAppSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    this.keepAtLeastOneBackup,
    this.retentionPeriodDays,
    this.startTime,
  });

  final TfArg<num> frequencyInterval;

  final LinuxFunctionAppFrequencyUnit frequencyUnit;

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
extension type const LinuxFunctionAppFrequencyUnit._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppFrequencyUnit.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppFrequencyUnit.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppFrequencyUnit.arg(TfArg<String> arg) : this._(arg);

  static const day = LinuxFunctionAppFrequencyUnit._(TfArgLiteral('Day'));
  static const hour = LinuxFunctionAppFrequencyUnit._(TfArgLiteral('Hour'));

  static const List<LinuxFunctionAppFrequencyUnit> values = [day, hour];
}

/// Typed helper for the `connection_string` block of
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppConnectionString {
  const LinuxFunctionAppConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final LinuxFunctionAppConnectionStringType type;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LinuxFunctionAppConnectionStringType._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppConnectionStringType.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppConnectionStringType.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppConnectionStringType.arg(TfArg<String> arg)
    : this._(arg);

  static const apihub = LinuxFunctionAppConnectionStringType._(
    TfArgLiteral('ApiHub'),
  );
  static const custom = LinuxFunctionAppConnectionStringType._(
    TfArgLiteral('Custom'),
  );
  static const docdb = LinuxFunctionAppConnectionStringType._(
    TfArgLiteral('DocDb'),
  );
  static const eventhub = LinuxFunctionAppConnectionStringType._(
    TfArgLiteral('EventHub'),
  );
  static const mysql = LinuxFunctionAppConnectionStringType._(
    TfArgLiteral('MySql'),
  );
  static const notificationhub = LinuxFunctionAppConnectionStringType._(
    TfArgLiteral('NotificationHub'),
  );
  static const postgresql = LinuxFunctionAppConnectionStringType._(
    TfArgLiteral('PostgreSQL'),
  );
  static const rediscache = LinuxFunctionAppConnectionStringType._(
    TfArgLiteral('RedisCache'),
  );
  static const sqlazure = LinuxFunctionAppConnectionStringType._(
    TfArgLiteral('SQLAzure'),
  );
  static const sqlserver = LinuxFunctionAppConnectionStringType._(
    TfArgLiteral('SQLServer'),
  );
  static const servicebus = LinuxFunctionAppConnectionStringType._(
    TfArgLiteral('ServiceBus'),
  );

  static const List<LinuxFunctionAppConnectionStringType> values = [
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppIdentity {
  const LinuxFunctionAppIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `site_config` block of
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppSiteConfig {
  const LinuxFunctionAppSiteConfig({
    this.alwaysOn,
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.appScaleLimit,
    this.applicationInsightsConnectionString,
    this.applicationInsightsKey,
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

  final TfArg<String>? containerRegistryManagedIdentityClientId;

  final TfArg<bool>? containerRegistryUseManagedIdentity;

  final TfArg<List<String>>? defaultDocuments;

  final TfArg<num>? elasticInstanceMinimum;

  final LinuxFunctionAppFtpsState? ftpsState;

  final TfArg<num>? healthCheckEvictionTimeInMin;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final LinuxFunctionAppIpRestrictionDefaultAction? ipRestrictionDefaultAction;

  final LinuxFunctionAppLoadBalancingMode? loadBalancingMode;

  final LinuxFunctionAppManagedPipelineMode? managedPipelineMode;

  final LinuxFunctionAppMinimumTlsCipherSuite? minimumTlsCipherSuite;

  final LinuxFunctionAppMinimumTlsVersion? minimumTlsVersion;

  final TfArg<num>? preWarmedInstanceCount;

  final TfArg<bool>? remoteDebuggingEnabled;

  final LinuxFunctionAppRemoteDebuggingVersion? remoteDebuggingVersion;

  final TfArg<bool>? runtimeScaleMonitoringEnabled;

  final LinuxFunctionAppScmIpRestrictionDefaultAction?
  scmIpRestrictionDefaultAction;

  final LinuxFunctionAppScmMinimumTlsVersion? scmMinimumTlsVersion;

  final TfArg<bool>? scmUseMainIpRestriction;

  final TfArg<bool>? use32BitWorker;

  final TfArg<bool>? vnetRouteAllEnabled;

  final TfArg<bool>? websocketsEnabled;

  final TfArg<num>? workerCount;

  final LinuxFunctionAppServiceLogs? appServiceLogs;

  final LinuxFunctionAppApplicationStack? applicationStack;

  final LinuxFunctionAppCors? cors;

  final List<LinuxFunctionAppIpRestriction>? ipRestriction;

  final List<LinuxFunctionAppScmIpRestriction>? scmIpRestriction;

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

/// `ftps_state` — derived from the provider schema description.
extension type const LinuxFunctionAppFtpsState._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppFtpsState.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppFtpsState.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppFtpsState.arg(TfArg<String> arg) : this._(arg);

  static const allallowed = LinuxFunctionAppFtpsState._(
    TfArgLiteral('AllAllowed'),
  );
  static const disabled = LinuxFunctionAppFtpsState._(TfArgLiteral('Disabled'));
  static const ftpsonly = LinuxFunctionAppFtpsState._(TfArgLiteral('FtpsOnly'));

  static const List<LinuxFunctionAppFtpsState> values = [
    allallowed,
    disabled,
    ftpsonly,
  ];
}

/// `ip_restriction_default_action` — derived from the provider schema description.
extension type const LinuxFunctionAppIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = LinuxFunctionAppIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = LinuxFunctionAppIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<LinuxFunctionAppIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `load_balancing_mode` — derived from the provider schema description.
extension type const LinuxFunctionAppLoadBalancingMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppLoadBalancingMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppLoadBalancingMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppLoadBalancingMode.arg(TfArg<String> arg) : this._(arg);

  static const leastrequests = LinuxFunctionAppLoadBalancingMode._(
    TfArgLiteral('LeastRequests'),
  );
  static const weightedroundrobin = LinuxFunctionAppLoadBalancingMode._(
    TfArgLiteral('WeightedRoundRobin'),
  );
  static const leastresponsetime = LinuxFunctionAppLoadBalancingMode._(
    TfArgLiteral('LeastResponseTime'),
  );
  static const weightedtotaltraffic = LinuxFunctionAppLoadBalancingMode._(
    TfArgLiteral('WeightedTotalTraffic'),
  );
  static const requesthash = LinuxFunctionAppLoadBalancingMode._(
    TfArgLiteral('RequestHash'),
  );
  static const persiteroundrobin = LinuxFunctionAppLoadBalancingMode._(
    TfArgLiteral('PerSiteRoundRobin'),
  );

  static const List<LinuxFunctionAppLoadBalancingMode> values = [
    leastrequests,
    weightedroundrobin,
    leastresponsetime,
    weightedtotaltraffic,
    requesthash,
    persiteroundrobin,
  ];
}

/// `managed_pipeline_mode` — derived from the provider schema description.
extension type const LinuxFunctionAppManagedPipelineMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppManagedPipelineMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppManagedPipelineMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppManagedPipelineMode.arg(TfArg<String> arg)
    : this._(arg);

  static const classic = LinuxFunctionAppManagedPipelineMode._(
    TfArgLiteral('Classic'),
  );
  static const integrated = LinuxFunctionAppManagedPipelineMode._(
    TfArgLiteral('Integrated'),
  );

  static const List<LinuxFunctionAppManagedPipelineMode> values = [
    classic,
    integrated,
  ];
}

/// `minimum_tls_cipher_suite` — derived from the provider schema description.
extension type const LinuxFunctionAppMinimumTlsCipherSuite._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppMinimumTlsCipherSuite.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppMinimumTlsCipherSuite.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppMinimumTlsCipherSuite.arg(TfArg<String> arg)
    : this._(arg);

  static const tlsAes128GcmSha256 = LinuxFunctionAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_128_GCM_SHA256'),
  );
  static const tlsAes256GcmSha384 = LinuxFunctionAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_256_GCM_SHA384'),
  );
  static const tlsEcdheEcdsaWithAes128CbcSha256 =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes128GcmSha256 =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes256GcmSha384 =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsEcdheRsaWithAes128CbcSha =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA'),
      );
  static const tlsEcdheRsaWithAes128CbcSha256 =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheRsaWithAes128GcmSha256 =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheRsaWithAes256CbcSha =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA'),
      );
  static const tlsEcdheRsaWithAes256CbcSha384 =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384'),
      );
  static const tlsEcdheRsaWithAes256GcmSha384 =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsRsaWithAes128CbcSha = LinuxFunctionAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA'),
  );
  static const tlsRsaWithAes128CbcSha256 =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsRsaWithAes128GcmSha256 =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsRsaWithAes256CbcSha = LinuxFunctionAppMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA'),
  );
  static const tlsRsaWithAes256CbcSha256 =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA256'),
      );
  static const tlsRsaWithAes256GcmSha384 =
      LinuxFunctionAppMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_256_GCM_SHA384'),
      );

  static const List<LinuxFunctionAppMinimumTlsCipherSuite> values = [
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
extension type const LinuxFunctionAppMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppMinimumTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p1 = LinuxFunctionAppMinimumTlsVersion._(TfArgLiteral('1.1'));
  static const v1p3 = LinuxFunctionAppMinimumTlsVersion._(TfArgLiteral('1.3'));
  static const v1p2 = LinuxFunctionAppMinimumTlsVersion._(TfArgLiteral('1.2'));
  static const v1p0 = LinuxFunctionAppMinimumTlsVersion._(TfArgLiteral('1.0'));

  static const List<LinuxFunctionAppMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// `remote_debugging_version` — derived from the provider schema description.
extension type const LinuxFunctionAppRemoteDebuggingVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppRemoteDebuggingVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppRemoteDebuggingVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppRemoteDebuggingVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const vs2022 = LinuxFunctionAppRemoteDebuggingVersion._(
    TfArgLiteral('VS2022'),
  );

  static const List<LinuxFunctionAppRemoteDebuggingVersion> values = [vs2022];
}

/// `scm_ip_restriction_default_action` — derived from the provider schema description.
extension type const LinuxFunctionAppScmIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppScmIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppScmIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppScmIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = LinuxFunctionAppScmIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = LinuxFunctionAppScmIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<LinuxFunctionAppScmIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `scm_minimum_tls_version` — derived from the provider schema description.
extension type const LinuxFunctionAppScmMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppScmMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppScmMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppScmMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p1 = LinuxFunctionAppScmMinimumTlsVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p3 = LinuxFunctionAppScmMinimumTlsVersion._(
    TfArgLiteral('1.3'),
  );
  static const v1p2 = LinuxFunctionAppScmMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p0 = LinuxFunctionAppScmMinimumTlsVersion._(
    TfArgLiteral('1.0'),
  );

  static const List<LinuxFunctionAppScmMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// Typed helper for the `site_config.app_service_logs` block of
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppServiceLogs {
  const LinuxFunctionAppServiceLogs({
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppApplicationStack {
  const LinuxFunctionAppApplicationStack({
    required this.runtime,
    this.useDotnetIsolatedRuntime,
  });

  final LinuxFunctionAppRuntime runtime;

  final TfArg<bool>? useDotnetIsolatedRuntime;

  @internal
  Map<String, Object?> encode() => {
    ...runtime.encode(),
    'use_dotnet_isolated_runtime': ?useDotnetIsolatedRuntime?.toTfJson(),
  };
}

/// Exactly one of `docker`, `dotnet_version`, `java_version`, `node_version`, `powershell_core_version`, `python_version`, `use_custom_runtime` on the `site_config.application_stack` block of `azurerm_linux_function_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.docker(...)`.
sealed class LinuxFunctionAppRuntime {
  const LinuxFunctionAppRuntime();

  /// Sets `docker`.
  const factory LinuxFunctionAppRuntime.docker(
    List<LinuxFunctionAppDocker> docker,
  ) = LinuxFunctionAppRuntimeDocker;

  /// Sets `dotnet_version`.
  const factory LinuxFunctionAppRuntime.dotnetVersion(
    LinuxFunctionAppDotnetVersion dotnetVersion,
  ) = LinuxFunctionAppRuntimeDotnetVersion;

  /// Sets `java_version`.
  const factory LinuxFunctionAppRuntime.javaVersion(
    LinuxFunctionAppJavaVersion javaVersion,
  ) = LinuxFunctionAppRuntimeJavaVersion;

  /// Sets `node_version`.
  const factory LinuxFunctionAppRuntime.nodeVersion(
    LinuxFunctionAppNodeVersion nodeVersion,
  ) = LinuxFunctionAppRuntimeNodeVersion;

  /// Sets `powershell_core_version`.
  const factory LinuxFunctionAppRuntime.powershellCoreVersion(
    LinuxFunctionAppPowershellCoreVersion powershellCoreVersion,
  ) = LinuxFunctionAppRuntimePowershellCoreVersion;

  /// Sets `python_version`.
  const factory LinuxFunctionAppRuntime.pythonVersion(
    LinuxFunctionAppPythonVersion pythonVersion,
  ) = LinuxFunctionAppRuntimePythonVersion;

  /// Sets `use_custom_runtime`.
  const factory LinuxFunctionAppRuntime.useCustomRuntime(
    TfArg<bool> useCustomRuntime,
  ) = LinuxFunctionAppUseCustomRuntime;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppRuntime.docker] choice: sets `docker`.
final class LinuxFunctionAppRuntimeDocker extends LinuxFunctionAppRuntime {
  const LinuxFunctionAppRuntimeDocker(this.docker);

  final List<LinuxFunctionAppDocker> docker;

  @internal
  @override
  String get blockKey => 'docker';

  @internal
  @override
  Map<String, Object?> encode() => {
    'docker': [for (final e in docker) e.encode()],
  };
}

/// The [LinuxFunctionAppRuntime.dotnetVersion] choice: sets `dotnet_version`.
final class LinuxFunctionAppRuntimeDotnetVersion
    extends LinuxFunctionAppRuntime {
  const LinuxFunctionAppRuntimeDotnetVersion(this.dotnetVersion);

  final LinuxFunctionAppDotnetVersion dotnetVersion;

  @internal
  @override
  String get blockKey => 'dotnet_version';

  @internal
  @override
  Map<String, Object?> encode() => {'dotnet_version': dotnetVersion.toTfJson()};
}

/// The [LinuxFunctionAppRuntime.javaVersion] choice: sets `java_version`.
final class LinuxFunctionAppRuntimeJavaVersion extends LinuxFunctionAppRuntime {
  const LinuxFunctionAppRuntimeJavaVersion(this.javaVersion);

  final LinuxFunctionAppJavaVersion javaVersion;

  @internal
  @override
  String get blockKey => 'java_version';

  @internal
  @override
  Map<String, Object?> encode() => {'java_version': javaVersion.toTfJson()};
}

/// The [LinuxFunctionAppRuntime.nodeVersion] choice: sets `node_version`.
final class LinuxFunctionAppRuntimeNodeVersion extends LinuxFunctionAppRuntime {
  const LinuxFunctionAppRuntimeNodeVersion(this.nodeVersion);

  final LinuxFunctionAppNodeVersion nodeVersion;

  @internal
  @override
  String get blockKey => 'node_version';

  @internal
  @override
  Map<String, Object?> encode() => {'node_version': nodeVersion.toTfJson()};
}

/// The [LinuxFunctionAppRuntime.powershellCoreVersion] choice: sets `powershell_core_version`.
final class LinuxFunctionAppRuntimePowershellCoreVersion
    extends LinuxFunctionAppRuntime {
  const LinuxFunctionAppRuntimePowershellCoreVersion(
    this.powershellCoreVersion,
  );

  final LinuxFunctionAppPowershellCoreVersion powershellCoreVersion;

  @internal
  @override
  String get blockKey => 'powershell_core_version';

  @internal
  @override
  Map<String, Object?> encode() => {
    'powershell_core_version': powershellCoreVersion.toTfJson(),
  };
}

/// The [LinuxFunctionAppRuntime.pythonVersion] choice: sets `python_version`.
final class LinuxFunctionAppRuntimePythonVersion
    extends LinuxFunctionAppRuntime {
  const LinuxFunctionAppRuntimePythonVersion(this.pythonVersion);

  final LinuxFunctionAppPythonVersion pythonVersion;

  @internal
  @override
  String get blockKey => 'python_version';

  @internal
  @override
  Map<String, Object?> encode() => {'python_version': pythonVersion.toTfJson()};
}

/// The [LinuxFunctionAppRuntime.useCustomRuntime] choice: sets `use_custom_runtime`.
final class LinuxFunctionAppUseCustomRuntime extends LinuxFunctionAppRuntime {
  const LinuxFunctionAppUseCustomRuntime(this.useCustomRuntime);

  final TfArg<bool> useCustomRuntime;

  @internal
  @override
  String get blockKey => 'use_custom_runtime';

  @internal
  @override
  Map<String, Object?> encode() => {
    'use_custom_runtime': useCustomRuntime.toTfJson(),
  };
}

/// `dotnet_version` — derived from the provider schema description.
extension type const LinuxFunctionAppDotnetVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppDotnetVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppDotnetVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppDotnetVersion.arg(TfArg<String> arg) : this._(arg);

  static const v3p1 = LinuxFunctionAppDotnetVersion._(TfArgLiteral('3.1'));
  static const v6p0 = LinuxFunctionAppDotnetVersion._(TfArgLiteral('6.0'));
  static const v7p0 = LinuxFunctionAppDotnetVersion._(TfArgLiteral('7.0'));
  static const v8p0 = LinuxFunctionAppDotnetVersion._(TfArgLiteral('8.0'));
  static const v9p0 = LinuxFunctionAppDotnetVersion._(TfArgLiteral('9.0'));
  static const v10p0 = LinuxFunctionAppDotnetVersion._(TfArgLiteral('10.0'));

  static const List<LinuxFunctionAppDotnetVersion> values = [
    v3p1,
    v6p0,
    v7p0,
    v8p0,
    v9p0,
    v10p0,
  ];
}

/// `java_version` — derived from the provider schema description.
extension type const LinuxFunctionAppJavaVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppJavaVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppJavaVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppJavaVersion.arg(TfArg<String> arg) : this._(arg);

  static const v8 = LinuxFunctionAppJavaVersion._(TfArgLiteral('8'));
  static const v11 = LinuxFunctionAppJavaVersion._(TfArgLiteral('11'));
  static const v17 = LinuxFunctionAppJavaVersion._(TfArgLiteral('17'));
  static const v21 = LinuxFunctionAppJavaVersion._(TfArgLiteral('21'));
  static const v25 = LinuxFunctionAppJavaVersion._(TfArgLiteral('25'));

  static const List<LinuxFunctionAppJavaVersion> values = [
    v8,
    v11,
    v17,
    v21,
    v25,
  ];
}

/// `node_version` — derived from the provider schema description.
extension type const LinuxFunctionAppNodeVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppNodeVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppNodeVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppNodeVersion.arg(TfArg<String> arg) : this._(arg);

  static const v12 = LinuxFunctionAppNodeVersion._(TfArgLiteral('12'));
  static const v14 = LinuxFunctionAppNodeVersion._(TfArgLiteral('14'));
  static const v16 = LinuxFunctionAppNodeVersion._(TfArgLiteral('16'));
  static const v18 = LinuxFunctionAppNodeVersion._(TfArgLiteral('18'));
  static const v20 = LinuxFunctionAppNodeVersion._(TfArgLiteral('20'));
  static const v22 = LinuxFunctionAppNodeVersion._(TfArgLiteral('22'));
  static const v24 = LinuxFunctionAppNodeVersion._(TfArgLiteral('24'));

  static const List<LinuxFunctionAppNodeVersion> values = [
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
extension type const LinuxFunctionAppPowershellCoreVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppPowershellCoreVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppPowershellCoreVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppPowershellCoreVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v7 = LinuxFunctionAppPowershellCoreVersion._(TfArgLiteral('7'));
  static const v7p2 = LinuxFunctionAppPowershellCoreVersion._(
    TfArgLiteral('7.2'),
  );
  static const v7p4 = LinuxFunctionAppPowershellCoreVersion._(
    TfArgLiteral('7.4'),
  );
  static const v7p6 = LinuxFunctionAppPowershellCoreVersion._(
    TfArgLiteral('7.6'),
  );

  static const List<LinuxFunctionAppPowershellCoreVersion> values = [
    v7,
    v7p2,
    v7p4,
    v7p6,
  ];
}

/// `python_version` — derived from the provider schema description.
extension type const LinuxFunctionAppPythonVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppPythonVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppPythonVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppPythonVersion.arg(TfArg<String> arg) : this._(arg);

  static const v3p14 = LinuxFunctionAppPythonVersion._(TfArgLiteral('3.14'));
  static const v3p13 = LinuxFunctionAppPythonVersion._(TfArgLiteral('3.13'));
  static const v3p12 = LinuxFunctionAppPythonVersion._(TfArgLiteral('3.12'));
  static const v3p11 = LinuxFunctionAppPythonVersion._(TfArgLiteral('3.11'));
  static const v3p10 = LinuxFunctionAppPythonVersion._(TfArgLiteral('3.10'));
  static const v3p9 = LinuxFunctionAppPythonVersion._(TfArgLiteral('3.9'));
  static const v3p8 = LinuxFunctionAppPythonVersion._(TfArgLiteral('3.8'));
  static const v3p7 = LinuxFunctionAppPythonVersion._(TfArgLiteral('3.7'));

  static const List<LinuxFunctionAppPythonVersion> values = [
    v3p14,
    v3p13,
    v3p12,
    v3p11,
    v3p10,
    v3p9,
    v3p8,
    v3p7,
  ];
}

/// Typed helper for the `site_config.application_stack.docker` block of
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppDocker {
  const LinuxFunctionAppDocker({
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppCors {
  const LinuxFunctionAppCors({this.allowedOrigins, this.supportCredentials});

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? supportCredentials;

  @internal
  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'support_credentials': ?supportCredentials?.toTfJson(),
  };
}

/// Typed helper for the `site_config.ip_restriction` block of
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppIpRestriction {
  const LinuxFunctionAppIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final LinuxFunctionAppAction? action;

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
extension type const LinuxFunctionAppAction._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppAction.variable(String name) : this._(TfArg.variable(name));
  LinuxFunctionAppAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = LinuxFunctionAppAction._(TfArgLiteral('Allow'));
  static const deny = LinuxFunctionAppAction._(TfArgLiteral('Deny'));

  static const List<LinuxFunctionAppAction> values = [allow, deny];
}

/// Typed helper for the `site_config.scm_ip_restriction` block of
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppScmIpRestriction {
  const LinuxFunctionAppScmIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final LinuxFunctionAppAction? action;

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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppStickySettings {
  const LinuxFunctionAppStickySettings({
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
/// `azurerm_linux_function_app` (derived from provider schema).
@immutable
final class LinuxFunctionAppStorageAccount {
  const LinuxFunctionAppStorageAccount({
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

  final LinuxFunctionAppStorageAccountType type;

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
extension type const LinuxFunctionAppStorageAccountType._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppStorageAccountType.arg(TfArg<String> arg) : this._(arg);

  static const azureblob = LinuxFunctionAppStorageAccountType._(
    TfArgLiteral('AzureBlob'),
  );
  static const azurefiles = LinuxFunctionAppStorageAccountType._(
    TfArgLiteral('AzureFiles'),
  );

  static const List<LinuxFunctionAppStorageAccountType> values = [
    azureblob,
    azurefiles,
  ];
}

/// Factory wrapper for `azurerm_linux_function_app`.
final class AzurermLinuxFunctionApp extends Resource {
  static const String tfType = 'azurerm_linux_function_app';

  AzurermLinuxFunctionApp(
    super.localName, {
    TfArg<Map<String, String>>? appSettings,
    TfArg<bool>? builtinLoggingEnabled,
    TfArg<bool>? clientCertificateEnabled,
    TfArg<String>? clientCertificateExclusionPaths,
    LinuxFunctionAppClientCertificateMode? clientCertificateMode,
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
    LinuxFunctionAppStorageAccess? storageAccess,
    required LinuxFunctionAppStorage storage,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? virtualNetworkBackupRestoreEnabled,
    TfArg<String>? virtualNetworkSubnetId,
    TfArg<bool>? vnetImagePullEnabled,
    TfArg<bool>? webdeployPublishBasicAuthenticationEnabled,
    TfArg<String>? zipDeployFile,
    LinuxFunctionAppAuthSettings? authSettings,
    LinuxFunctionAppAuthSettingsV2? authSettingsV2,
    LinuxFunctionAppBackup? backup,
    List<LinuxFunctionAppConnectionString>? connectionString,
    LinuxFunctionAppIdentity? identity,
    required LinuxFunctionAppSiteConfig siteConfig,
    LinuxFunctionAppStickySettings? stickySettings,
    List<LinuxFunctionAppStorageAccount>? storageAccount,
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
  Set<String> get sensitiveFields => _azurermLinuxFunctionAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLinuxFunctionApp>`.
  RefTo<AzurermLinuxFunctionApp> get ref => RefTo.of(this);

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
