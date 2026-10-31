// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_function_app_flex_consumption`.
const Set<String> _azurermFunctionAppFlexConsumptionSensitive = <String>{
  'auth_settings.active_directory.client_secret',
  'auth_settings.facebook.app_secret',
  'auth_settings.github.client_secret',
  'auth_settings.google.client_secret',
  'auth_settings.microsoft.client_secret',
  'auth_settings.twitter.consumer_secret',
  'connection_string.value',
  'custom_domain_verification_id',
  'site_config.application_insights_connection_string',
  'site_config.application_insights_key',
  'site_credential',
};

/// Function App Flex Consumption Client Certificate enum for `client_certificate_mode`.
extension type const FunctionAppFlexConsumptionClientCertificateMode._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionClientCertificateMode.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionClientCertificateMode.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionClientCertificateMode.arg(TfArg<String> arg)
    : this._(arg);

  static const optional = FunctionAppFlexConsumptionClientCertificateMode._(
    TfArgLiteral('Optional'),
  );
  static const optionalinteractiveuser =
      FunctionAppFlexConsumptionClientCertificateMode._(
        TfArgLiteral('OptionalInteractiveUser'),
      );
  static const required = FunctionAppFlexConsumptionClientCertificateMode._(
    TfArgLiteral('Required'),
  );

  static const List<FunctionAppFlexConsumptionClientCertificateMode> values = [
    optional,
    optionalinteractiveuser,
    required,
  ];
}

/// Function App Flex Consumption Runtime enum for `runtime_name`.
extension type const FunctionAppFlexConsumptionRuntimeName._(TfArg<String> _)
    implements TfArg<String> {
  FunctionAppFlexConsumptionRuntimeName.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionRuntimeName.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionRuntimeName.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = FunctionAppFlexConsumptionRuntimeName._(
    TfArgLiteral('custom'),
  );
  static const dotnetIsolated = FunctionAppFlexConsumptionRuntimeName._(
    TfArgLiteral('dotnet-isolated'),
  );
  static const java = FunctionAppFlexConsumptionRuntimeName._(
    TfArgLiteral('java'),
  );
  static const node = FunctionAppFlexConsumptionRuntimeName._(
    TfArgLiteral('node'),
  );
  static const powershell = FunctionAppFlexConsumptionRuntimeName._(
    TfArgLiteral('powershell'),
  );
  static const python = FunctionAppFlexConsumptionRuntimeName._(
    TfArgLiteral('python'),
  );

  static const List<FunctionAppFlexConsumptionRuntimeName> values = [
    custom,
    dotnetIsolated,
    java,
    node,
    powershell,
    python,
  ];
}

/// Function App Flex Consumption Storage Authentication enum for `storage_authentication_type`.
extension type const FunctionAppFlexConsumptionStorageAuthenticationType._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionStorageAuthenticationType.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionStorageAuthenticationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionStorageAuthenticationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const storageaccountconnectionstring =
      FunctionAppFlexConsumptionStorageAuthenticationType._(
        TfArgLiteral('StorageAccountConnectionString'),
      );
  static const systemassignedidentity =
      FunctionAppFlexConsumptionStorageAuthenticationType._(
        TfArgLiteral('SystemAssignedIdentity'),
      );
  static const userassignedidentity =
      FunctionAppFlexConsumptionStorageAuthenticationType._(
        TfArgLiteral('UserAssignedIdentity'),
      );

  static const List<FunctionAppFlexConsumptionStorageAuthenticationType>
  values = [
    storageaccountconnectionstring,
    systemassignedidentity,
    userassignedidentity,
  ];
}

/// Function App Flex Consumption Storage Container enum for `storage_container_type`.
extension type const FunctionAppFlexConsumptionStorageContainerType._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionStorageContainerType.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionStorageContainerType.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionStorageContainerType.arg(TfArg<String> arg)
    : this._(arg);

  static const blobcontainer = FunctionAppFlexConsumptionStorageContainerType._(
    TfArgLiteral('blobContainer'),
  );

  static const List<FunctionAppFlexConsumptionStorageContainerType> values = [
    blobcontainer,
  ];
}

/// Typed helper for the `always_ready` block of
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionAlwaysReady {
  const FunctionAppFlexConsumptionAlwaysReady({
    this.instanceCount,
    required this.name,
  });

  final TfArg<num>? instanceCount;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': ?instanceCount?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `auth_settings` block of
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionAuthSettings {
  const FunctionAppFlexConsumptionAuthSettings({
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

  final FunctionAppFlexConsumptionDefaultProvider? defaultProvider;

  final TfArg<bool> enabled;

  final TfArg<String>? issuer;

  final TfArg<String>? runtimeVersion;

  final TfArg<num>? tokenRefreshExtensionHours;

  final TfArg<bool>? tokenStoreEnabled;

  final FunctionAppFlexConsumptionUnauthenticatedClientAction?
  unauthenticatedClientAction;

  final FunctionAppFlexConsumptionActiveDirectory? activeDirectory;

  final FunctionAppFlexConsumptionFacebook? facebook;

  final FunctionAppFlexConsumptionGithub? github;

  final FunctionAppFlexConsumptionGoogle? google;

  final FunctionAppFlexConsumptionMicrosoft? microsoft;

  final FunctionAppFlexConsumptionTwitter? twitter;

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
extension type const FunctionAppFlexConsumptionDefaultProvider._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionDefaultProvider.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionDefaultProvider.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionDefaultProvider.arg(TfArg<String> arg)
    : this._(arg);

  static const azureactivedirectory =
      FunctionAppFlexConsumptionDefaultProvider._(
        TfArgLiteral('AzureActiveDirectory'),
      );
  static const facebook = FunctionAppFlexConsumptionDefaultProvider._(
    TfArgLiteral('Facebook'),
  );
  static const github = FunctionAppFlexConsumptionDefaultProvider._(
    TfArgLiteral('Github'),
  );
  static const google = FunctionAppFlexConsumptionDefaultProvider._(
    TfArgLiteral('Google'),
  );
  static const microsoftaccount = FunctionAppFlexConsumptionDefaultProvider._(
    TfArgLiteral('MicrosoftAccount'),
  );
  static const twitter = FunctionAppFlexConsumptionDefaultProvider._(
    TfArgLiteral('Twitter'),
  );

  static const List<FunctionAppFlexConsumptionDefaultProvider> values = [
    azureactivedirectory,
    facebook,
    github,
    google,
    microsoftaccount,
    twitter,
  ];
}

/// `unauthenticated_client_action` — derived from the provider schema description.
extension type const FunctionAppFlexConsumptionUnauthenticatedClientAction._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionUnauthenticatedClientAction.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionUnauthenticatedClientAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionUnauthenticatedClientAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allowanonymous =
      FunctionAppFlexConsumptionUnauthenticatedClientAction._(
        TfArgLiteral('AllowAnonymous'),
      );
  static const redirecttologinpage =
      FunctionAppFlexConsumptionUnauthenticatedClientAction._(
        TfArgLiteral('RedirectToLoginPage'),
      );

  static const List<FunctionAppFlexConsumptionUnauthenticatedClientAction>
  values = [allowanonymous, redirecttologinpage];
}

/// Typed helper for the `auth_settings.active_directory` block of
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionActiveDirectory {
  const FunctionAppFlexConsumptionActiveDirectory({
    this.allowedAudiences,
    required this.clientId,
    this.clientSecret,
  });

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<String> clientId;

  final FunctionAppFlexConsumptionActiveDirectoryClientSecret? clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'client_id': clientId.toTfJson(),
    ...?clientSecret?.encode(),
  };
}

/// At most one of `client_secret`, `client_secret_setting_name` on the `auth_settings.active_directory` block of `azurerm_function_app_flex_consumption`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class FunctionAppFlexConsumptionActiveDirectoryClientSecret {
  const FunctionAppFlexConsumptionActiveDirectoryClientSecret();

  /// Sets `client_secret`.
  const factory FunctionAppFlexConsumptionActiveDirectoryClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = FunctionAppFlexConsumptionActiveDirectoryClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory FunctionAppFlexConsumptionActiveDirectoryClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = FunctionAppFlexConsumptionActiveDirectoryClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [FunctionAppFlexConsumptionActiveDirectoryClientSecret.clientSecret] choice: sets `client_secret`.
final class FunctionAppFlexConsumptionActiveDirectoryClientSecretChoice
    extends FunctionAppFlexConsumptionActiveDirectoryClientSecret {
  const FunctionAppFlexConsumptionActiveDirectoryClientSecretChoice(
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

/// The [FunctionAppFlexConsumptionActiveDirectoryClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class FunctionAppFlexConsumptionActiveDirectoryClientSecretSettingName
    extends FunctionAppFlexConsumptionActiveDirectoryClientSecret {
  const FunctionAppFlexConsumptionActiveDirectoryClientSecretSettingName(
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionFacebook {
  const FunctionAppFlexConsumptionFacebook({
    required this.appId,
    required this.appSecret,
    this.oauthScopes,
  });

  final TfArg<String> appId;

  final FunctionAppFlexConsumptionAppSecret appSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'app_id': appId.toTfJson(),
    ...appSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `app_secret`, `app_secret_setting_name` on the `auth_settings.facebook` block of `azurerm_function_app_flex_consumption`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.appSecret(...)`.
sealed class FunctionAppFlexConsumptionAppSecret {
  const FunctionAppFlexConsumptionAppSecret();

  /// Sets `app_secret`.
  const factory FunctionAppFlexConsumptionAppSecret.appSecret(
    Sensitive<String> appSecret,
  ) = FunctionAppFlexConsumptionAppSecretChoice;

  /// Sets `app_secret_setting_name`.
  const factory FunctionAppFlexConsumptionAppSecret.appSecretSettingName(
    TfArg<String> appSecretSettingName,
  ) = FunctionAppFlexConsumptionAppSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [FunctionAppFlexConsumptionAppSecret.appSecret] choice: sets `app_secret`.
final class FunctionAppFlexConsumptionAppSecretChoice
    extends FunctionAppFlexConsumptionAppSecret {
  const FunctionAppFlexConsumptionAppSecretChoice(this.appSecret);

  final Sensitive<String> appSecret;

  @internal
  @override
  String get blockKey => 'app_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'app_secret': appSecret.toTfJson()};
}

/// The [FunctionAppFlexConsumptionAppSecret.appSecretSettingName] choice: sets `app_secret_setting_name`.
final class FunctionAppFlexConsumptionAppSecretSettingName
    extends FunctionAppFlexConsumptionAppSecret {
  const FunctionAppFlexConsumptionAppSecretSettingName(
    this.appSecretSettingName,
  );

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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionGithub {
  const FunctionAppFlexConsumptionGithub({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final FunctionAppFlexConsumptionGithubClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.github` block of `azurerm_function_app_flex_consumption`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class FunctionAppFlexConsumptionGithubClientSecret {
  const FunctionAppFlexConsumptionGithubClientSecret();

  /// Sets `client_secret`.
  const factory FunctionAppFlexConsumptionGithubClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = FunctionAppFlexConsumptionGithubClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory FunctionAppFlexConsumptionGithubClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = FunctionAppFlexConsumptionGithubClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [FunctionAppFlexConsumptionGithubClientSecret.clientSecret] choice: sets `client_secret`.
final class FunctionAppFlexConsumptionGithubClientSecretChoice
    extends FunctionAppFlexConsumptionGithubClientSecret {
  const FunctionAppFlexConsumptionGithubClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [FunctionAppFlexConsumptionGithubClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class FunctionAppFlexConsumptionGithubClientSecretSettingName
    extends FunctionAppFlexConsumptionGithubClientSecret {
  const FunctionAppFlexConsumptionGithubClientSecretSettingName(
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionGoogle {
  const FunctionAppFlexConsumptionGoogle({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final FunctionAppFlexConsumptionGoogleClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.google` block of `azurerm_function_app_flex_consumption`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class FunctionAppFlexConsumptionGoogleClientSecret {
  const FunctionAppFlexConsumptionGoogleClientSecret();

  /// Sets `client_secret`.
  const factory FunctionAppFlexConsumptionGoogleClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = FunctionAppFlexConsumptionGoogleClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory FunctionAppFlexConsumptionGoogleClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = FunctionAppFlexConsumptionGoogleClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [FunctionAppFlexConsumptionGoogleClientSecret.clientSecret] choice: sets `client_secret`.
final class FunctionAppFlexConsumptionGoogleClientSecretChoice
    extends FunctionAppFlexConsumptionGoogleClientSecret {
  const FunctionAppFlexConsumptionGoogleClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [FunctionAppFlexConsumptionGoogleClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class FunctionAppFlexConsumptionGoogleClientSecretSettingName
    extends FunctionAppFlexConsumptionGoogleClientSecret {
  const FunctionAppFlexConsumptionGoogleClientSecretSettingName(
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionMicrosoft {
  const FunctionAppFlexConsumptionMicrosoft({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  final TfArg<String> clientId;

  final FunctionAppFlexConsumptionMicrosoftClientSecret clientSecret;

  final TfArg<List<String>>? oauthScopes;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    ...clientSecret.encode(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
  };
}

/// Exactly one of `client_secret`, `client_secret_setting_name` on the `auth_settings.microsoft` block of `azurerm_function_app_flex_consumption`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class FunctionAppFlexConsumptionMicrosoftClientSecret {
  const FunctionAppFlexConsumptionMicrosoftClientSecret();

  /// Sets `client_secret`.
  const factory FunctionAppFlexConsumptionMicrosoftClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = FunctionAppFlexConsumptionMicrosoftClientSecretChoice;

  /// Sets `client_secret_setting_name`.
  const factory FunctionAppFlexConsumptionMicrosoftClientSecret.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = FunctionAppFlexConsumptionMicrosoftClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [FunctionAppFlexConsumptionMicrosoftClientSecret.clientSecret] choice: sets `client_secret`.
final class FunctionAppFlexConsumptionMicrosoftClientSecretChoice
    extends FunctionAppFlexConsumptionMicrosoftClientSecret {
  const FunctionAppFlexConsumptionMicrosoftClientSecretChoice(
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

/// The [FunctionAppFlexConsumptionMicrosoftClientSecret.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class FunctionAppFlexConsumptionMicrosoftClientSecretSettingName
    extends FunctionAppFlexConsumptionMicrosoftClientSecret {
  const FunctionAppFlexConsumptionMicrosoftClientSecretSettingName(
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionTwitter {
  const FunctionAppFlexConsumptionTwitter({
    required this.consumerKey,
    required this.consumerSecret,
  });

  final TfArg<String> consumerKey;

  final FunctionAppFlexConsumptionConsumerSecret consumerSecret;

  @internal
  Map<String, Object?> encode() => {
    'consumer_key': consumerKey.toTfJson(),
    ...consumerSecret.encode(),
  };
}

/// Exactly one of `consumer_secret`, `consumer_secret_setting_name` on the `auth_settings.twitter` block of `azurerm_function_app_flex_consumption`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.consumerSecret(...)`.
sealed class FunctionAppFlexConsumptionConsumerSecret {
  const FunctionAppFlexConsumptionConsumerSecret();

  /// Sets `consumer_secret`.
  const factory FunctionAppFlexConsumptionConsumerSecret.consumerSecret(
    Sensitive<String> consumerSecret,
  ) = FunctionAppFlexConsumptionConsumerSecretChoice;

  /// Sets `consumer_secret_setting_name`.
  const factory FunctionAppFlexConsumptionConsumerSecret.consumerSecretSettingName(
    TfArg<String> consumerSecretSettingName,
  ) = FunctionAppFlexConsumptionConsumerSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [FunctionAppFlexConsumptionConsumerSecret.consumerSecret] choice: sets `consumer_secret`.
final class FunctionAppFlexConsumptionConsumerSecretChoice
    extends FunctionAppFlexConsumptionConsumerSecret {
  const FunctionAppFlexConsumptionConsumerSecretChoice(this.consumerSecret);

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

/// The [FunctionAppFlexConsumptionConsumerSecret.consumerSecretSettingName] choice: sets `consumer_secret_setting_name`.
final class FunctionAppFlexConsumptionConsumerSecretSettingName
    extends FunctionAppFlexConsumptionConsumerSecret {
  const FunctionAppFlexConsumptionConsumerSecretSettingName(
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionAuthSettingsV2 {
  const FunctionAppFlexConsumptionAuthSettingsV2({
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

  final FunctionAppFlexConsumptionForwardProxyConvention?
  forwardProxyConvention;

  final TfArg<String>? forwardProxyCustomHostHeaderName;

  final TfArg<String>? forwardProxyCustomSchemeHeaderName;

  final TfArg<String>? httpRouteApiPrefix;

  final TfArg<bool>? requireAuthentication;

  final TfArg<bool>? requireHttps;

  final TfArg<String>? runtimeVersion;

  final FunctionAppFlexConsumptionUnauthenticatedAction? unauthenticatedAction;

  final FunctionAppFlexConsumptionActiveDirectoryV2? activeDirectoryV2;

  final FunctionAppFlexConsumptionAppleV2? appleV2;

  final FunctionAppFlexConsumptionAzureStaticWebAppV2? azureStaticWebAppV2;

  final List<FunctionAppFlexConsumptionCustomOidcV2>? customOidcV2;

  final FunctionAppFlexConsumptionFacebookV2? facebookV2;

  final FunctionAppFlexConsumptionGithubV2? githubV2;

  final FunctionAppFlexConsumptionGoogleV2? googleV2;

  final FunctionAppFlexConsumptionLogin login;

  final FunctionAppFlexConsumptionMicrosoftV2? microsoftV2;

  final FunctionAppFlexConsumptionTwitterV2? twitterV2;

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
extension type const FunctionAppFlexConsumptionForwardProxyConvention._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionForwardProxyConvention.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionForwardProxyConvention.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionForwardProxyConvention.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = FunctionAppFlexConsumptionForwardProxyConvention._(
    TfArgLiteral('Custom'),
  );
  static const noproxy = FunctionAppFlexConsumptionForwardProxyConvention._(
    TfArgLiteral('NoProxy'),
  );
  static const standard = FunctionAppFlexConsumptionForwardProxyConvention._(
    TfArgLiteral('Standard'),
  );

  static const List<FunctionAppFlexConsumptionForwardProxyConvention> values = [
    custom,
    noproxy,
    standard,
  ];
}

/// `unauthenticated_action` — derived from the provider schema description.
extension type const FunctionAppFlexConsumptionUnauthenticatedAction._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionUnauthenticatedAction.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionUnauthenticatedAction.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionUnauthenticatedAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowanonymous =
      FunctionAppFlexConsumptionUnauthenticatedAction._(
        TfArgLiteral('AllowAnonymous'),
      );
  static const redirecttologinpage =
      FunctionAppFlexConsumptionUnauthenticatedAction._(
        TfArgLiteral('RedirectToLoginPage'),
      );
  static const return401 = FunctionAppFlexConsumptionUnauthenticatedAction._(
    TfArgLiteral('Return401'),
  );
  static const return403 = FunctionAppFlexConsumptionUnauthenticatedAction._(
    TfArgLiteral('Return403'),
  );

  static const List<FunctionAppFlexConsumptionUnauthenticatedAction> values = [
    allowanonymous,
    redirecttologinpage,
    return401,
    return403,
  ];
}

/// Typed helper for the `auth_settings_v2.active_directory_v2` block of
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionActiveDirectoryV2 {
  const FunctionAppFlexConsumptionActiveDirectoryV2({
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

  final FunctionAppFlexConsumptionClientCredential? clientCredential;

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

/// At most one of `client_secret_certificate_thumbprint`, `client_secret_setting_name` on the `auth_settings_v2.active_directory_v2` block of `azurerm_function_app_flex_consumption`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecretCertificateThumbprint(...)`.
sealed class FunctionAppFlexConsumptionClientCredential {
  const FunctionAppFlexConsumptionClientCredential();

  /// Sets `client_secret_certificate_thumbprint`.
  const factory FunctionAppFlexConsumptionClientCredential.clientSecretCertificateThumbprint(
    TfArg<String> clientSecretCertificateThumbprint,
  ) = FunctionAppFlexConsumptionClientCredentialClientSecretCertificateThumbprint;

  /// Sets `client_secret_setting_name`.
  const factory FunctionAppFlexConsumptionClientCredential.clientSecretSettingName(
    TfArg<String> clientSecretSettingName,
  ) = FunctionAppFlexConsumptionClientCredentialClientSecretSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [FunctionAppFlexConsumptionClientCredential.clientSecretCertificateThumbprint] choice: sets `client_secret_certificate_thumbprint`.
final class FunctionAppFlexConsumptionClientCredentialClientSecretCertificateThumbprint
    extends FunctionAppFlexConsumptionClientCredential {
  const FunctionAppFlexConsumptionClientCredentialClientSecretCertificateThumbprint(
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

/// The [FunctionAppFlexConsumptionClientCredential.clientSecretSettingName] choice: sets `client_secret_setting_name`.
final class FunctionAppFlexConsumptionClientCredentialClientSecretSettingName
    extends FunctionAppFlexConsumptionClientCredential {
  const FunctionAppFlexConsumptionClientCredentialClientSecretSettingName(
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionAppleV2 {
  const FunctionAppFlexConsumptionAppleV2({
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionAzureStaticWebAppV2 {
  const FunctionAppFlexConsumptionAzureStaticWebAppV2({required this.clientId});

  final TfArg<String> clientId;

  @internal
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// Typed helper for the `auth_settings_v2.custom_oidc_v2` block of
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionCustomOidcV2 {
  const FunctionAppFlexConsumptionCustomOidcV2({
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionFacebookV2 {
  const FunctionAppFlexConsumptionFacebookV2({
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionGithubV2 {
  const FunctionAppFlexConsumptionGithubV2({
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionGoogleV2 {
  const FunctionAppFlexConsumptionGoogleV2({
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionLogin {
  const FunctionAppFlexConsumptionLogin({
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

  final FunctionAppFlexConsumptionCookieExpirationConvention?
  cookieExpirationConvention;

  final TfArg<String>? cookieExpirationTime;

  final TfArg<String>? logoutEndpoint;

  final TfArg<String>? nonceExpirationTime;

  final TfArg<bool>? preserveUrlFragmentsForLogins;

  final TfArg<num>? tokenRefreshExtensionTime;

  final TfArg<bool>? tokenStoreEnabled;

  final FunctionAppFlexConsumptionTokenStore? tokenStore;

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

/// At most one of `token_store_path`, `token_store_sas_setting_name` on the `auth_settings_v2.login` block of `azurerm_function_app_flex_consumption`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.tokenStorePath(...)`.
sealed class FunctionAppFlexConsumptionTokenStore {
  const FunctionAppFlexConsumptionTokenStore();

  /// Sets `token_store_path`.
  const factory FunctionAppFlexConsumptionTokenStore.tokenStorePath(
    TfArg<String> tokenStorePath,
  ) = FunctionAppFlexConsumptionTokenStorePath;

  /// Sets `token_store_sas_setting_name`.
  const factory FunctionAppFlexConsumptionTokenStore.tokenStoreSasSettingName(
    TfArg<String> tokenStoreSasSettingName,
  ) = FunctionAppFlexConsumptionTokenStoreSasSettingName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [FunctionAppFlexConsumptionTokenStore.tokenStorePath] choice: sets `token_store_path`.
final class FunctionAppFlexConsumptionTokenStorePath
    extends FunctionAppFlexConsumptionTokenStore {
  const FunctionAppFlexConsumptionTokenStorePath(this.tokenStorePath);

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

/// The [FunctionAppFlexConsumptionTokenStore.tokenStoreSasSettingName] choice: sets `token_store_sas_setting_name`.
final class FunctionAppFlexConsumptionTokenStoreSasSettingName
    extends FunctionAppFlexConsumptionTokenStore {
  const FunctionAppFlexConsumptionTokenStoreSasSettingName(
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
extension type const FunctionAppFlexConsumptionCookieExpirationConvention._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionCookieExpirationConvention.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionCookieExpirationConvention.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionCookieExpirationConvention.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const fixedtime =
      FunctionAppFlexConsumptionCookieExpirationConvention._(
        TfArgLiteral('FixedTime'),
      );
  static const identityproviderderived =
      FunctionAppFlexConsumptionCookieExpirationConvention._(
        TfArgLiteral('IdentityProviderDerived'),
      );

  static const List<FunctionAppFlexConsumptionCookieExpirationConvention>
  values = [fixedtime, identityproviderderived];
}

/// Typed helper for the `auth_settings_v2.microsoft_v2` block of
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionMicrosoftV2 {
  const FunctionAppFlexConsumptionMicrosoftV2({
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionTwitterV2 {
  const FunctionAppFlexConsumptionTwitterV2({
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

/// Typed helper for the `connection_string` block of
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionConnectionString {
  const FunctionAppFlexConsumptionConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final FunctionAppFlexConsumptionType type;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const FunctionAppFlexConsumptionType._(TfArg<String> _)
    implements TfArg<String> {
  FunctionAppFlexConsumptionType.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionType.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionType.arg(TfArg<String> arg) : this._(arg);

  static const apihub = FunctionAppFlexConsumptionType._(
    TfArgLiteral('ApiHub'),
  );
  static const custom = FunctionAppFlexConsumptionType._(
    TfArgLiteral('Custom'),
  );
  static const docdb = FunctionAppFlexConsumptionType._(TfArgLiteral('DocDb'));
  static const eventhub = FunctionAppFlexConsumptionType._(
    TfArgLiteral('EventHub'),
  );
  static const mysql = FunctionAppFlexConsumptionType._(TfArgLiteral('MySql'));
  static const notificationhub = FunctionAppFlexConsumptionType._(
    TfArgLiteral('NotificationHub'),
  );
  static const postgresql = FunctionAppFlexConsumptionType._(
    TfArgLiteral('PostgreSQL'),
  );
  static const rediscache = FunctionAppFlexConsumptionType._(
    TfArgLiteral('RedisCache'),
  );
  static const sqlazure = FunctionAppFlexConsumptionType._(
    TfArgLiteral('SQLAzure'),
  );
  static const sqlserver = FunctionAppFlexConsumptionType._(
    TfArgLiteral('SQLServer'),
  );
  static const servicebus = FunctionAppFlexConsumptionType._(
    TfArgLiteral('ServiceBus'),
  );

  static const List<FunctionAppFlexConsumptionType> values = [
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionIdentity {
  const FunctionAppFlexConsumptionIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `site_config` block of
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionSiteConfig {
  const FunctionAppFlexConsumptionSiteConfig({
    this.apiDefinitionUrl,
    this.apiManagementApiId,
    this.appCommandLine,
    this.applicationInsightsConnectionString,
    this.applicationInsightsKey,
    this.containerRegistryManagedIdentityClientId,
    this.containerRegistryUseManagedIdentity,
    this.defaultDocuments,
    this.elasticInstanceMinimum,
    this.healthCheckEvictionTimeInMin,
    this.healthCheckPath,
    this.http2Enabled,
    this.ipRestrictionDefaultAction,
    this.loadBalancingMode,
    this.managedPipelineMode,
    this.minimumTlsVersion,
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
    this.cors,
    this.ipRestriction,
    this.scmIpRestriction,
  });

  final TfArg<String>? apiDefinitionUrl;

  final TfArg<String>? apiManagementApiId;

  final TfArg<String>? appCommandLine;

  final Sensitive<String>? applicationInsightsConnectionString;

  final Sensitive<String>? applicationInsightsKey;

  final TfArg<String>? containerRegistryManagedIdentityClientId;

  final TfArg<bool>? containerRegistryUseManagedIdentity;

  final TfArg<List<String>>? defaultDocuments;

  final TfArg<num>? elasticInstanceMinimum;

  final TfArg<num>? healthCheckEvictionTimeInMin;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final FunctionAppFlexConsumptionIpRestrictionDefaultAction?
  ipRestrictionDefaultAction;

  final FunctionAppFlexConsumptionLoadBalancingMode? loadBalancingMode;

  final FunctionAppFlexConsumptionManagedPipelineMode? managedPipelineMode;

  final FunctionAppFlexConsumptionMinimumTlsVersion? minimumTlsVersion;

  final TfArg<bool>? remoteDebuggingEnabled;

  final FunctionAppFlexConsumptionRemoteDebuggingVersion?
  remoteDebuggingVersion;

  final TfArg<bool>? runtimeScaleMonitoringEnabled;

  final FunctionAppFlexConsumptionScmIpRestrictionDefaultAction?
  scmIpRestrictionDefaultAction;

  final FunctionAppFlexConsumptionScmMinimumTlsVersion? scmMinimumTlsVersion;

  final TfArg<bool>? scmUseMainIpRestriction;

  final TfArg<bool>? use32BitWorker;

  final TfArg<bool>? vnetRouteAllEnabled;

  final TfArg<bool>? websocketsEnabled;

  final TfArg<num>? workerCount;

  final FunctionAppFlexConsumptionAppServiceLogs? appServiceLogs;

  final FunctionAppFlexConsumptionCors? cors;

  final List<FunctionAppFlexConsumptionIpRestriction>? ipRestriction;

  final List<FunctionAppFlexConsumptionScmIpRestriction>? scmIpRestriction;

  @internal
  Map<String, Object?> encode() => {
    'api_definition_url': ?apiDefinitionUrl?.toTfJson(),
    'api_management_api_id': ?apiManagementApiId?.toTfJson(),
    'app_command_line': ?appCommandLine?.toTfJson(),
    'application_insights_connection_string':
        ?applicationInsightsConnectionString?.toTfJson(),
    'application_insights_key': ?applicationInsightsKey?.toTfJson(),
    'container_registry_managed_identity_client_id':
        ?containerRegistryManagedIdentityClientId?.toTfJson(),
    'container_registry_use_managed_identity':
        ?containerRegistryUseManagedIdentity?.toTfJson(),
    'default_documents': ?defaultDocuments?.toTfJson(),
    'elastic_instance_minimum': ?elasticInstanceMinimum?.toTfJson(),
    'health_check_eviction_time_in_min': ?healthCheckEvictionTimeInMin
        ?.toTfJson(),
    'health_check_path': ?healthCheckPath?.toTfJson(),
    'http2_enabled': ?http2Enabled?.toTfJson(),
    'ip_restriction_default_action': ?ipRestrictionDefaultAction?.toTfJson(),
    'load_balancing_mode': ?loadBalancingMode?.toTfJson(),
    'managed_pipeline_mode': ?managedPipelineMode?.toTfJson(),
    'minimum_tls_version': ?minimumTlsVersion?.toTfJson(),
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
    'cors': ?cors?.encode(),
    if (ipRestriction != null)
      'ip_restriction': [for (final e in ipRestriction!) e.encode()],
    if (scmIpRestriction != null)
      'scm_ip_restriction': [for (final e in scmIpRestriction!) e.encode()],
  };
}

/// `ip_restriction_default_action` — derived from the provider schema description.
extension type const FunctionAppFlexConsumptionIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionIpRestrictionDefaultAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionIpRestrictionDefaultAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allow = FunctionAppFlexConsumptionIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = FunctionAppFlexConsumptionIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<FunctionAppFlexConsumptionIpRestrictionDefaultAction>
  values = [allow, deny];
}

/// `load_balancing_mode` — derived from the provider schema description.
extension type const FunctionAppFlexConsumptionLoadBalancingMode._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionLoadBalancingMode.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionLoadBalancingMode.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionLoadBalancingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const leastrequests = FunctionAppFlexConsumptionLoadBalancingMode._(
    TfArgLiteral('LeastRequests'),
  );
  static const weightedroundrobin =
      FunctionAppFlexConsumptionLoadBalancingMode._(
        TfArgLiteral('WeightedRoundRobin'),
      );
  static const leastresponsetime =
      FunctionAppFlexConsumptionLoadBalancingMode._(
        TfArgLiteral('LeastResponseTime'),
      );
  static const weightedtotaltraffic =
      FunctionAppFlexConsumptionLoadBalancingMode._(
        TfArgLiteral('WeightedTotalTraffic'),
      );
  static const requesthash = FunctionAppFlexConsumptionLoadBalancingMode._(
    TfArgLiteral('RequestHash'),
  );
  static const persiteroundrobin =
      FunctionAppFlexConsumptionLoadBalancingMode._(
        TfArgLiteral('PerSiteRoundRobin'),
      );

  static const List<FunctionAppFlexConsumptionLoadBalancingMode> values = [
    leastrequests,
    weightedroundrobin,
    leastresponsetime,
    weightedtotaltraffic,
    requesthash,
    persiteroundrobin,
  ];
}

/// `managed_pipeline_mode` — derived from the provider schema description.
extension type const FunctionAppFlexConsumptionManagedPipelineMode._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionManagedPipelineMode.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionManagedPipelineMode.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionManagedPipelineMode.arg(TfArg<String> arg)
    : this._(arg);

  static const classic = FunctionAppFlexConsumptionManagedPipelineMode._(
    TfArgLiteral('Classic'),
  );
  static const integrated = FunctionAppFlexConsumptionManagedPipelineMode._(
    TfArgLiteral('Integrated'),
  );

  static const List<FunctionAppFlexConsumptionManagedPipelineMode> values = [
    classic,
    integrated,
  ];
}

/// `minimum_tls_version` — derived from the provider schema description.
extension type const FunctionAppFlexConsumptionMinimumTlsVersion._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p1 = FunctionAppFlexConsumptionMinimumTlsVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p3 = FunctionAppFlexConsumptionMinimumTlsVersion._(
    TfArgLiteral('1.3'),
  );
  static const v1p2 = FunctionAppFlexConsumptionMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p0 = FunctionAppFlexConsumptionMinimumTlsVersion._(
    TfArgLiteral('1.0'),
  );

  static const List<FunctionAppFlexConsumptionMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// `remote_debugging_version` — derived from the provider schema description.
extension type const FunctionAppFlexConsumptionRemoteDebuggingVersion._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionRemoteDebuggingVersion.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionRemoteDebuggingVersion.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionRemoteDebuggingVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const vs2017 = FunctionAppFlexConsumptionRemoteDebuggingVersion._(
    TfArgLiteral('VS2017'),
  );
  static const vs2019 = FunctionAppFlexConsumptionRemoteDebuggingVersion._(
    TfArgLiteral('VS2019'),
  );
  static const vs2022 = FunctionAppFlexConsumptionRemoteDebuggingVersion._(
    TfArgLiteral('VS2022'),
  );

  static const List<FunctionAppFlexConsumptionRemoteDebuggingVersion> values = [
    vs2017,
    vs2019,
    vs2022,
  ];
}

/// `scm_ip_restriction_default_action` — derived from the provider schema description.
extension type const FunctionAppFlexConsumptionScmIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionScmIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionScmIpRestrictionDefaultAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionScmIpRestrictionDefaultAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allow =
      FunctionAppFlexConsumptionScmIpRestrictionDefaultAction._(
        TfArgLiteral('Allow'),
      );
  static const deny = FunctionAppFlexConsumptionScmIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<FunctionAppFlexConsumptionScmIpRestrictionDefaultAction>
  values = [allow, deny];
}

/// `scm_minimum_tls_version` — derived from the provider schema description.
extension type const FunctionAppFlexConsumptionScmMinimumTlsVersion._(
  TfArg<String> _
) implements TfArg<String> {
  FunctionAppFlexConsumptionScmMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionScmMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionScmMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p1 = FunctionAppFlexConsumptionScmMinimumTlsVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p3 = FunctionAppFlexConsumptionScmMinimumTlsVersion._(
    TfArgLiteral('1.3'),
  );
  static const v1p2 = FunctionAppFlexConsumptionScmMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p0 = FunctionAppFlexConsumptionScmMinimumTlsVersion._(
    TfArgLiteral('1.0'),
  );

  static const List<FunctionAppFlexConsumptionScmMinimumTlsVersion> values = [
    v1p1,
    v1p3,
    v1p2,
    v1p0,
  ];
}

/// Typed helper for the `site_config.app_service_logs` block of
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionAppServiceLogs {
  const FunctionAppFlexConsumptionAppServiceLogs({
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

/// Typed helper for the `site_config.cors` block of
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionCors {
  const FunctionAppFlexConsumptionCors({
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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionIpRestriction {
  const FunctionAppFlexConsumptionIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final FunctionAppFlexConsumptionAction? action;

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
extension type const FunctionAppFlexConsumptionAction._(TfArg<String> _)
    implements TfArg<String> {
  FunctionAppFlexConsumptionAction.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFlexConsumptionAction.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFlexConsumptionAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = FunctionAppFlexConsumptionAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = FunctionAppFlexConsumptionAction._(TfArgLiteral('Deny'));

  static const List<FunctionAppFlexConsumptionAction> values = [allow, deny];
}

/// Typed helper for the `site_config.scm_ip_restriction` block of
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionScmIpRestriction {
  const FunctionAppFlexConsumptionScmIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final FunctionAppFlexConsumptionAction? action;

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
/// `azurerm_function_app_flex_consumption` (derived from provider schema).
@immutable
final class FunctionAppFlexConsumptionStickySettings {
  const FunctionAppFlexConsumptionStickySettings({
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

/// Factory wrapper for `azurerm_function_app_flex_consumption`.
final class AzurermFunctionAppFlexConsumption extends Resource {
  static const String tfType = 'azurerm_function_app_flex_consumption';

  AzurermFunctionAppFlexConsumption(
    super.localName, {
    TfArg<Map<String, String>>? appSettings,
    TfArg<bool>? clientCertificateEnabled,
    TfArg<String>? clientCertificateExclusionPaths,
    FunctionAppFlexConsumptionClientCertificateMode? clientCertificateMode,
    TfArg<bool>? enabled,
    TfArg<num>? httpConcurrency,
    TfArg<bool>? httpsOnly,
    TfArg<num>? instanceMemoryInMb,
    required TfArg<String> location,
    TfArg<num>? maximumInstanceCount,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required FunctionAppFlexConsumptionRuntimeName runtimeName,
    required TfArg<String> runtimeVersion,
    required TfArg<String> servicePlanId,
    TfArg<String>? storageAccessKey,
    required FunctionAppFlexConsumptionStorageAuthenticationType
    storageAuthenticationType,
    required TfArg<String> storageContainerEndpoint,
    required FunctionAppFlexConsumptionStorageContainerType
    storageContainerType,
    TfArg<String>? storageUserAssignedIdentityId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? virtualNetworkSubnetId,
    TfArg<bool>? webdeployPublishBasicAuthenticationEnabled,
    TfArg<String>? zipDeployFile,
    List<FunctionAppFlexConsumptionAlwaysReady>? alwaysReady,
    FunctionAppFlexConsumptionAuthSettings? authSettings,
    FunctionAppFlexConsumptionAuthSettingsV2? authSettingsV2,
    List<FunctionAppFlexConsumptionConnectionString>? connectionString,
    FunctionAppFlexConsumptionIdentity? identity,
    required FunctionAppFlexConsumptionSiteConfig siteConfig,
    FunctionAppFlexConsumptionStickySettings? stickySettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_settings': ?appSettings,
           'client_certificate_enabled': ?clientCertificateEnabled,
           'client_certificate_exclusion_paths':
               ?clientCertificateExclusionPaths,
           'client_certificate_mode': ?clientCertificateMode,
           'enabled': ?enabled,
           'http_concurrency': ?httpConcurrency,
           'https_only': ?httpsOnly,
           'instance_memory_in_mb': ?instanceMemoryInMb,
           'location': location,
           'maximum_instance_count': ?maximumInstanceCount,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'runtime_name': runtimeName,
           'runtime_version': runtimeVersion,
           'service_plan_id': servicePlanId,
           'storage_access_key': ?storageAccessKey,
           'storage_authentication_type': storageAuthenticationType,
           'storage_container_endpoint': storageContainerEndpoint,
           'storage_container_type': storageContainerType,
           'storage_user_assigned_identity_id': ?storageUserAssignedIdentityId,
           'tags': ?tags,
           'virtual_network_subnet_id': ?virtualNetworkSubnetId,
           'webdeploy_publish_basic_authentication_enabled':
               ?webdeployPublishBasicAuthenticationEnabled,
           'zip_deploy_file': ?zipDeployFile,
           if (alwaysReady != null)
             'always_ready': TfArg.literal([
               for (final e in alwaysReady) e.encode(),
             ]),
           if (authSettings != null)
             'auth_settings': TfArg.literal(authSettings.encode()),
           if (authSettingsV2 != null)
             'auth_settings_v2': TfArg.literal(authSettingsV2.encode()),
           if (connectionString != null)
             'connection_string': TfArg.literal([
               for (final e in connectionString) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'site_config': TfArg.literal(siteConfig.encode()),
           if (stickySettings != null)
             'sticky_settings': TfArg.literal(stickySettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermFunctionAppFlexConsumptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFunctionAppFlexConsumption>`.
  RefTo<AzurermFunctionAppFlexConsumption> get ref => RefTo.of(this);

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

  /// Reference to `http_concurrency` attribute.
  TfRef<num> get httpConcurrency =>
      TfRef.attribute<num>(this, 'http_concurrency');

  /// Reference to `https_only` attribute.
  TfRef<bool> get httpsOnly => TfRef.attribute<bool>(this, 'https_only');

  /// Reference to `instance_memory_in_mb` attribute.
  TfRef<num> get instanceMemoryInMb =>
      TfRef.attribute<num>(this, 'instance_memory_in_mb');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maximum_instance_count` attribute.
  TfRef<num> get maximumInstanceCount =>
      TfRef.attribute<num>(this, 'maximum_instance_count');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `runtime_name` attribute.
  TfRef<String> get runtimeName =>
      TfRef.attribute<String>(this, 'runtime_name');

  /// Reference to `runtime_version` attribute.
  TfRef<String> get runtimeVersion =>
      TfRef.attribute<String>(this, 'runtime_version');

  /// Reference to `service_plan_id` attribute.
  TfRef<String> get servicePlanId =>
      TfRef.attribute<String>(this, 'service_plan_id');

  /// Reference to `storage_access_key` attribute.
  TfRef<String> get storageAccessKey =>
      TfRef.attribute<String>(this, 'storage_access_key');

  /// Reference to `storage_authentication_type` attribute.
  TfRef<String> get storageAuthenticationType =>
      TfRef.attribute<String>(this, 'storage_authentication_type');

  /// Reference to `storage_container_endpoint` attribute.
  TfRef<String> get storageContainerEndpoint =>
      TfRef.attribute<String>(this, 'storage_container_endpoint');

  /// Reference to `storage_container_type` attribute.
  TfRef<String> get storageContainerType =>
      TfRef.attribute<String>(this, 'storage_container_type');

  /// Reference to `storage_user_assigned_identity_id` attribute.
  TfRef<String> get storageUserAssignedIdentityId =>
      TfRef.attribute<String>(this, 'storage_user_assigned_identity_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

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
