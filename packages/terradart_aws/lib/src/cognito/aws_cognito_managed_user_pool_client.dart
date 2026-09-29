// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cognito_managed_user_pool_client`.
const Set<String> _awsCognitoManagedUserPoolClientSensitive = <String>{
  'client_secret',
};

/// Cognito Managed User Pool Client Allowed Oauth enum for `allowed_oauth_flows`.
enum CognitoManagedUserPoolClientAllowedOauthFlows implements TerraformEnum {
  code('code'),
  implicit('implicit'),
  clientCredentials('client_credentials');

  const CognitoManagedUserPoolClientAllowedOauthFlows(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cognito Managed User Pool Client Explicit Auth enum for `explicit_auth_flows`.
enum CognitoManagedUserPoolClientExplicitAuthFlows implements TerraformEnum {
  adminNoSrpAuth('ADMIN_NO_SRP_AUTH'),
  customAuthFlowOnly('CUSTOM_AUTH_FLOW_ONLY'),
  userPasswordAuth('USER_PASSWORD_AUTH'),
  allowAdminUserPasswordAuth('ALLOW_ADMIN_USER_PASSWORD_AUTH'),
  allowCustomAuth('ALLOW_CUSTOM_AUTH'),
  allowUserPasswordAuth('ALLOW_USER_PASSWORD_AUTH'),
  allowUserSrpAuth('ALLOW_USER_SRP_AUTH'),
  allowRefreshTokenAuth('ALLOW_REFRESH_TOKEN_AUTH'),
  allowUserAuth('ALLOW_USER_AUTH');

  const CognitoManagedUserPoolClientExplicitAuthFlows(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cognito Managed User Pool Client Prevent User Existence enum for `prevent_user_existence_errors`.
enum CognitoManagedUserPoolClientPreventUserExistenceErrors
    implements TerraformEnum {
  legacy('LEGACY'),
  enabled('ENABLED');

  const CognitoManagedUserPoolClientPreventUserExistenceErrors(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `name_pattern`, `name_prefix` on `aws_cognito_managed_user_pool_client`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.namePattern(...)`.
sealed class CognitoManagedUserPoolClientName {
  const CognitoManagedUserPoolClientName();

  /// Sets `name_pattern`.
  const factory CognitoManagedUserPoolClientName.namePattern(
    TfArg<String> namePattern,
  ) = CognitoManagedUserPoolClientNameNamePattern;

  /// Sets `name_prefix`.
  const factory CognitoManagedUserPoolClientName.namePrefix(
    TfArg<String> namePrefix,
  ) = CognitoManagedUserPoolClientNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CognitoManagedUserPoolClientName.namePattern] choice: sets `name_pattern`.
final class CognitoManagedUserPoolClientNameNamePattern
    extends CognitoManagedUserPoolClientName {
  const CognitoManagedUserPoolClientNameNamePattern(this.namePattern);

  final TfArg<String> namePattern;

  @override
  String get blockKey => 'name_pattern';

  @override
  Map<String, Object?> encode() => {'name_pattern': namePattern.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_pattern': namePattern};
}

/// The [CognitoManagedUserPoolClientName.namePrefix] choice: sets `name_prefix`.
final class CognitoManagedUserPoolClientNameNamePrefix
    extends CognitoManagedUserPoolClientName {
  const CognitoManagedUserPoolClientNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `analytics_configuration` block of
/// `aws_cognito_managed_user_pool_client` (derived from provider schema).
@immutable
final class CognitoManagedUserPoolClientAnalyticsConfiguration {
  const CognitoManagedUserPoolClientAnalyticsConfiguration({
    required this.application,
    this.externalId,
    this.roleArn,
    this.userDataShared,
  });

  final CognitoManagedUserPoolClientAnalyticsConfigurationApplication
  application;

  final TfArg<String>? externalId;

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<bool>? userDataShared;

  Map<String, Object?> encode() => {
    ...application.encode(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.encodeAs('arn').toTfJson(),
    if (userDataShared != null) 'user_data_shared': userDataShared!.toTfJson(),
  };
}

/// Exactly one of `application_arn`, `application_id` on the `analytics_configuration` block of `aws_cognito_managed_user_pool_client`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.applicationArn(...)`.
sealed class CognitoManagedUserPoolClientAnalyticsConfigurationApplication {
  const CognitoManagedUserPoolClientAnalyticsConfigurationApplication();

  /// Sets `application_arn`.
  const factory CognitoManagedUserPoolClientAnalyticsConfigurationApplication.applicationArn(
    TfArg<String> applicationArn,
  ) = CognitoManagedUserPoolClientAnalyticsConfigurationApplicationApplicationArn;

  /// Sets `application_id`.
  const factory CognitoManagedUserPoolClientAnalyticsConfigurationApplication.applicationId(
    TfArg<String> applicationId,
  ) = CognitoManagedUserPoolClientAnalyticsConfigurationApplicationApplicationId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CognitoManagedUserPoolClientAnalyticsConfigurationApplication.applicationArn] choice: sets `application_arn`.
final class CognitoManagedUserPoolClientAnalyticsConfigurationApplicationApplicationArn
    extends CognitoManagedUserPoolClientAnalyticsConfigurationApplication {
  const CognitoManagedUserPoolClientAnalyticsConfigurationApplicationApplicationArn(
    this.applicationArn,
  );

  final TfArg<String> applicationArn;

  @override
  String get blockKey => 'application_arn';

  @override
  Map<String, Object?> encode() => {
    'application_arn': applicationArn.toTfJson(),
  };
}

/// The [CognitoManagedUserPoolClientAnalyticsConfigurationApplication.applicationId] choice: sets `application_id`.
final class CognitoManagedUserPoolClientAnalyticsConfigurationApplicationApplicationId
    extends CognitoManagedUserPoolClientAnalyticsConfigurationApplication {
  const CognitoManagedUserPoolClientAnalyticsConfigurationApplicationApplicationId(
    this.applicationId,
  );

  final TfArg<String> applicationId;

  @override
  String get blockKey => 'application_id';

  @override
  Map<String, Object?> encode() => {'application_id': applicationId.toTfJson()};
}

/// Typed helper for the `refresh_token_rotation` block of
/// `aws_cognito_managed_user_pool_client` (derived from provider schema).
@immutable
final class CognitoManagedUserPoolClientRefreshTokenRotation {
  const CognitoManagedUserPoolClientRefreshTokenRotation({
    required this.feature,
    this.retryGracePeriodSeconds,
  });

  final TfArg<CognitoManagedUserPoolClientRefreshTokenRotationFeature> feature;

  final TfArg<num>? retryGracePeriodSeconds;

  Map<String, Object?> encode() => {
    'feature': feature.toTfJson(),
    if (retryGracePeriodSeconds != null)
      'retry_grace_period_seconds': retryGracePeriodSeconds!.toTfJson(),
  };
}

/// `feature` — derived from the provider schema description.
enum CognitoManagedUserPoolClientRefreshTokenRotationFeature
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const CognitoManagedUserPoolClientRefreshTokenRotationFeature(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `token_validity_units` block of
/// `aws_cognito_managed_user_pool_client` (derived from provider schema).
@immutable
final class CognitoManagedUserPoolClientTokenValidityUnits {
  const CognitoManagedUserPoolClientTokenValidityUnits({
    this.accessToken,
    this.idToken,
    this.refreshToken,
  });

  final TfArg<String>? accessToken;

  final TfArg<String>? idToken;

  final TfArg<String>? refreshToken;

  Map<String, Object?> encode() => {
    if (accessToken != null) 'access_token': accessToken!.toTfJson(),
    if (idToken != null) 'id_token': idToken!.toTfJson(),
    if (refreshToken != null) 'refresh_token': refreshToken!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cognito_managed_user_pool_client`.
final class AwsCognitoManagedUserPoolClient extends Resource {
  static const String tfType = 'aws_cognito_managed_user_pool_client';

  AwsCognitoManagedUserPoolClient({
    required super.localName,
    TfArg<num>? accessTokenValidity,
    List<TfArg<CognitoManagedUserPoolClientAllowedOauthFlows>>?
    allowedOauthFlows,
    TfArg<bool>? allowedOauthFlowsUserPoolClient,
    TfArg<List<String>>? allowedOauthScopes,
    TfArg<num>? authSessionValidity,
    TfArg<List<String>>? callbackUrls,
    TfArg<String>? defaultRedirectUri,
    TfArg<bool>? enablePropagateAdditionalUserContextData,
    TfArg<bool>? enableTokenRevocation,
    List<TfArg<CognitoManagedUserPoolClientExplicitAuthFlows>>?
    explicitAuthFlows,
    TfArg<num>? idTokenValidity,
    TfArg<List<String>>? logoutUrls,
    required CognitoManagedUserPoolClientName name,
    TfArg<CognitoManagedUserPoolClientPreventUserExistenceErrors>?
    preventUserExistenceErrors,
    TfArg<List<String>>? readAttributes,
    TfArg<num>? refreshTokenValidity,
    TfArg<String>? region,
    TfArg<List<String>>? supportedIdentityProviders,
    required TfArg<String> userPoolId,
    TfArg<List<String>>? writeAttributes,
    List<CognitoManagedUserPoolClientAnalyticsConfiguration>?
    analyticsConfiguration,
    List<CognitoManagedUserPoolClientRefreshTokenRotation>?
    refreshTokenRotation,
    List<CognitoManagedUserPoolClientTokenValidityUnits>? tokenValidityUnits,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accessTokenValidity != null)
             'access_token_validity': accessTokenValidity,
           if (allowedOauthFlows != null)
             'allowed_oauth_flows': TfArg.literal([
               for (final e in allowedOauthFlows) e.toTfJson(),
             ]),
           if (allowedOauthFlowsUserPoolClient != null)
             'allowed_oauth_flows_user_pool_client':
                 allowedOauthFlowsUserPoolClient,
           if (allowedOauthScopes != null)
             'allowed_oauth_scopes': allowedOauthScopes,
           if (authSessionValidity != null)
             'auth_session_validity': authSessionValidity,
           if (callbackUrls != null) 'callback_urls': callbackUrls,
           if (defaultRedirectUri != null)
             'default_redirect_uri': defaultRedirectUri,
           if (enablePropagateAdditionalUserContextData != null)
             'enable_propagate_additional_user_context_data':
                 enablePropagateAdditionalUserContextData,
           if (enableTokenRevocation != null)
             'enable_token_revocation': enableTokenRevocation,
           if (explicitAuthFlows != null)
             'explicit_auth_flows': TfArg.literal([
               for (final e in explicitAuthFlows) e.toTfJson(),
             ]),
           if (idTokenValidity != null) 'id_token_validity': idTokenValidity,
           if (logoutUrls != null) 'logout_urls': logoutUrls,
           ...name.argMap,
           if (preventUserExistenceErrors != null)
             'prevent_user_existence_errors': preventUserExistenceErrors,
           if (readAttributes != null) 'read_attributes': readAttributes,
           if (refreshTokenValidity != null)
             'refresh_token_validity': refreshTokenValidity,
           if (region != null) 'region': region,
           if (supportedIdentityProviders != null)
             'supported_identity_providers': supportedIdentityProviders,
           'user_pool_id': userPoolId,
           if (writeAttributes != null) 'write_attributes': writeAttributes,
           if (analyticsConfiguration != null)
             'analytics_configuration': TfArg.literal([
               for (final e in analyticsConfiguration) e.encode(),
             ]),
           if (refreshTokenRotation != null)
             'refresh_token_rotation': TfArg.literal([
               for (final e in refreshTokenRotation) e.encode(),
             ]),
           if (tokenValidityUnits != null)
             'token_validity_units': TfArg.literal([
               for (final e in tokenValidityUnits) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoManagedUserPoolClientSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoManagedUserPoolClient>`.
  RefTo<AwsCognitoManagedUserPoolClient> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');
}
