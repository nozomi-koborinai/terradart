// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user_pool_client`.
const Set<String> _awsCognitoUserPoolClientSensitive = <String>{
  'client_secret',
};

/// Factory wrapper for `aws_cognito_user_pool_client`.
final class DataAwsCognitoUserPoolClient extends Data {
  static const String tfType = 'aws_cognito_user_pool_client';

  DataAwsCognitoUserPoolClient({
    required super.localName,
    required TfArg<String> clientId,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_id': clientId,
           if (region != null) 'region': region,
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserPoolClientSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `analytics_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get analyticsConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'analytics_configuration',
      );

  /// Reference to `callback_urls` attribute.
  TfRef<List<String>> get callbackUrls =>
      TfRef.attribute<List<String>>(this, 'callback_urls');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

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

  /// Reference to `refresh_token_rotation` attribute.
  TfRef<List<Map<String, Object?>>> get refreshTokenRotation =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'refresh_token_rotation',
      );

  /// Reference to `refresh_token_validity` attribute.
  TfRef<num> get refreshTokenValidity =>
      TfRef.attribute<num>(this, 'refresh_token_validity');

  /// Reference to `supported_identity_providers` attribute.
  TfRef<List<String>> get supportedIdentityProviders =>
      TfRef.attribute<List<String>>(this, 'supported_identity_providers');

  /// Reference to `token_validity_units` attribute.
  TfRef<List<Map<String, Object?>>> get tokenValidityUnits =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'token_validity_units');

  /// Reference to `write_attributes` attribute.
  TfRef<List<String>> get writeAttributes =>
      TfRef.attribute<List<String>>(this, 'write_attributes');
}
