// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

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
    'passphrase': ?passphrase?.toTfJson(),
    'ssl_certificate': sslCertificate.toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredential {
  const IntegrationsAuthConfigDecryptedCredential({
    required this.credentialType,
    this.secret,
  });

  final TfArg<String> credentialType;

  final IntegrationsAuthConfigDecryptedCredentialSecret? secret;

  Map<String, Object?> encode() => {
    'credential_type': credentialType.toTfJson(),
    ...?secret?.encode(),
  };
}

/// At most one of `username_and_password`, `oauth2_authorization_code`, `oauth2_client_credentials`, `jwt`, `auth_token`, `service_account_credentials`, `oidc_token` on the `decrypted_credential` block of `google_integrations_auth_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.usernameAndPassword(...)`.
sealed class IntegrationsAuthConfigDecryptedCredentialSecret {
  const IntegrationsAuthConfigDecryptedCredentialSecret();

  /// Sets `username_and_password`.
  const factory IntegrationsAuthConfigDecryptedCredentialSecret.usernameAndPassword(
    IntegrationsAuthConfigDecryptedCredentialUsernameAndPassword
    usernameAndPassword,
  ) = IntegrationsAuthConfigDecryptedCredentialSecretUsernameAndPassword;

  /// Sets `oauth2_authorization_code`.
  const factory IntegrationsAuthConfigDecryptedCredentialSecret.oauth2AuthorizationCode(
    IntegrationsAuthConfigDecryptedCredentialOauth2AuthorizationCode
    oauth2AuthorizationCode,
  ) = IntegrationsAuthConfigDecryptedCredentialSecretOauth2AuthorizationCode;

  /// Sets `oauth2_client_credentials`.
  const factory IntegrationsAuthConfigDecryptedCredentialSecret.oauth2ClientCredentials(
    IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentials
    oauth2ClientCredentials,
  ) = IntegrationsAuthConfigDecryptedCredentialSecretOauth2ClientCredentials;

  /// Sets `jwt`.
  const factory IntegrationsAuthConfigDecryptedCredentialSecret.jwt(
    IntegrationsAuthConfigDecryptedCredentialJwt jwt,
  ) = IntegrationsAuthConfigDecryptedCredentialSecretJwt;

  /// Sets `auth_token`.
  const factory IntegrationsAuthConfigDecryptedCredentialSecret.authToken(
    IntegrationsAuthConfigDecryptedCredentialAuthToken authToken,
  ) = IntegrationsAuthConfigDecryptedCredentialSecretAuthToken;

  /// Sets `service_account_credentials`.
  const factory IntegrationsAuthConfigDecryptedCredentialSecret.serviceAccountCredentials(
    IntegrationsAuthConfigDecryptedCredentialServiceAccountCredentials
    serviceAccountCredentials,
  ) = IntegrationsAuthConfigDecryptedCredentialSecretServiceAccountCredentials;

  /// Sets `oidc_token`.
  const factory IntegrationsAuthConfigDecryptedCredentialSecret.oidcToken(
    IntegrationsAuthConfigDecryptedCredentialOidcToken oidcToken,
  ) = IntegrationsAuthConfigDecryptedCredentialSecretOidcToken;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [IntegrationsAuthConfigDecryptedCredentialSecret.usernameAndPassword] choice: sets `username_and_password`.
final class IntegrationsAuthConfigDecryptedCredentialSecretUsernameAndPassword
    extends IntegrationsAuthConfigDecryptedCredentialSecret {
  const IntegrationsAuthConfigDecryptedCredentialSecretUsernameAndPassword(
    this.usernameAndPassword,
  );

  final IntegrationsAuthConfigDecryptedCredentialUsernameAndPassword
  usernameAndPassword;

  @override
  String get blockKey => 'username_and_password';

  @override
  Map<String, Object?> encode() => {
    'username_and_password': usernameAndPassword.encode(),
  };
}

/// The [IntegrationsAuthConfigDecryptedCredentialSecret.oauth2AuthorizationCode] choice: sets `oauth2_authorization_code`.
final class IntegrationsAuthConfigDecryptedCredentialSecretOauth2AuthorizationCode
    extends IntegrationsAuthConfigDecryptedCredentialSecret {
  const IntegrationsAuthConfigDecryptedCredentialSecretOauth2AuthorizationCode(
    this.oauth2AuthorizationCode,
  );

  final IntegrationsAuthConfigDecryptedCredentialOauth2AuthorizationCode
  oauth2AuthorizationCode;

  @override
  String get blockKey => 'oauth2_authorization_code';

  @override
  Map<String, Object?> encode() => {
    'oauth2_authorization_code': oauth2AuthorizationCode.encode(),
  };
}

/// The [IntegrationsAuthConfigDecryptedCredentialSecret.oauth2ClientCredentials] choice: sets `oauth2_client_credentials`.
final class IntegrationsAuthConfigDecryptedCredentialSecretOauth2ClientCredentials
    extends IntegrationsAuthConfigDecryptedCredentialSecret {
  const IntegrationsAuthConfigDecryptedCredentialSecretOauth2ClientCredentials(
    this.oauth2ClientCredentials,
  );

  final IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentials
  oauth2ClientCredentials;

  @override
  String get blockKey => 'oauth2_client_credentials';

  @override
  Map<String, Object?> encode() => {
    'oauth2_client_credentials': oauth2ClientCredentials.encode(),
  };
}

/// The [IntegrationsAuthConfigDecryptedCredentialSecret.jwt] choice: sets `jwt`.
final class IntegrationsAuthConfigDecryptedCredentialSecretJwt
    extends IntegrationsAuthConfigDecryptedCredentialSecret {
  const IntegrationsAuthConfigDecryptedCredentialSecretJwt(this.jwt);

  final IntegrationsAuthConfigDecryptedCredentialJwt jwt;

  @override
  String get blockKey => 'jwt';

  @override
  Map<String, Object?> encode() => {'jwt': jwt.encode()};
}

/// The [IntegrationsAuthConfigDecryptedCredentialSecret.authToken] choice: sets `auth_token`.
final class IntegrationsAuthConfigDecryptedCredentialSecretAuthToken
    extends IntegrationsAuthConfigDecryptedCredentialSecret {
  const IntegrationsAuthConfigDecryptedCredentialSecretAuthToken(
    this.authToken,
  );

  final IntegrationsAuthConfigDecryptedCredentialAuthToken authToken;

  @override
  String get blockKey => 'auth_token';

  @override
  Map<String, Object?> encode() => {'auth_token': authToken.encode()};
}

/// The [IntegrationsAuthConfigDecryptedCredentialSecret.serviceAccountCredentials] choice: sets `service_account_credentials`.
final class IntegrationsAuthConfigDecryptedCredentialSecretServiceAccountCredentials
    extends IntegrationsAuthConfigDecryptedCredentialSecret {
  const IntegrationsAuthConfigDecryptedCredentialSecretServiceAccountCredentials(
    this.serviceAccountCredentials,
  );

  final IntegrationsAuthConfigDecryptedCredentialServiceAccountCredentials
  serviceAccountCredentials;

  @override
  String get blockKey => 'service_account_credentials';

  @override
  Map<String, Object?> encode() => {
    'service_account_credentials': serviceAccountCredentials.encode(),
  };
}

/// The [IntegrationsAuthConfigDecryptedCredentialSecret.oidcToken] choice: sets `oidc_token`.
final class IntegrationsAuthConfigDecryptedCredentialSecretOidcToken
    extends IntegrationsAuthConfigDecryptedCredentialSecret {
  const IntegrationsAuthConfigDecryptedCredentialSecretOidcToken(
    this.oidcToken,
  );

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
    'token': ?token?.toTfJson(),
    'type': ?type?.toTfJson(),
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
    'jwt_header': ?jwtHeader?.toTfJson(),
    'jwt_payload': ?jwtPayload?.toTfJson(),
    'secret': ?secret?.toTfJson(),
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
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
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
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'request_type': ?requestType?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'token_params': ?tokenParams?.encode(),
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
    'key': ?key?.encode(),
    'value': ?value?.encode(),
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

  Map<String, Object?> encode() => {'literal_value': ?literalValue?.encode()};
}

/// Typed helper for the `decrypted_credential.oauth2_client_credentials.token_params.entries.key.literal_value` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesKeyLiteralValue {
  const IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesKeyLiteralValue({
    this.stringValue,
  });

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {'string_value': ?stringValue?.toTfJson()};
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

  Map<String, Object?> encode() => {'literal_value': ?literalValue?.encode()};
}

/// Typed helper for the `decrypted_credential.oauth2_client_credentials.token_params.entries.value.literal_value` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesValueLiteralValue {
  const IntegrationsAuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntriesValueLiteralValue({
    this.stringValue,
  });

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {'string_value': ?stringValue?.toTfJson()};
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

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
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

  final RefTo<GoogleServiceAccount>? serviceAccount;

  Map<String, Object?> encode() => {
    'scope': ?scope?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
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
    'password': ?password?.toTfJson(),
    'username': ?username?.toTfJson(),
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
///     secret: .usernameAndPassword(
///       IntegrationsAuthConfigDecryptedCredentialUsernameAndPassword(
///         username: TfArg.literal('terradart-dummy'),
///         password: TfArg.literal('terradart-dummy-password'),
///       ),
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
           'description': ?description,
           if (decryptedCredential != null)
             'decrypted_credential': TfArg.literal(
               decryptedCredential.encode(),
             ),
           if (clientCertificate != null)
             'client_certificate': TfArg.literal(clientCertificate.encode()),
           'visibility': ?visibility,
           'expiry_notification_duration': ?expiryNotificationDuration,
           'override_valid_time': ?overrideValidTime,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIntegrationsAuthConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIntegrationsAuthConfig>`.
  RefTo<GoogleIntegrationsAuthConfig> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `expiry_notification_duration` attribute.
  TfRef<List<String>> get expiryNotificationDurationRef =>
      TfRef.attribute<List<String>>(this, 'expiry_notification_duration');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `override_valid_time` attribute.
  TfRef<String> get overrideValidTimeRef =>
      TfRef.attribute<String>(this, 'override_valid_time');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `visibility` attribute.
  TfRef<String> get visibilityRef =>
      TfRef.attribute<String>(this, 'visibility');
}
