// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_integrations_auth_config`.
const Set<String> _googleIntegrationsAuthConfigSensitive = <String>{};

/// Integrations Auth Config Credential enum for `credential_type`.
enum IntegrationsAuthConfigCredentialType implements TerraformEnum {
  usernameAndPassword('USERNAME_AND_PASSWORD'),
  oauth2AuthorizationCode('OAUTH2_AUTHORIZATION_CODE'),
  oauth2Implicit('OAUTH2_IMPLICIT'),
  oauth2ClientCredentials('OAUTH2_CLIENT_CREDENTIALS'),
  oauth2ResoruceOwnerCredentials('OAUTH2_RESORUCE_OWNER_CREDENTIALS'),
  jwt('JWT'),
  authToken('AUTH_TOKEN'),
  serviceAccount('SERVICE_ACCOUNT'),
  clientCertificateOnly('CLIENT_CERTIFICATE_ONLY'),
  oidcToken('OIDC_TOKEN');

  const IntegrationsAuthConfigCredentialType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Integrations Auth Config enum for `state`.
enum IntegrationsAuthConfigState implements TerraformEnum {
  valid('VALID'),
  invalid('INVALID'),
  softDeleted('SOFT_DELETED'),
  expired('EXPIRED'),
  unauthorized('UNAUTHORIZED'),
  unsupported('UNSUPPORTED');

  const IntegrationsAuthConfigState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Integrations Auth Config enum for `visibility`.
enum IntegrationsAuthConfigVisibility implements TerraformEnum {
  private('PRIVATE'),
  clientVisible('CLIENT_VISIBLE');

  const IntegrationsAuthConfigVisibility(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `client_certificate` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigClientCertificate {
  const IntegrationsAuthConfigClientCertificate({
    required this.encryptedPrivateKey,
    this.passphrase,
    required this.sslCertificate,
  });

  final TfArg<String> encryptedPrivateKey;

  final TfArg<String>? passphrase;

  final TfArg<String> sslCertificate;

  Map<String, Object?> encode() => {
    'encrypted_private_key': encryptedPrivateKey.toTfJson(),
    if (passphrase != null) 'passphrase': passphrase!.toTfJson(),
    'ssl_certificate': sslCertificate.toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredential {
  const IntegrationsAuthConfigDecryptedCredential({
    required this.credentialType,
    this.usernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken,
  });

  final TfArg<String> credentialType;

  final IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken?
  usernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken;

  Map<String, Object?> encode() => {
    'credential_type': credentialType.toTfJson(),
    ...?usernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken
        ?.encode(),
  };
}

/// At most one of `username_and_password`, `oauth2_authorization_code`, `oauth2_client_credentials`, `jwt`, `auth_token`, `service_account_credentials`, `oidc_token` on the `decrypted_credential` block of `google_integrations_auth_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken {
  const IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `username_and_password` (one of the [IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken] choices).
final class IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOption
    extends
        IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken {
  const IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOption({
    required this.usernameAndPassword,
  });

  final IntegrationsAuthConfigDecryptedCredentialUsernameAndPassword
  usernameAndPassword;

  @override
  String get blockKey => 'username_and_password';

  @override
  Map<String, Object?> encode() => {
    'username_and_password': usernameAndPassword.encode(),
  };
}

/// Sets `oauth2_authorization_code` (one of the [IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken] choices).
final class IntegrationsAuthConfigDecryptedCredentialOauth2AuthorizationCodeOption
    extends
        IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken {
  const IntegrationsAuthConfigDecryptedCredentialOauth2AuthorizationCodeOption({
    required this.oauth2AuthorizationCode,
  });

  final IntegrationsAuthConfigDecryptedCredentialOauth2AuthorizationCode
  oauth2AuthorizationCode;

  @override
  String get blockKey => 'oauth2_authorization_code';

  @override
  Map<String, Object?> encode() => {
    'oauth2_authorization_code': oauth2AuthorizationCode.encode(),
  };
}

/// Sets `oauth2_client_credentials` (one of the [IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken] choices).
final class IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsOption
    extends
        IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken {
  const IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsOption({
    required this.oauth2ClientCredentials,
  });

  final IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentials
  oauth2ClientCredentials;

  @override
  String get blockKey => 'oauth2_client_credentials';

  @override
  Map<String, Object?> encode() => {
    'oauth2_client_credentials': oauth2ClientCredentials.encode(),
  };
}

/// Sets `jwt` (one of the [IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken] choices).
final class IntegrationsAuthConfigDecryptedCredentialJwtOption
    extends
        IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken {
  const IntegrationsAuthConfigDecryptedCredentialJwtOption({required this.jwt});

  final IntegrationsAuthConfigDecryptedCredentialJwt jwt;

  @override
  String get blockKey => 'jwt';

  @override
  Map<String, Object?> encode() => {'jwt': jwt.encode()};
}

/// Sets `auth_token` (one of the [IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken] choices).
final class IntegrationsAuthConfigDecryptedCredentialAuthTokenOption
    extends
        IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken {
  const IntegrationsAuthConfigDecryptedCredentialAuthTokenOption({
    required this.authToken,
  });

  final IntegrationsAuthConfigDecryptedCredentialAuthToken authToken;

  @override
  String get blockKey => 'auth_token';

  @override
  Map<String, Object?> encode() => {'auth_token': authToken.encode()};
}

/// Sets `service_account_credentials` (one of the [IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken] choices).
final class IntegrationsAuthConfigDecryptedCredentialServiceAccountCredentialsOption
    extends
        IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken {
  const IntegrationsAuthConfigDecryptedCredentialServiceAccountCredentialsOption({
    required this.serviceAccountCredentials,
  });

  final IntegrationsAuthConfigDecryptedCredentialServiceAccountCredentials
  serviceAccountCredentials;

  @override
  String get blockKey => 'service_account_credentials';

  @override
  Map<String, Object?> encode() => {
    'service_account_credentials': serviceAccountCredentials.encode(),
  };
}

/// Sets `oidc_token` (one of the [IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken] choices).
final class IntegrationsAuthConfigDecryptedCredentialOidcTokenOption
    extends
        IntegrationsAuthConfigDecryptedCredentialUsernameAndPasswordOrOauth2AuthorizationCodeOrOauth2ClientCredentialsOrJwtOrAuthTokenOrServiceAccountCredentialsOrOidcToken {
  const IntegrationsAuthConfigDecryptedCredentialOidcTokenOption({
    required this.oidcToken,
  });

  final IntegrationsAuthConfigDecryptedCredentialOidcToken oidcToken;

  @override
  String get blockKey => 'oidc_token';

  @override
  Map<String, Object?> encode() => {'oidc_token': oidcToken.encode()};
}

/// Typed helper for the `decrypted_credential.auth_token` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialAuthToken {
  const IntegrationsAuthConfigDecryptedCredentialAuthToken({
    this.token,
    this.type,
  });

  final TfArg<String>? token;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (token != null) 'token': token!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential.jwt` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialJwt {
  const IntegrationsAuthConfigDecryptedCredentialJwt({
    this.jwtHeader,
    this.jwtPayload,
    this.secret,
  });

  final TfArg<String>? jwtHeader;

  final TfArg<String>? jwtPayload;

  final TfArg<String>? secret;

  Map<String, Object?> encode() => {
    if (jwtHeader != null) 'jwt_header': jwtHeader!.toTfJson(),
    if (jwtPayload != null) 'jwt_payload': jwtPayload!.toTfJson(),
    if (secret != null) 'secret': secret!.toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential.oauth2_authorization_code` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialOauth2AuthorizationCode {
  const IntegrationsAuthConfigDecryptedCredentialOauth2AuthorizationCode({
    this.authEndpoint,
    this.clientId,
    this.clientSecret,
    this.scope,
    this.tokenEndpoint,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? scope;

  final TfArg<String>? tokenEndpoint;

  Map<String, Object?> encode() => {
    if (authEndpoint != null) 'auth_endpoint': authEndpoint!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential.oauth2_client_credentials` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentials {
  const IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentials({
    this.clientId,
    this.clientSecret,
    this.requestType,
    this.scope,
    this.tokenEndpoint,
    this.tokenParams,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<
    IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsRequestType
  >?
  requestType;

  final TfArg<String>? scope;

  final TfArg<String>? tokenEndpoint;

  final IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams?
  tokenParams;

  Map<String, Object?> encode() => {
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (requestType != null) 'request_type': requestType!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (tokenParams != null) 'token_params': tokenParams!.encode(),
  };
}

/// `request_type` — derived from the provider schema description.
enum IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsRequestType
    implements TerraformEnum {
  requestTypeUnspecified('REQUEST_TYPE_UNSPECIFIED'),
  requestBody('REQUEST_BODY'),
  queryParameters('QUERY_PARAMETERS'),
  encodedHeader('ENCODED_HEADER');

  const IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsRequestType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `decrypted_credential.oauth2_client_credentials.token_params` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams {
  const IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams({
    this.entries,
  });

  final List<
    IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntries
  >?
  entries;

  Map<String, Object?> encode() => {
    if (entries != null) 'entries': [for (final e in entries!) e.encode()],
  };
}

/// Typed helper for the `decrypted_credential.oauth2_client_credentials.token_params.entries` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntries {
  const IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntries({
    this.key,
    this.value,
  });

  final IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesKey?
  key;

  final IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesValue?
  value;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.encode(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `decrypted_credential.oauth2_client_credentials.token_params.entries.key` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesKey {
  const IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesKey({
    this.literalValue,
  });

  final IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesKeyLiteralValue?
  literalValue;

  Map<String, Object?> encode() => {
    if (literalValue != null) 'literal_value': literalValue!.encode(),
  };
}

/// Typed helper for the `decrypted_credential.oauth2_client_credentials.token_params.entries.key.literal_value` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesKeyLiteralValue {
  const IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesKeyLiteralValue({
    this.stringValue,
  });

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential.oauth2_client_credentials.token_params.entries.value` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesValue {
  const IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesValue({
    this.literalValue,
  });

  final IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesValueLiteralValue?
  literalValue;

  Map<String, Object?> encode() => {
    if (literalValue != null) 'literal_value': literalValue!.encode(),
  };
}

/// Typed helper for the `decrypted_credential.oauth2_client_credentials.token_params.entries.value.literal_value` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesValueLiteralValue {
  const IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesValueLiteralValue({
    this.stringValue,
  });

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential.oidc_token` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialOidcToken {
  const IntegrationsAuthConfigDecryptedCredentialOidcToken({
    this.audience,
    this.serviceAccountEmail,
  });

  final TfArg<String>? audience;

  final TfArg<String>? serviceAccountEmail;

  Map<String, Object?> encode() => {
    if (audience != null) 'audience': audience!.toTfJson(),
    if (serviceAccountEmail != null)
      'service_account_email': serviceAccountEmail!.toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential.service_account_credentials` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialServiceAccountCredentials {
  const IntegrationsAuthConfigDecryptedCredentialServiceAccountCredentials({
    this.scope,
    this.serviceAccount,
  });

  final TfArg<String>? scope;

  final TfArg<String>? serviceAccount;

  Map<String, Object?> encode() => {
    if (scope != null) 'scope': scope!.toTfJson(),
    if (serviceAccount != null) 'service_account': serviceAccount!.toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential.username_and_password` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialUsernameAndPassword {
  const IntegrationsAuthConfigDecryptedCredentialUsernameAndPassword({
    this.password,
    this.username,
  });

  final TfArg<String>? password;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    if (password != null) 'password': password!.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Factory wrapper for `google_integrations_auth_config`.
///
/// The AuthConfig resource use to hold channels and connection config data.
///
/// Application Integration **auth config** — credential metadata
/// (`authConfigs`) for a regional client. Creating the profile does
/// not execute integration flows (billing SKUs are flow execution /
/// data processed).
///
/// Required: [displayName] and [location] (must match the provisioned
/// [GoogleIntegrationsClient]). Optional [decryptedCredential] holds
/// one credential kind (`username_and_password`, OAuth, JWT, OIDC,
/// service account, auth token). Those kinds are MM `conflicts`, not
/// `exactly_one_of` — they stay optional nested types. Optional
/// [visibility] is [IntegrationsAuthConfigVisibility]. Omit
/// [clientCertificate] unless you have a real PEM pair.
///
/// Enable `integrations.googleapis.com` via [GoogleProjectService]
/// and provision the client before apply. Set [deletionPolicy] to
/// `DELETE` so destroy removes the unused profile.
///
/// Example (dummy username/password — not a real secret):
/// ```dart
/// GoogleIntegrationsAuthConfig(
///   localName: 'auth_config',
///   displayName: TfArg.literal('terradart-dummy-basic'),
///   location: TfArg.literal('us-east1'),
///   decryptedCredential: IntegrationsAuthConfigDecryptedCredential(
///     credentialType: TfArg.literal('USERNAME_AND_PASSWORD'),
///     usernameAndPassword:
///         IntegrationsAuthConfigDecryptedCredentialUsernameAndPassword(
///       username: TfArg.literal('terradart-dummy'),
///       password: TfArg.literal('terradart-dummy-password'),
///     ),
///   ),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleIntegrationsAuthConfig extends Resource {
  static const String tfType = 'google_integrations_auth_config';

  GoogleIntegrationsAuthConfig({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> location,
    TfArg<String>? description,
    IntegrationsAuthConfigDecryptedCredential? decryptedCredential,
    IntegrationsAuthConfigClientCertificate? clientCertificate,
    TfArg<IntegrationsAuthConfigVisibility>? visibility,
    TfArg<List<String>>? expiryNotificationDuration,
    TfArg<String>? overrideValidTime,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'location': location,
           if (description != null) 'description': description,
           if (decryptedCredential != null)
             'decrypted_credential': TfArg.literal(
               decryptedCredential.encode(),
             ),
           if (clientCertificate != null)
             'client_certificate': TfArg.literal(clientCertificate.encode()),
           if (visibility != null) 'visibility': visibility,
           if (expiryNotificationDuration != null)
             'expiry_notification_duration': expiryNotificationDuration,
           if (overrideValidTime != null)
             'override_valid_time': overrideValidTime,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIntegrationsAuthConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_id` attribute.
  TfRef<String> get certificateId =>
      TfRef.attribute<String>(this, 'certificate_id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `creator_email` attribute.
  TfRef<String> get creatorEmail =>
      TfRef.attribute<String>(this, 'creator_email');

  /// Reference to `credential_type` attribute.
  TfRef<String> get credentialType =>
      TfRef.attribute<String>(this, 'credential_type');

  /// Reference to `encrypted_credential` attribute.
  TfRef<String> get encryptedCredential =>
      TfRef.attribute<String>(this, 'encrypted_credential');

  /// Reference to `last_modifier_email` attribute.
  TfRef<String> get lastModifierEmail =>
      TfRef.attribute<String>(this, 'last_modifier_email');

  /// Reference to `reason` attribute.
  TfRef<String> get reason => TfRef.attribute<String>(this, 'reason');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `valid_time` attribute.
  TfRef<String> get validTime => TfRef.attribute<String>(this, 'valid_time');
}
