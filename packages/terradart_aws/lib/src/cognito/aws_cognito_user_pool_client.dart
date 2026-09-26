// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user_pool_client`.
const Set<String> _awsCognitoUserPoolClientSensitive = <String>{
  'client_secret',
};

/// Typed helper for the `analytics_configuration` block of
/// `aws_cognito_user_pool_client` (derived from provider schema).
@immutable
final class CognitoUserPoolClientAnalyticsConfiguration {
  const CognitoUserPoolClientAnalyticsConfiguration({
    this.applicationArn,
    this.applicationId,
    this.externalId,
    this.roleArn,
    this.userDataShared,
  });

  final TfArg<String>? applicationArn;

  final TfArg<String>? applicationId;

  final TfArg<String>? externalId;

  final TfArg<String>? roleArn;

  final TfArg<bool>? userDataShared;

  Map<String, Object?> encode() => {
    if (applicationArn != null) 'application_arn': applicationArn!.toTfJson(),
    if (applicationId != null) 'application_id': applicationId!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (userDataShared != null) 'user_data_shared': userDataShared!.toTfJson(),
  };
}

/// Typed helper for the `refresh_token_rotation` block of
/// `aws_cognito_user_pool_client` (derived from provider schema).
@immutable
final class CognitoUserPoolClientRefreshTokenRotation {
  const CognitoUserPoolClientRefreshTokenRotation({
    required this.feature,
    this.retryGracePeriodSeconds,
  });

  final TfArg<String> feature;

  final TfArg<num>? retryGracePeriodSeconds;

  Map<String, Object?> encode() => {
    'feature': feature.toTfJson(),
    if (retryGracePeriodSeconds != null)
      'retry_grace_period_seconds': retryGracePeriodSeconds!.toTfJson(),
  };
}

/// Typed helper for the `token_validity_units` block of
/// `aws_cognito_user_pool_client` (derived from provider schema).
@immutable
final class CognitoUserPoolClientTokenValidityUnits {
  const CognitoUserPoolClientTokenValidityUnits({
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

/// Factory wrapper for `aws_cognito_user_pool_client`.
final class AwsCognitoUserPoolClient extends Resource {
  static const String tfType = 'aws_cognito_user_pool_client';

  AwsCognitoUserPoolClient({
    required super.localName,
    TfArg<num>? accessTokenValidity,
    TfArg<List<String>>? allowedOauthFlows,
    TfArg<bool>? allowedOauthFlowsUserPoolClient,
    TfArg<List<String>>? allowedOauthScopes,
    TfArg<num>? authSessionValidity,
    TfArg<List<String>>? callbackUrls,
    TfArg<String>? defaultRedirectUri,
    TfArg<bool>? enablePropagateAdditionalUserContextData,
    TfArg<bool>? enableTokenRevocation,
    TfArg<List<String>>? explicitAuthFlows,
    TfArg<bool>? generateSecret,
    TfArg<num>? idTokenValidity,
    TfArg<List<String>>? logoutUrls,
    required TfArg<String> name,
    TfArg<String>? preventUserExistenceErrors,
    TfArg<List<String>>? readAttributes,
    TfArg<num>? refreshTokenValidity,
    TfArg<String>? region,
    TfArg<List<String>>? supportedIdentityProviders,
    required TfArg<String> userPoolId,
    TfArg<List<String>>? writeAttributes,
    List<CognitoUserPoolClientAnalyticsConfiguration>? analyticsConfiguration,
    List<CognitoUserPoolClientRefreshTokenRotation>? refreshTokenRotation,
    List<CognitoUserPoolClientTokenValidityUnits>? tokenValidityUnits,
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
             'allowed_oauth_flows': allowedOauthFlows,
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
             'explicit_auth_flows': explicitAuthFlows,
           if (generateSecret != null) 'generate_secret': generateSecret,
           if (idTokenValidity != null) 'id_token_validity': idTokenValidity,
           if (logoutUrls != null) 'logout_urls': logoutUrls,
           'name': name,
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
  Set<String> get sensitiveFields => _awsCognitoUserPoolClientSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');
}
