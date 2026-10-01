// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cognito_user_pool_client`.
const Set<String> _awsCognitoUserPoolClientSensitive = <String>{
  'client_secret',
};

/// Cognito User Pool Client Allowed Oauth enum for `allowed_oauth_flows`.
extension type const CognitoUserPoolClientAllowedOauthFlows._(TfArg<String> _)
    implements TfArg<String> {
  CognitoUserPoolClientAllowedOauthFlows.variable(String name)
    : this._(TfArg.variable(name));
  CognitoUserPoolClientAllowedOauthFlows.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoUserPoolClientAllowedOauthFlows.arg(TfArg<String> arg)
    : this._(arg);

  static const code = CognitoUserPoolClientAllowedOauthFlows._(
    TfArgLiteral('code'),
  );
  static const implicit = CognitoUserPoolClientAllowedOauthFlows._(
    TfArgLiteral('implicit'),
  );
  static const clientCredentials = CognitoUserPoolClientAllowedOauthFlows._(
    TfArgLiteral('client_credentials'),
  );

  static const List<CognitoUserPoolClientAllowedOauthFlows> values = [
    code,
    implicit,
    clientCredentials,
  ];
}

/// Cognito User Pool Client Explicit Auth enum for `explicit_auth_flows`.
extension type const CognitoUserPoolClientExplicitAuthFlows._(TfArg<String> _)
    implements TfArg<String> {
  CognitoUserPoolClientExplicitAuthFlows.variable(String name)
    : this._(TfArg.variable(name));
  CognitoUserPoolClientExplicitAuthFlows.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoUserPoolClientExplicitAuthFlows.arg(TfArg<String> arg)
    : this._(arg);

  static const adminNoSrpAuth = CognitoUserPoolClientExplicitAuthFlows._(
    TfArgLiteral('ADMIN_NO_SRP_AUTH'),
  );
  static const customAuthFlowOnly = CognitoUserPoolClientExplicitAuthFlows._(
    TfArgLiteral('CUSTOM_AUTH_FLOW_ONLY'),
  );
  static const userPasswordAuth = CognitoUserPoolClientExplicitAuthFlows._(
    TfArgLiteral('USER_PASSWORD_AUTH'),
  );
  static const allowAdminUserPasswordAuth =
      CognitoUserPoolClientExplicitAuthFlows._(
        TfArgLiteral('ALLOW_ADMIN_USER_PASSWORD_AUTH'),
      );
  static const allowCustomAuth = CognitoUserPoolClientExplicitAuthFlows._(
    TfArgLiteral('ALLOW_CUSTOM_AUTH'),
  );
  static const allowUserPasswordAuth = CognitoUserPoolClientExplicitAuthFlows._(
    TfArgLiteral('ALLOW_USER_PASSWORD_AUTH'),
  );
  static const allowUserSrpAuth = CognitoUserPoolClientExplicitAuthFlows._(
    TfArgLiteral('ALLOW_USER_SRP_AUTH'),
  );
  static const allowRefreshTokenAuth = CognitoUserPoolClientExplicitAuthFlows._(
    TfArgLiteral('ALLOW_REFRESH_TOKEN_AUTH'),
  );
  static const allowUserAuth = CognitoUserPoolClientExplicitAuthFlows._(
    TfArgLiteral('ALLOW_USER_AUTH'),
  );

  static const List<CognitoUserPoolClientExplicitAuthFlows> values = [
    adminNoSrpAuth,
    customAuthFlowOnly,
    userPasswordAuth,
    allowAdminUserPasswordAuth,
    allowCustomAuth,
    allowUserPasswordAuth,
    allowUserSrpAuth,
    allowRefreshTokenAuth,
    allowUserAuth,
  ];
}

/// Cognito User Pool Client Prevent User Existence enum for `prevent_user_existence_errors`.
extension type const CognitoUserPoolClientPreventUserExistenceErrors._(
  TfArg<String> _
) implements TfArg<String> {
  CognitoUserPoolClientPreventUserExistenceErrors.variable(String name)
    : this._(TfArg.variable(name));
  CognitoUserPoolClientPreventUserExistenceErrors.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoUserPoolClientPreventUserExistenceErrors.arg(TfArg<String> arg)
    : this._(arg);

  static const legacy = CognitoUserPoolClientPreventUserExistenceErrors._(
    TfArgLiteral('LEGACY'),
  );
  static const enabled = CognitoUserPoolClientPreventUserExistenceErrors._(
    TfArgLiteral('ENABLED'),
  );

  static const List<CognitoUserPoolClientPreventUserExistenceErrors> values = [
    legacy,
    enabled,
  ];
}

/// Typed helper for the `analytics_configuration` block of
/// `aws_cognito_user_pool_client` (derived from provider schema).
@immutable
final class CognitoUserPoolClientAnalyticsConfiguration {
  const CognitoUserPoolClientAnalyticsConfiguration({
    required this.application,
    this.externalId,
    this.roleArn,
    this.userDataShared,
  });

  final CognitoUserPoolClientApplication application;

  final TfArg<String>? externalId;

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<bool>? userDataShared;

  Map<String, Object?> encode() => {
    ...application.encode(),
    'external_id': ?externalId?.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'user_data_shared': ?userDataShared?.toTfJson(),
  };
}

/// Exactly one of `application_arn`, `application_id` on the `analytics_configuration` block of `aws_cognito_user_pool_client`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.applicationArn(...)`.
sealed class CognitoUserPoolClientApplication {
  const CognitoUserPoolClientApplication();

  /// Sets `application_arn`.
  const factory CognitoUserPoolClientApplication.applicationArn(
    TfArg<String> applicationArn,
  ) = CognitoUserPoolClientApplicationArn;

  /// Sets `application_id`.
  const factory CognitoUserPoolClientApplication.applicationId(
    TfArg<String> applicationId,
  ) = CognitoUserPoolClientApplicationId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CognitoUserPoolClientApplication.applicationArn] choice: sets `application_arn`.
final class CognitoUserPoolClientApplicationArn
    extends CognitoUserPoolClientApplication {
  const CognitoUserPoolClientApplicationArn(this.applicationArn);

  final TfArg<String> applicationArn;

  @override
  String get blockKey => 'application_arn';

  @override
  Map<String, Object?> encode() => {
    'application_arn': applicationArn.toTfJson(),
  };
}

/// The [CognitoUserPoolClientApplication.applicationId] choice: sets `application_id`.
final class CognitoUserPoolClientApplicationId
    extends CognitoUserPoolClientApplication {
  const CognitoUserPoolClientApplicationId(this.applicationId);

  final TfArg<String> applicationId;

  @override
  String get blockKey => 'application_id';

  @override
  Map<String, Object?> encode() => {'application_id': applicationId.toTfJson()};
}

/// Typed helper for the `refresh_token_rotation` block of
/// `aws_cognito_user_pool_client` (derived from provider schema).
@immutable
final class CognitoUserPoolClientRefreshTokenRotation {
  const CognitoUserPoolClientRefreshTokenRotation({
    required this.feature,
    this.retryGracePeriodSeconds,
  });

  final CognitoUserPoolClientFeature feature;

  final TfArg<num>? retryGracePeriodSeconds;

  Map<String, Object?> encode() => {
    'feature': feature.toTfJson(),
    'retry_grace_period_seconds': ?retryGracePeriodSeconds?.toTfJson(),
  };
}

/// `feature` — derived from the provider schema description.
extension type const CognitoUserPoolClientFeature._(TfArg<String> _)
    implements TfArg<String> {
  CognitoUserPoolClientFeature.variable(String name)
    : this._(TfArg.variable(name));
  CognitoUserPoolClientFeature.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoUserPoolClientFeature.arg(TfArg<String> arg) : this._(arg);

  static const enabled = CognitoUserPoolClientFeature._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = CognitoUserPoolClientFeature._(
    TfArgLiteral('DISABLED'),
  );

  static const List<CognitoUserPoolClientFeature> values = [enabled, disabled];
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
    'access_token': ?accessToken?.toTfJson(),
    'id_token': ?idToken?.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
  };
}

/// Factory wrapper for `aws_cognito_user_pool_client`.
final class AwsCognitoUserPoolClient extends Resource {
  static const String tfType = 'aws_cognito_user_pool_client';

  AwsCognitoUserPoolClient(
    super.localName, {
    TfArg<num>? accessTokenValidity,
    List<CognitoUserPoolClientAllowedOauthFlows>? allowedOauthFlows,
    TfArg<bool>? allowedOauthFlowsUserPoolClient,
    TfArg<List<String>>? allowedOauthScopes,
    TfArg<num>? authSessionValidity,
    TfArg<List<String>>? callbackUrls,
    TfArg<String>? defaultRedirectUri,
    TfArg<bool>? enablePropagateAdditionalUserContextData,
    TfArg<bool>? enableTokenRevocation,
    List<CognitoUserPoolClientExplicitAuthFlows>? explicitAuthFlows,
    TfArg<bool>? generateSecret,
    TfArg<num>? idTokenValidity,
    TfArg<List<String>>? logoutUrls,
    required TfArg<String> name,
    CognitoUserPoolClientPreventUserExistenceErrors? preventUserExistenceErrors,
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
           'access_token_validity': ?accessTokenValidity,
           if (allowedOauthFlows != null)
             'allowed_oauth_flows': TfArg.literal([
               for (final e in allowedOauthFlows) e.toTfJson(),
             ]),
           'allowed_oauth_flows_user_pool_client':
               ?allowedOauthFlowsUserPoolClient,
           'allowed_oauth_scopes': ?allowedOauthScopes,
           'auth_session_validity': ?authSessionValidity,
           'callback_urls': ?callbackUrls,
           'default_redirect_uri': ?defaultRedirectUri,
           'enable_propagate_additional_user_context_data':
               ?enablePropagateAdditionalUserContextData,
           'enable_token_revocation': ?enableTokenRevocation,
           if (explicitAuthFlows != null)
             'explicit_auth_flows': TfArg.literal([
               for (final e in explicitAuthFlows) e.toTfJson(),
             ]),
           'generate_secret': ?generateSecret,
           'id_token_validity': ?idTokenValidity,
           'logout_urls': ?logoutUrls,
           'name': name,
           'prevent_user_existence_errors': ?preventUserExistenceErrors,
           'read_attributes': ?readAttributes,
           'refresh_token_validity': ?refreshTokenValidity,
           'region': ?region,
           'supported_identity_providers': ?supportedIdentityProviders,
           'user_pool_id': userPoolId,
           'write_attributes': ?writeAttributes,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoUserPoolClient>`.
  RefTo<AwsCognitoUserPoolClient> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `access_token_validity` attribute.
  TfRef<num> get accessTokenValidity =>
      TfRef.attribute<num>(this, 'access_token_validity');

  /// Reference to `allowed_oauth_flows` attribute.
  TfRef<List<String>> get allowedOauthFlows =>
      TfRef.attribute<List<String>>(this, 'allowed_oauth_flows');

  /// Reference to `allowed_oauth_flows_user_pool_client` attribute.
  TfRef<bool> get allowedOauthFlowsUserPoolClient =>
      TfRef.attribute<bool>(this, 'allowed_oauth_flows_user_pool_client');

  /// Reference to `allowed_oauth_scopes` attribute.
  TfRef<List<String>> get allowedOauthScopes =>
      TfRef.attribute<List<String>>(this, 'allowed_oauth_scopes');

  /// Reference to `auth_session_validity` attribute.
  TfRef<num> get authSessionValidity =>
      TfRef.attribute<num>(this, 'auth_session_validity');

  /// Reference to `callback_urls` attribute.
  TfRef<List<String>> get callbackUrls =>
      TfRef.attribute<List<String>>(this, 'callback_urls');

  /// Reference to `default_redirect_uri` attribute.
  TfRef<String> get defaultRedirectUri =>
      TfRef.attribute<String>(this, 'default_redirect_uri');

  /// Reference to `enable_propagate_additional_user_context_data` attribute.
  TfRef<bool> get enablePropagateAdditionalUserContextData =>
      TfRef.attribute<bool>(
        this,
        'enable_propagate_additional_user_context_data',
      );

  /// Reference to `enable_token_revocation` attribute.
  TfRef<bool> get enableTokenRevocation =>
      TfRef.attribute<bool>(this, 'enable_token_revocation');

  /// Reference to `explicit_auth_flows` attribute.
  TfRef<List<String>> get explicitAuthFlows =>
      TfRef.attribute<List<String>>(this, 'explicit_auth_flows');

  /// Reference to `generate_secret` attribute.
  TfRef<bool> get generateSecret =>
      TfRef.attribute<bool>(this, 'generate_secret');

  /// Reference to `id_token_validity` attribute.
  TfRef<num> get idTokenValidity =>
      TfRef.attribute<num>(this, 'id_token_validity');

  /// Reference to `logout_urls` attribute.
  TfRef<List<String>> get logoutUrls =>
      TfRef.attribute<List<String>>(this, 'logout_urls');

  /// Reference to `prevent_user_existence_errors` attribute.
  TfRef<String> get preventUserExistenceErrors =>
      TfRef.attribute<String>(this, 'prevent_user_existence_errors');

  /// Reference to `read_attributes` attribute.
  TfRef<List<String>> get readAttributes =>
      TfRef.attribute<List<String>>(this, 'read_attributes');

  /// Reference to `refresh_token_validity` attribute.
  TfRef<num> get refreshTokenValidity =>
      TfRef.attribute<num>(this, 'refresh_token_validity');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `supported_identity_providers` attribute.
  TfRef<List<String>> get supportedIdentityProviders =>
      TfRef.attribute<List<String>>(this, 'supported_identity_providers');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolId => TfRef.attribute<String>(this, 'user_pool_id');

  /// Reference to `write_attributes` attribute.
  TfRef<List<String>> get writeAttributes =>
      TfRef.attribute<List<String>>(this, 'write_attributes');
}
