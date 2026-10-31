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
sealed class LinuxFunctionAppSlotStorageAccess {
  const LinuxFunctionAppSlotStorageAccess();

  /// Sets `storage_account_access_key`.
  const factory LinuxFunctionAppSlotStorageAccess.storageAccountAccessKey(
    Sensitive<String> storageAccountAccessKey,
  ) = LinuxFunctionAppSlotStorageAccessStorageAccountAccessKey;

  /// Sets `storage_uses_managed_identity`.
  const factory LinuxFunctionAppSlotStorageAccess.storageUsesManagedIdentity(
    TfArg<bool> storageUsesManagedIdentity,
  ) = LinuxFunctionAppSlotStorageAccessStorageUsesManagedIdentity;

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

/// The [LinuxFunctionAppSlotStorageAccess.storageAccountAccessKey] choice: sets `storage_account_access_key`.
final class LinuxFunctionAppSlotStorageAccessStorageAccountAccessKey
    extends LinuxFunctionAppSlotStorageAccess {
  const LinuxFunctionAppSlotStorageAccessStorageAccountAccessKey(
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

/// The [LinuxFunctionAppSlotStorageAccess.storageUsesManagedIdentity] choice: sets `storage_uses_managed_identity`.
final class LinuxFunctionAppSlotStorageAccessStorageUsesManagedIdentity
    extends LinuxFunctionAppSlotStorageAccess {
  const LinuxFunctionAppSlotStorageAccessStorageUsesManagedIdentity(
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

  final LinuxFunctionAppSlotDefaultProvider? defaultProvider;

  final TfArg<bool> enabled;

  final TfArg<String>? issuer;

  final TfArg<String>? runtimeVersion;

  final TfArg<num>? tokenRefreshExtensionHours;

  final TfArg<bool>? tokenStoreEnabled;

  final LinuxFunctionAppSlotUnauthenticatedClientAction?
  unauthenticatedClientAction;

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

/// `default_provider` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotDefaultProvider._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotDefaultProvider.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotDefaultProvider.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotDefaultProvider.arg(TfArg<String> arg)
    : this._(arg);

  static const azureactivedirectory = LinuxFunctionAppSlotDefaultProvider._(
    TfArgLiteral('AzureActiveDirectory'),
  );
  static const facebook = LinuxFunctionAppSlotDefaultProvider._(
    TfArgLiteral('Facebook'),
  );
  static const github = LinuxFunctionAppSlotDefaultProvider._(
    TfArgLiteral('Github'),
  );
  static const google = LinuxFunctionAppSlotDefaultProvider._(
    TfArgLiteral('Google'),
  );
  static const microsoftaccount = LinuxFunctionAppSlotDefaultProvider._(
    TfArgLiteral('MicrosoftAccount'),
  );
  static const twitter = LinuxFunctionAppSlotDefaultProvider._(
    TfArgLiteral('Twitter'),
  );

  static const List<LinuxFunctionAppSlotDefaultProvider> values = [
    azureactivedirectory,
    facebook,
    github,
    google,
    microsoftaccount,
    twitter,
  ];
}

/// `unauthenticated_client_action` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotUnauthenticatedClientAction._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppSlotUnauthenticatedClientAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotUnauthenticatedClientAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotUnauthenticatedClientAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowanonymous =
      LinuxFunctionAppSlotUnauthenticatedClientAction._(
        TfArgLiteral('AllowAnonymous'),
      );
  static const redirecttologinpage =
      LinuxFunctionAppSlotUnauthenticatedClientAction._(
        TfArgLiteral('RedirectToLoginPage'),
      );

  static const List<LinuxFunctionAppSlotUnauthenticatedClientAction> values = [
    allowanonymous,
    redirecttologinpage,
  ];
}

/// Typed helper for the `auth_settings.active_directory` block of
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotActiveDirectory {
  const LinuxFunctionAppSlotActiveDirectory({
    this.allowedAudiences,
    required this.clientId,
    this.clientSecret,
  });

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<String> clientId;

  final LinuxFunctionAppSlotActiveDirectoryClientSecret? clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'client_id': clientId.toTfJson(),
    ...?clientSecret?.encode(),
  };
}

/// At most one of `client_secret`, `client_secret_setting_name` on the `auth_settings.active_directory` block of `azurerm_linux_function_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxFunctionAppSlotActiveDirectoryClientSecret {
  const LinuxFunctionAppSlotActiveDirectoryClientSecret();

  /// Sets `client_secret`.
  const factory LinuxFunctionAppSlotActiveDirectoryClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxFunctionAppSlotActiveDirectoryClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxFunctionAppSlotActiveDirectoryClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxFunctionAppSlotActiveDirectoryClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppSlotActiveDirectoryClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxFunctionAppSlotActiveDirectoryClientSecretChoice
    extends LinuxFunctionAppSlotActiveDirectoryClientSecret {
  const LinuxFunctionAppSlotActiveDirectoryClientSecretChoice(
    this.clientSecret,
  );

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxFunctionAppSlotActiveDirectoryClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxFunctionAppSlotActiveDirectoryClientSecretSettingName
    extends LinuxFunctionAppSlotActiveDirectoryClientSecret {
  const LinuxFunctionAppSlotActiveDirectoryClientSecretSettingName(
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotFacebook {
  const LinuxFunctionAppSlotFacebook({
    required this.appId,
    required this.appSecret,
    this.oauthScopes,
  });

  final TfArg<String> appId;

  final LinuxFunctionAppSlotAppSecret appSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'app_id': appId.toTfJson(),
    ...appSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `app_secret`, `app_secret_setting_name` on the `auth_settings.facebook` block of `azurerm_linux_function_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.appSecret(...)`.
sealed class LinuxFunctionAppSlotAppSecret {
  const LinuxFunctionAppSlotAppSecret();

  /// Sets `app_secret`.
  const factory LinuxFunctionAppSlotAppSecret.appSecret(
    Sensitive<String> appSecret,
  ) = LinuxFunctionAppSlotAppSecretChoice;

  /// Sets `app_secret_setting_name`.
  const factory LinuxFunctionAppSlotAppSecret.appSecretSettingName(
    TfArg<String> appSecretSettingName,
  ) = LinuxFunctionAppSlotAppSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppSlotAppSecret.appSecret] choice: sets `app_secret`.
final class LinuxFunctionAppSlotAppSecretChoice
    extends LinuxFunctionAppSlotAppSecret {
  const LinuxFunctionAppSlotAppSecretChoice(this.appSecret);

  final Sensitive<String> appSecret;

  @internal
  @override
  String get blockKey => 'app_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'app_secret': appSecret.toTfJson()};
}

/// The [LinuxFunctionAppSlotAppSecret.appSecretSettingName] choice: sets `app_secret_setting_name`.
final class LinuxFunctionAppSlotAppSecretSettingName
    extends LinuxFunctionAppSlotAppSecret {
  const LinuxFunctionAppSlotAppSecretSettingName(this.appSecretSettingName);

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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotGithub {
  const LinuxFunctionAppSlotGithub({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxFunctionAppSlotGithubClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.github` block of `azurerm_linux_function_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxFunctionAppSlotGithubClientSecret {
  const LinuxFunctionAppSlotGithubClientSecret();

  /// Sets `client_secret`.
  const factory LinuxFunctionAppSlotGithubClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxFunctionAppSlotGithubClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxFunctionAppSlotGithubClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxFunctionAppSlotGithubClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppSlotGithubClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxFunctionAppSlotGithubClientSecretChoice
    extends LinuxFunctionAppSlotGithubClientSecret {
  const LinuxFunctionAppSlotGithubClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxFunctionAppSlotGithubClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxFunctionAppSlotGithubClientSecretSettingName
    extends LinuxFunctionAppSlotGithubClientSecret {
  const LinuxFunctionAppSlotGithubClientSecretSettingName(
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotGoogle {
  const LinuxFunctionAppSlotGoogle({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxFunctionAppSlotGoogleClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.google` block of `azurerm_linux_function_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxFunctionAppSlotGoogleClientSecret {
  const LinuxFunctionAppSlotGoogleClientSecret();

  /// Sets `client_secret`.
  const factory LinuxFunctionAppSlotGoogleClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxFunctionAppSlotGoogleClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxFunctionAppSlotGoogleClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxFunctionAppSlotGoogleClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppSlotGoogleClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxFunctionAppSlotGoogleClientSecretChoice
    extends LinuxFunctionAppSlotGoogleClientSecret {
  const LinuxFunctionAppSlotGoogleClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxFunctionAppSlotGoogleClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxFunctionAppSlotGoogleClientSecretSettingName
    extends LinuxFunctionAppSlotGoogleClientSecret {
  const LinuxFunctionAppSlotGoogleClientSecretSettingName(
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotMicrosoft {
  const LinuxFunctionAppSlotMicrosoft({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final LinuxFunctionAppSlotMicrosoftClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.microsoft` block of `azurerm_linux_function_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class LinuxFunctionAppSlotMicrosoftClientSecret {
  const LinuxFunctionAppSlotMicrosoftClientSecret();

  /// Sets `client_secret`.
  const factory LinuxFunctionAppSlotMicrosoftClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = LinuxFunctionAppSlotMicrosoftClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory LinuxFunctionAppSlotMicrosoftClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxFunctionAppSlotMicrosoftClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppSlotMicrosoftClientSecret.clientSecret] choice: sets `client_secret`.
final class LinuxFunctionAppSlotMicrosoftClientSecretChoice
    extends LinuxFunctionAppSlotMicrosoftClientSecret {
  const LinuxFunctionAppSlotMicrosoftClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [LinuxFunctionAppSlotMicrosoftClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxFunctionAppSlotMicrosoftClientSecretSettingName
    extends LinuxFunctionAppSlotMicrosoftClientSecret {
  const LinuxFunctionAppSlotMicrosoftClientSecretSettingName(
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
/// `azurerm_linux_function_app_slot` (derived from provider schema).
@immutable
final class LinuxFunctionAppSlotTwitter {
  const LinuxFunctionAppSlotTwitter({
    required this.consumerKey,
    required this.consumerSecret,
  });

  final TfArg<String> consumerKey;

  final LinuxFunctionAppSlotConsumerSecret consumerSecret;

  @internal
  Map<String, Object?> encode() => {
    'consumer_key': consumerKey.toTfJson(),
    ...consumerSecret.encode(),
  };
}

/// Exactly one of `consumer_secret`, `consumer_secret_setting_name` on the `auth_settings.twitter` block of `azurerm_linux_function_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.consumerSecret(...)`.
sealed class LinuxFunctionAppSlotConsumerSecret {
  const LinuxFunctionAppSlotConsumerSecret();

  /// Sets `consumer_secret`.
  const factory LinuxFunctionAppSlotConsumerSecret.consumerSecret(
    Sensitive<String> consumerSecret,
  ) = LinuxFunctionAppSlotConsumerSecretChoice;

  /// Sets `consumer_secret_setting_name`.
  const factory LinuxFunctionAppSlotConsumerSecret.consumerSecretSettingName(
    TfArg<String> consumerSecretSettingName,
  ) = LinuxFunctionAppSlotConsumerSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppSlotConsumerSecret.consumerSecret] choice: sets `consumer_secret`.
final class LinuxFunctionAppSlotConsumerSecretChoice
    extends LinuxFunctionAppSlotConsumerSecret {
  const LinuxFunctionAppSlotConsumerSecretChoice(this.consumerSecret);

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

/// The [LinuxFunctionAppSlotConsumerSecret.consumerSecretSettingName] choice: sets `consumer_secret_setting_name`.
final class LinuxFunctionAppSlotConsumerSecretSettingName
    extends LinuxFunctionAppSlotConsumerSecret {
  const LinuxFunctionAppSlotConsumerSecretSettingName(
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

  final LinuxFunctionAppSlotForwardProxyConvention? forwardProxyConvention;

  final TfArg<String>? forwardProxyCustomHostHeaderName;

  final TfArg<String>? forwardProxyCustomSchemeHeaderName;

  final TfArg<String>? httpRouteApiPrefix;

  final TfArg<bool>? requireAuthentication;

  final TfArg<bool>? requireHttps;

  final TfArg<String>? runtimeVersion;

  final LinuxFunctionAppSlotUnauthenticatedAction? unauthenticatedAction;

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

/// `forward_proxy_convention` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotForwardProxyConvention._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppSlotForwardProxyConvention.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotForwardProxyConvention.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotForwardProxyConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = LinuxFunctionAppSlotForwardProxyConvention._(
    TfArgLiteral('Custom'),
  );
  static const noproxy = LinuxFunctionAppSlotForwardProxyConvention._(
    TfArgLiteral('NoProxy'),
  );
  static const standard = LinuxFunctionAppSlotForwardProxyConvention._(
    TfArgLiteral('Standard'),
  );

  static const List<LinuxFunctionAppSlotForwardProxyConvention> values = [
    custom,
    noproxy,
    standard,
  ];
}

/// `unauthenticated_action` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotUnauthenticatedAction._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppSlotUnauthenticatedAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotUnauthenticatedAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotUnauthenticatedAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowanonymous = LinuxFunctionAppSlotUnauthenticatedAction._(
    TfArgLiteral('AllowAnonymous'),
  );
  static const redirecttologinpage =
      LinuxFunctionAppSlotUnauthenticatedAction._(
        TfArgLiteral('RedirectToLoginPage'),
      );
  static const return401 = LinuxFunctionAppSlotUnauthenticatedAction._(
    TfArgLiteral('Return401'),
  );
  static const return403 = LinuxFunctionAppSlotUnauthenticatedAction._(
    TfArgLiteral('Return403'),
  );

  static const List<LinuxFunctionAppSlotUnauthenticatedAction> values = [
    allowanonymous,
    redirecttologinpage,
    return401,
    return403,
  ];
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

  final LinuxFunctionAppSlotActiveDirectoryV2ClientSecret? clientSecret;

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

/// At most one of `client_secret_certificate_thumbprint`, `client_secret_setting_name` on the `auth_settings_v2.active_directory_v2` block of `azurerm_linux_function_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecretCertificateThumbprint(...)`.
sealed class LinuxFunctionAppSlotActiveDirectoryV2ClientSecret {
  const LinuxFunctionAppSlotActiveDirectoryV2ClientSecret();

  /// Sets `client_secret_certificate_thumbprint`.
  const factory LinuxFunctionAppSlotActiveDirectoryV2ClientSecret.clientSecretCertificateThumbprint(
    TfArg<String> clientSecretCertificateThumbprint,
  ) = LinuxFunctionAppSlotActiveDirectoryV2ClientSecretCertificateThumbprint;

  /// Sets `client_secret_setting_name`.
  const factory LinuxFunctionAppSlotActiveDirectoryV2ClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = LinuxFunctionAppSlotActiveDirectoryV2ClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppSlotActiveDirectoryV2ClientSecret.clientSecretCertificateThumbprint] choice: sets `client_secret_certificate_thumbprint`.
final class LinuxFunctionAppSlotActiveDirectoryV2ClientSecretCertificateThumbprint
    extends LinuxFunctionAppSlotActiveDirectoryV2ClientSecret {
  const LinuxFunctionAppSlotActiveDirectoryV2ClientSecretCertificateThumbprint(
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

/// The [LinuxFunctionAppSlotActiveDirectoryV2ClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class LinuxFunctionAppSlotActiveDirectoryV2ClientSecretSettingName
    extends LinuxFunctionAppSlotActiveDirectoryV2ClientSecret {
  const LinuxFunctionAppSlotActiveDirectoryV2ClientSecretSettingName(
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
    this.tokenStore,
    this.validateNonce,
  });

  final TfArg<List<String>>? allowedExternalRedirectUrls;

  final LinuxFunctionAppSlotCookieExpirationConvention?
  cookieExpirationConvention;

  final TfArg<String>? cookieExpirationTime;

  final TfArg<String>? logoutEndpoint;

  final TfArg<String>? nonceExpirationTime;

  final TfArg<bool>? preserveUrlFragmentsForLogins;

  final TfArg<num>? tokenRefreshExtensionTime;

  final TfArg<bool>? tokenStoreEnabled;

  final LinuxFunctionAppSlotTokenStore? tokenStore;

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

/// At most one of `token_store_path`, `token_store_sas_setting_name` on the `auth_settings_v2.login` block of `azurerm_linux_function_app_slot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.tokenStorePath(...)`.
sealed class LinuxFunctionAppSlotTokenStore {
  const LinuxFunctionAppSlotTokenStore();

  /// Sets `token_store_path`.
  const factory LinuxFunctionAppSlotTokenStore.tokenStorePath(
    TfArg<String> tokenStorePath,
  ) = LinuxFunctionAppSlotTokenStorePath;

  /// Sets `token_store_sas_setting_name`.
  const factory LinuxFunctionAppSlotTokenStore.tokenStoreSasSettingName(
    TfArg<String> tokenStoreSasSettingName,
  ) = LinuxFunctionAppSlotTokenStoreSasSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppSlotTokenStore.tokenStorePath] choice: sets `token_store_path`.
final class LinuxFunctionAppSlotTokenStorePath
    extends LinuxFunctionAppSlotTokenStore {
  const LinuxFunctionAppSlotTokenStorePath(this.tokenStorePath);

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

/// The [LinuxFunctionAppSlotTokenStore.tokenStoreSasSettingName] choice: sets `token_store_sas_setting_name`.
final class LinuxFunctionAppSlotTokenStoreSasSettingName
    extends LinuxFunctionAppSlotTokenStore {
  const LinuxFunctionAppSlotTokenStoreSasSettingName(
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
extension type const LinuxFunctionAppSlotCookieExpirationConvention._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppSlotCookieExpirationConvention.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotCookieExpirationConvention.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotCookieExpirationConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const fixedtime = LinuxFunctionAppSlotCookieExpirationConvention._(
    TfArgLiteral('FixedTime'),
  );
  static const identityproviderderived =
      LinuxFunctionAppSlotCookieExpirationConvention._(
        TfArgLiteral('IdentityProviderDerived'),
      );

  static const List<LinuxFunctionAppSlotCookieExpirationConvention> values = [
    fixedtime,
    identityproviderderived,
  ];
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

  final LinuxFunctionAppSlotFrequencyUnit frequencyUnit;

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
extension type const LinuxFunctionAppSlotFrequencyUnit._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotFrequencyUnit.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotFrequencyUnit.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotFrequencyUnit.arg(TfArg<String> arg) : this._(arg);

  static const day = LinuxFunctionAppSlotFrequencyUnit._(TfArgLiteral('Day'));
  static const hour = LinuxFunctionAppSlotFrequencyUnit._(TfArgLiteral('Hour'));

  static const List<LinuxFunctionAppSlotFrequencyUnit> values = [day, hour];
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

  final LinuxFunctionAppSlotConnectionStringType type;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotConnectionStringType._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotConnectionStringType.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotConnectionStringType.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotConnectionStringType.arg(TfArg<String> arg)
    : this._(arg);

  static const apihub = LinuxFunctionAppSlotConnectionStringType._(
    TfArgLiteral('ApiHub'),
  );
  static const custom = LinuxFunctionAppSlotConnectionStringType._(
    TfArgLiteral('Custom'),
  );
  static const docdb = LinuxFunctionAppSlotConnectionStringType._(
    TfArgLiteral('DocDb'),
  );
  static const eventhub = LinuxFunctionAppSlotConnectionStringType._(
    TfArgLiteral('EventHub'),
  );
  static const mysql = LinuxFunctionAppSlotConnectionStringType._(
    TfArgLiteral('MySql'),
  );
  static const notificationhub = LinuxFunctionAppSlotConnectionStringType._(
    TfArgLiteral('NotificationHub'),
  );
  static const postgresql = LinuxFunctionAppSlotConnectionStringType._(
    TfArgLiteral('PostgreSQL'),
  );
  static const rediscache = LinuxFunctionAppSlotConnectionStringType._(
    TfArgLiteral('RedisCache'),
  );
  static const sqlazure = LinuxFunctionAppSlotConnectionStringType._(
    TfArgLiteral('SQLAzure'),
  );
  static const sqlserver = LinuxFunctionAppSlotConnectionStringType._(
    TfArgLiteral('SQLServer'),
  );
  static const servicebus = LinuxFunctionAppSlotConnectionStringType._(
    TfArgLiteral('ServiceBus'),
  );

  static const List<LinuxFunctionAppSlotConnectionStringType> values = [
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

  final LinuxFunctionAppSlotFtpsState? ftpsState;

  final TfArg<num>? healthCheckEvictionTimeInMin;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final LinuxFunctionAppSlotIpRestrictionDefaultAction?
  ipRestrictionDefaultAction;

  final LinuxFunctionAppSlotLoadBalancingMode? loadBalancingMode;

  final LinuxFunctionAppSlotManagedPipelineMode? managedPipelineMode;

  final LinuxFunctionAppSlotMinimumTlsCipherSuite? minimumTlsCipherSuite;

  final LinuxFunctionAppSlotMinimumTlsVersion? minimumTlsVersion;

  final TfArg<num>? preWarmedInstanceCount;

  final TfArg<bool>? remoteDebuggingEnabled;

  final TfArg<String>? remoteDebuggingVersion;

  final TfArg<bool>? runtimeScaleMonitoringEnabled;

  final LinuxFunctionAppSlotScmIpRestrictionDefaultAction?
  scmIpRestrictionDefaultAction;

  final LinuxFunctionAppSlotScmMinimumTlsVersion? scmMinimumTlsVersion;

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

/// `ftps_state` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotFtpsState._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotFtpsState.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotFtpsState.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotFtpsState.arg(TfArg<String> arg) : this._(arg);

  static const allallowed = LinuxFunctionAppSlotFtpsState._(
    TfArgLiteral('AllAllowed'),
  );
  static const disabled = LinuxFunctionAppSlotFtpsState._(
    TfArgLiteral('Disabled'),
  );
  static const ftpsonly = LinuxFunctionAppSlotFtpsState._(
    TfArgLiteral('FtpsOnly'),
  );

  static const List<LinuxFunctionAppSlotFtpsState> values = [
    allallowed,
    disabled,
    ftpsonly,
  ];
}

/// `ip_restriction_default_action` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppSlotIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = LinuxFunctionAppSlotIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = LinuxFunctionAppSlotIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<LinuxFunctionAppSlotIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `load_balancing_mode` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotLoadBalancingMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotLoadBalancingMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotLoadBalancingMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotLoadBalancingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const leastrequests = LinuxFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('LeastRequests'),
  );
  static const weightedroundrobin = LinuxFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('WeightedRoundRobin'),
  );
  static const leastresponsetime = LinuxFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('LeastResponseTime'),
  );
  static const weightedtotaltraffic = LinuxFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('WeightedTotalTraffic'),
  );
  static const requesthash = LinuxFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('RequestHash'),
  );
  static const persiteroundrobin = LinuxFunctionAppSlotLoadBalancingMode._(
    TfArgLiteral('PerSiteRoundRobin'),
  );

  static const List<LinuxFunctionAppSlotLoadBalancingMode> values = [
    leastrequests,
    weightedroundrobin,
    leastresponsetime,
    weightedtotaltraffic,
    requesthash,
    persiteroundrobin,
  ];
}

/// `managed_pipeline_mode` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotManagedPipelineMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotManagedPipelineMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotManagedPipelineMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotManagedPipelineMode.arg(TfArg<String> arg)
    : this._(arg);

  static const classic = LinuxFunctionAppSlotManagedPipelineMode._(
    TfArgLiteral('Classic'),
  );
  static const integrated = LinuxFunctionAppSlotManagedPipelineMode._(
    TfArgLiteral('Integrated'),
  );

  static const List<LinuxFunctionAppSlotManagedPipelineMode> values = [
    classic,
    integrated,
  ];
}

/// `minimum_tls_cipher_suite` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotMinimumTlsCipherSuite._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppSlotMinimumTlsCipherSuite.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotMinimumTlsCipherSuite.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotMinimumTlsCipherSuite.arg(TfArg<String> arg)
    : this._(arg);

  static const tlsAes128GcmSha256 = LinuxFunctionAppSlotMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_128_GCM_SHA256'),
  );
  static const tlsAes256GcmSha384 = LinuxFunctionAppSlotMinimumTlsCipherSuite._(
    TfArgLiteral('TLS_AES_256_GCM_SHA384'),
  );
  static const tlsEcdheEcdsaWithAes128CbcSha256 =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes128GcmSha256 =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes256GcmSha384 =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsEcdheRsaWithAes128CbcSha =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA'),
      );
  static const tlsEcdheRsaWithAes128CbcSha256 =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheRsaWithAes128GcmSha256 =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheRsaWithAes256CbcSha =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA'),
      );
  static const tlsEcdheRsaWithAes256CbcSha384 =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384'),
      );
  static const tlsEcdheRsaWithAes256GcmSha384 =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsRsaWithAes128CbcSha =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA'),
      );
  static const tlsRsaWithAes128CbcSha256 =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsRsaWithAes128GcmSha256 =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsRsaWithAes256CbcSha =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA'),
      );
  static const tlsRsaWithAes256CbcSha256 =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA256'),
      );
  static const tlsRsaWithAes256GcmSha384 =
      LinuxFunctionAppSlotMinimumTlsCipherSuite._(
        TfArgLiteral('TLS_RSA_WITH_AES_256_GCM_SHA384'),
      );

  static const List<LinuxFunctionAppSlotMinimumTlsCipherSuite> values = [
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
extension type const LinuxFunctionAppSlotMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p1 = LinuxFunctionAppSlotMinimumTlsVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p3 = LinuxFunctionAppSlotMinimumTlsVersion._(
    TfArgLiteral('1.3'),
  );
  static const v1p2 = LinuxFunctionAppSlotMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p0 = LinuxFunctionAppSlotMinimumTlsVersion._(
    TfArgLiteral('1.0'),
  );

  static const List<LinuxFunctionAppSlotMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// `scm_ip_restriction_default_action` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotScmIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppSlotScmIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotScmIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotScmIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = LinuxFunctionAppSlotScmIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = LinuxFunctionAppSlotScmIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<LinuxFunctionAppSlotScmIpRestrictionDefaultAction> values =
      [allow, deny];
}

/// `scm_minimum_tls_version` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotScmMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotScmMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotScmMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotScmMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p1 = LinuxFunctionAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p3 = LinuxFunctionAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.3'),
  );
  static const v1p2 = LinuxFunctionAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p0 = LinuxFunctionAppSlotScmMinimumTlsVersion._(
    TfArgLiteral('1.0'),
  );

  static const List<LinuxFunctionAppSlotScmMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
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
    required this.runtime,
    this.useDotnetIsolatedRuntime,
  });

  final LinuxFunctionAppSlotRuntime runtime;

  final TfArg<bool>? useDotnetIsolatedRuntime;

  @internal
  Map<String, Object?> encode() => {
    ...runtime.encode(),
    'use_dotnet_isolated_runtime': ?useDotnetIsolatedRuntime?.toTfJson(),
  };
}

/// Exactly one of `docker`, `dotnet_version`, `java_version`, `node_version`, `powershell_core_version`, `python_version`, `use_custom_runtime` on the `site_config.application_stack` block of `azurerm_linux_function_app_slot`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.docker(...)`.
sealed class LinuxFunctionAppSlotRuntime {
  const LinuxFunctionAppSlotRuntime();

  /// Sets `docker`.
  const factory LinuxFunctionAppSlotRuntime.docker(
    List<LinuxFunctionAppSlotDocker> docker,
  ) = LinuxFunctionAppSlotRuntimeDocker;

  /// Sets `dotnet_version`.
  const factory LinuxFunctionAppSlotRuntime.dotnetVersion(
    LinuxFunctionAppSlotDotnetVersion dotnetVersion,
  ) = LinuxFunctionAppSlotRuntimeDotnetVersion;

  /// Sets `java_version`.
  const factory LinuxFunctionAppSlotRuntime.javaVersion(
    LinuxFunctionAppSlotJavaVersion javaVersion,
  ) = LinuxFunctionAppSlotRuntimeJavaVersion;

  /// Sets `node_version`.
  const factory LinuxFunctionAppSlotRuntime.nodeVersion(
    LinuxFunctionAppSlotNodeVersion nodeVersion,
  ) = LinuxFunctionAppSlotRuntimeNodeVersion;

  /// Sets `powershell_core_version`.
  const factory LinuxFunctionAppSlotRuntime.powershellCoreVersion(
    LinuxFunctionAppSlotPowershellCoreVersion powershellCoreVersion,
  ) = LinuxFunctionAppSlotRuntimePowershellCoreVersion;

  /// Sets `python_version`.
  const factory LinuxFunctionAppSlotRuntime.pythonVersion(
    LinuxFunctionAppSlotPythonVersion pythonVersion,
  ) = LinuxFunctionAppSlotRuntimePythonVersion;

  /// Sets `use_custom_runtime`.
  const factory LinuxFunctionAppSlotRuntime.useCustomRuntime(
    TfArg<bool> useCustomRuntime,
  ) = LinuxFunctionAppSlotUseCustomRuntime;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [LinuxFunctionAppSlotRuntime.docker] choice: sets `docker`.
final class LinuxFunctionAppSlotRuntimeDocker
    extends LinuxFunctionAppSlotRuntime {
  const LinuxFunctionAppSlotRuntimeDocker(this.docker);

  final List<LinuxFunctionAppSlotDocker> docker;

  @internal
  @override
  String get blockKey => 'docker';

  @internal
  @override
  Map<String, Object?> encode() => {
    'docker': [for (final e in docker) e.encode()],
  };
}

/// The [LinuxFunctionAppSlotRuntime.dotnetVersion] choice: sets `dotnet_version`.
final class LinuxFunctionAppSlotRuntimeDotnetVersion
    extends LinuxFunctionAppSlotRuntime {
  const LinuxFunctionAppSlotRuntimeDotnetVersion(this.dotnetVersion);

  final LinuxFunctionAppSlotDotnetVersion dotnetVersion;

  @internal
  @override
  String get blockKey => 'dotnet_version';

  @internal
  @override
  Map<String, Object?> encode() => {'dotnet_version': dotnetVersion.toTfJson()};
}

/// The [LinuxFunctionAppSlotRuntime.javaVersion] choice: sets `java_version`.
final class LinuxFunctionAppSlotRuntimeJavaVersion
    extends LinuxFunctionAppSlotRuntime {
  const LinuxFunctionAppSlotRuntimeJavaVersion(this.javaVersion);

  final LinuxFunctionAppSlotJavaVersion javaVersion;

  @internal
  @override
  String get blockKey => 'java_version';

  @internal
  @override
  Map<String, Object?> encode() => {'java_version': javaVersion.toTfJson()};
}

/// The [LinuxFunctionAppSlotRuntime.nodeVersion] choice: sets `node_version`.
final class LinuxFunctionAppSlotRuntimeNodeVersion
    extends LinuxFunctionAppSlotRuntime {
  const LinuxFunctionAppSlotRuntimeNodeVersion(this.nodeVersion);

  final LinuxFunctionAppSlotNodeVersion nodeVersion;

  @internal
  @override
  String get blockKey => 'node_version';

  @internal
  @override
  Map<String, Object?> encode() => {'node_version': nodeVersion.toTfJson()};
}

/// The [LinuxFunctionAppSlotRuntime.powershellCoreVersion] choice: sets `powershell_core_version`.
final class LinuxFunctionAppSlotRuntimePowershellCoreVersion
    extends LinuxFunctionAppSlotRuntime {
  const LinuxFunctionAppSlotRuntimePowershellCoreVersion(
    this.powershellCoreVersion,
  );

  final LinuxFunctionAppSlotPowershellCoreVersion powershellCoreVersion;

  @internal
  @override
  String get blockKey => 'powershell_core_version';

  @internal
  @override
  Map<String, Object?> encode() => {
    'powershell_core_version': powershellCoreVersion.toTfJson(),
  };
}

/// The [LinuxFunctionAppSlotRuntime.pythonVersion] choice: sets `python_version`.
final class LinuxFunctionAppSlotRuntimePythonVersion
    extends LinuxFunctionAppSlotRuntime {
  const LinuxFunctionAppSlotRuntimePythonVersion(this.pythonVersion);

  final LinuxFunctionAppSlotPythonVersion pythonVersion;

  @internal
  @override
  String get blockKey => 'python_version';

  @internal
  @override
  Map<String, Object?> encode() => {'python_version': pythonVersion.toTfJson()};
}

/// The [LinuxFunctionAppSlotRuntime.useCustomRuntime] choice: sets `use_custom_runtime`.
final class LinuxFunctionAppSlotUseCustomRuntime
    extends LinuxFunctionAppSlotRuntime {
  const LinuxFunctionAppSlotUseCustomRuntime(this.useCustomRuntime);

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
extension type const LinuxFunctionAppSlotDotnetVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotDotnetVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotDotnetVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotDotnetVersion.arg(TfArg<String> arg) : this._(arg);

  static const v3p1 = LinuxFunctionAppSlotDotnetVersion._(TfArgLiteral('3.1'));
  static const v6p0 = LinuxFunctionAppSlotDotnetVersion._(TfArgLiteral('6.0'));
  static const v7p0 = LinuxFunctionAppSlotDotnetVersion._(TfArgLiteral('7.0'));
  static const v8p0 = LinuxFunctionAppSlotDotnetVersion._(TfArgLiteral('8.0'));
  static const v9p0 = LinuxFunctionAppSlotDotnetVersion._(TfArgLiteral('9.0'));
  static const v10p0 = LinuxFunctionAppSlotDotnetVersion._(
    TfArgLiteral('10.0'),
  );

  static const List<LinuxFunctionAppSlotDotnetVersion> values = [
    v3p1,
    v6p0,
    v7p0,
    v8p0,
    v9p0,
    v10p0,
  ];
}

/// `java_version` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotJavaVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotJavaVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotJavaVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotJavaVersion.arg(TfArg<String> arg) : this._(arg);

  static const v8 = LinuxFunctionAppSlotJavaVersion._(TfArgLiteral('8'));
  static const v11 = LinuxFunctionAppSlotJavaVersion._(TfArgLiteral('11'));
  static const v17 = LinuxFunctionAppSlotJavaVersion._(TfArgLiteral('17'));
  static const v21 = LinuxFunctionAppSlotJavaVersion._(TfArgLiteral('21'));
  static const v25 = LinuxFunctionAppSlotJavaVersion._(TfArgLiteral('25'));

  static const List<LinuxFunctionAppSlotJavaVersion> values = [
    v8,
    v11,
    v17,
    v21,
    v25,
  ];
}

/// `node_version` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotNodeVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotNodeVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotNodeVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotNodeVersion.arg(TfArg<String> arg) : this._(arg);

  static const v12 = LinuxFunctionAppSlotNodeVersion._(TfArgLiteral('12'));
  static const v14 = LinuxFunctionAppSlotNodeVersion._(TfArgLiteral('14'));
  static const v16 = LinuxFunctionAppSlotNodeVersion._(TfArgLiteral('16'));
  static const v18 = LinuxFunctionAppSlotNodeVersion._(TfArgLiteral('18'));
  static const v20 = LinuxFunctionAppSlotNodeVersion._(TfArgLiteral('20'));
  static const v22 = LinuxFunctionAppSlotNodeVersion._(TfArgLiteral('22'));
  static const v24 = LinuxFunctionAppSlotNodeVersion._(TfArgLiteral('24'));

  static const List<LinuxFunctionAppSlotNodeVersion> values = [
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
extension type const LinuxFunctionAppSlotPowershellCoreVersion._(
  TfArg<String> _
) implements TfArg<String> {
  LinuxFunctionAppSlotPowershellCoreVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotPowershellCoreVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotPowershellCoreVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v7 = LinuxFunctionAppSlotPowershellCoreVersion._(
    TfArgLiteral('7'),
  );
  static const v7p2 = LinuxFunctionAppSlotPowershellCoreVersion._(
    TfArgLiteral('7.2'),
  );
  static const v7p4 = LinuxFunctionAppSlotPowershellCoreVersion._(
    TfArgLiteral('7.4'),
  );
  static const v7p6 = LinuxFunctionAppSlotPowershellCoreVersion._(
    TfArgLiteral('7.6'),
  );

  static const List<LinuxFunctionAppSlotPowershellCoreVersion> values = [
    v7,
    v7p2,
    v7p4,
    v7p6,
  ];
}

/// `python_version` — derived from the provider schema description.
extension type const LinuxFunctionAppSlotPythonVersion._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotPythonVersion.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotPythonVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotPythonVersion.arg(TfArg<String> arg) : this._(arg);

  static const v3p14 = LinuxFunctionAppSlotPythonVersion._(
    TfArgLiteral('3.14'),
  );
  static const v3p13 = LinuxFunctionAppSlotPythonVersion._(
    TfArgLiteral('3.13'),
  );
  static const v3p12 = LinuxFunctionAppSlotPythonVersion._(
    TfArgLiteral('3.12'),
  );
  static const v3p11 = LinuxFunctionAppSlotPythonVersion._(
    TfArgLiteral('3.11'),
  );
  static const v3p10 = LinuxFunctionAppSlotPythonVersion._(
    TfArgLiteral('3.10'),
  );
  static const v3p9 = LinuxFunctionAppSlotPythonVersion._(TfArgLiteral('3.9'));
  static const v3p8 = LinuxFunctionAppSlotPythonVersion._(TfArgLiteral('3.8'));
  static const v3p7 = LinuxFunctionAppSlotPythonVersion._(TfArgLiteral('3.7'));

  static const List<LinuxFunctionAppSlotPythonVersion> values = [
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

  final LinuxFunctionAppSlotAction? action;

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
extension type const LinuxFunctionAppSlotAction._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotAction.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotAction.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = LinuxFunctionAppSlotAction._(TfArgLiteral('Allow'));
  static const deny = LinuxFunctionAppSlotAction._(TfArgLiteral('Deny'));

  static const List<LinuxFunctionAppSlotAction> values = [allow, deny];
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

  final LinuxFunctionAppSlotAction? action;

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

  final LinuxFunctionAppSlotStorageAccountType type;

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
extension type const LinuxFunctionAppSlotStorageAccountType._(TfArg<String> _)
    implements TfArg<String> {
  LinuxFunctionAppSlotStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  LinuxFunctionAppSlotStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxFunctionAppSlotStorageAccountType.arg(TfArg<String> arg)
    : this._(arg);

  static const azureblob = LinuxFunctionAppSlotStorageAccountType._(
    TfArgLiteral('AzureBlob'),
  );
  static const azurefiles = LinuxFunctionAppSlotStorageAccountType._(
    TfArgLiteral('AzureFiles'),
  );

  static const List<LinuxFunctionAppSlotStorageAccountType> values = [
    azureblob,
    azurefiles,
  ];
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
    LinuxFunctionAppSlotStorageAccess? storageAccess,
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
