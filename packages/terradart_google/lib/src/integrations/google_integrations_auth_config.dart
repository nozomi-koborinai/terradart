// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_integrations_auth_config`.
const Set<String> _googleIntegrationsAuthConfigSensitive = <String>{};

/// Integrations Auth Config enum for `visibility`.
extension type const IntegrationsAuthConfigVisibility._(TfArg<String> _)
    implements TfArg<String> {
  IntegrationsAuthConfigVisibility.variable(String name)
    : this._(TfArg.variable(name));
  IntegrationsAuthConfigVisibility.expression(String template)
    : this._(TfArg.expression(template));
  const IntegrationsAuthConfigVisibility.arg(TfArg<String> arg) : this._(arg);

  static const private = IntegrationsAuthConfigVisibility._(
    TfArgLiteral('PRIVATE'),
  );
  static const clientVisible = IntegrationsAuthConfigVisibility._(
    TfArgLiteral('CLIENT_VISIBLE'),
  );

  static const List<IntegrationsAuthConfigVisibility> values = [
    private,
    clientVisible,
  ];
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

  @internal
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

  final RefTo<GoogleIntegrationsAuthConfig> credentialType;

  final IntegrationsAuthConfigSecret? secret;

  @internal
  Map<String, Object?> encode() => {
    'credential_type': credentialType.encodeAs('credential_type').toTfJson(),
    ...?secret?.encode(),
  };
}

/// At most one of `username_and_password`, `oauth2_authorization_code`, `oauth2_client_credentials`, `jwt`, `auth_token`, `service_account_credentials`, `oidc_token` on the `decrypted_credential` block of `google_integrations_auth_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.usernameAndPassword(...)`.
sealed class IntegrationsAuthConfigSecret {
  const IntegrationsAuthConfigSecret();

  /// Sets `username_and_password`.
  const factory IntegrationsAuthConfigSecret.usernameAndPassword(
    IntegrationsAuthConfigUsernameAndPassword usernameAndPassword,
  ) = IntegrationsAuthConfigSecretUsernameAndPassword;

  /// Sets `oauth2_authorization_code`.
  const factory IntegrationsAuthConfigSecret.oauth2AuthorizationCode(
    IntegrationsAuthConfigOauth2AuthorizationCode oauth2AuthorizationCode,
  ) = IntegrationsAuthConfigSecretOauth2AuthorizationCode;

  /// Sets `oauth2_client_credentials`.
  const factory IntegrationsAuthConfigSecret.oauth2ClientCredentials(
    IntegrationsAuthConfigOauth2ClientCredentials oauth2ClientCredentials,
  ) = IntegrationsAuthConfigSecretOauth2ClientCredentials;

  /// Sets `jwt`.
  const factory IntegrationsAuthConfigSecret.jwt(
    IntegrationsAuthConfigJwt jwt,
  ) = IntegrationsAuthConfigSecretJwt;

  /// Sets `auth_token`.
  const factory IntegrationsAuthConfigSecret.authToken(
    IntegrationsAuthConfigAuthToken authToken,
  ) = IntegrationsAuthConfigSecretAuthToken;

  /// Sets `service_account_credentials`.
  const factory IntegrationsAuthConfigSecret.serviceAccountCredentials(
    IntegrationsAuthConfigServiceAccountCredentials serviceAccountCredentials,
  ) = IntegrationsAuthConfigSecretServiceAccountCredentials;

  /// Sets `oidc_token`.
  const factory IntegrationsAuthConfigSecret.oidcToken(
    IntegrationsAuthConfigOidcToken oidcToken,
  ) = IntegrationsAuthConfigSecretOidcToken;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [IntegrationsAuthConfigSecret.usernameAndPassword] choice: sets `username_and_password`.
final class IntegrationsAuthConfigSecretUsernameAndPassword
    extends IntegrationsAuthConfigSecret {
  const IntegrationsAuthConfigSecretUsernameAndPassword(
    this.usernameAndPassword,
  );

  final IntegrationsAuthConfigUsernameAndPassword usernameAndPassword;

  @internal
  @override
  String get blockKey => 'username_and_password';

  @internal
  @override
  Map<String, Object?> encode() => {
    'username_and_password': usernameAndPassword.encode(),
  };
}

/// The [IntegrationsAuthConfigSecret.oauth2AuthorizationCode] choice: sets `oauth2_authorization_code`.
final class IntegrationsAuthConfigSecretOauth2AuthorizationCode
    extends IntegrationsAuthConfigSecret {
  const IntegrationsAuthConfigSecretOauth2AuthorizationCode(
    this.oauth2AuthorizationCode,
  );

  final IntegrationsAuthConfigOauth2AuthorizationCode oauth2AuthorizationCode;

  @internal
  @override
  String get blockKey => 'oauth2_authorization_code';

  @internal
  @override
  Map<String, Object?> encode() => {
    'oauth2_authorization_code': oauth2AuthorizationCode.encode(),
  };
}

/// The [IntegrationsAuthConfigSecret.oauth2ClientCredentials] choice: sets `oauth2_client_credentials`.
final class IntegrationsAuthConfigSecretOauth2ClientCredentials
    extends IntegrationsAuthConfigSecret {
  const IntegrationsAuthConfigSecretOauth2ClientCredentials(
    this.oauth2ClientCredentials,
  );

  final IntegrationsAuthConfigOauth2ClientCredentials oauth2ClientCredentials;

  @internal
  @override
  String get blockKey => 'oauth2_client_credentials';

  @internal
  @override
  Map<String, Object?> encode() => {
    'oauth2_client_credentials': oauth2ClientCredentials.encode(),
  };
}

/// The [IntegrationsAuthConfigSecret.jwt] choice: sets `jwt`.
final class IntegrationsAuthConfigSecretJwt
    extends IntegrationsAuthConfigSecret {
  const IntegrationsAuthConfigSecretJwt(this.jwt);

  final IntegrationsAuthConfigJwt jwt;

  @internal
  @override
  String get blockKey => 'jwt';

  @internal
  @override
  Map<String, Object?> encode() => {'jwt': jwt.encode()};
}

/// The [IntegrationsAuthConfigSecret.authToken] choice: sets `auth_token`.
final class IntegrationsAuthConfigSecretAuthToken
    extends IntegrationsAuthConfigSecret {
  const IntegrationsAuthConfigSecretAuthToken(this.authToken);

  final IntegrationsAuthConfigAuthToken authToken;

  @internal
  @override
  String get blockKey => 'auth_token';

  @internal
  @override
  Map<String, Object?> encode() => {'auth_token': authToken.encode()};
}

/// The [IntegrationsAuthConfigSecret.serviceAccountCredentials] choice: sets `service_account_credentials`.
final class IntegrationsAuthConfigSecretServiceAccountCredentials
    extends IntegrationsAuthConfigSecret {
  const IntegrationsAuthConfigSecretServiceAccountCredentials(
    this.serviceAccountCredentials,
  );

  final IntegrationsAuthConfigServiceAccountCredentials
  serviceAccountCredentials;

  @internal
  @override
  String get blockKey => 'service_account_credentials';

  @internal
  @override
  Map<String, Object?> encode() => {
    'service_account_credentials': serviceAccountCredentials.encode(),
  };
}

/// The [IntegrationsAuthConfigSecret.oidcToken] choice: sets `oidc_token`.
final class IntegrationsAuthConfigSecretOidcToken
    extends IntegrationsAuthConfigSecret {
  const IntegrationsAuthConfigSecretOidcToken(this.oidcToken);

  final IntegrationsAuthConfigOidcToken oidcToken;

  @internal
  @override
  String get blockKey => 'oidc_token';

  @internal
  @override
  Map<String, Object?> encode() => {'oidc_token': oidcToken.encode()};
}

/// Typed helper for the `decrypted_credential.auth_token` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigAuthToken {
  const IntegrationsAuthConfigAuthToken({this.token, this.type});

  final TfArg<String>? token;

  final TfArg<String>? type;

  @internal
  Map<String, Object?> encode() => {
    'token': ?token?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential.jwt` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigJwt {
  const IntegrationsAuthConfigJwt({
    this.jwtHeader,
    this.jwtPayload,
    this.secret,
  });

  final TfArg<String>? jwtHeader;

  final TfArg<String>? jwtPayload;

  final TfArg<String>? secret;

  @internal
  Map<String, Object?> encode() => {
    'jwt_header': ?jwtHeader?.toTfJson(),
    'jwt_payload': ?jwtPayload?.toTfJson(),
    'secret': ?secret?.toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential.oauth2_authorization_code` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigOauth2AuthorizationCode {
  const IntegrationsAuthConfigOauth2AuthorizationCode({
    this.applyReauthPolicy,
    this.authEndpoint,
    this.clientId,
    this.clientSecret,
    this.requestType,
    this.scope,
    this.tokenEndpoint,
    this.authParams,
    this.tokenParams,
  });

  final TfArg<bool>? applyReauthPolicy;

  final TfArg<String>? authEndpoint;

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final IntegrationsAuthConfigOauth2AuthorizationCodeRequestType? requestType;

  final TfArg<String>? scope;

  final TfArg<String>? tokenEndpoint;

  final IntegrationsAuthConfigAuthParams? authParams;

  final IntegrationsAuthConfigTokenParams? tokenParams;

  @internal
  Map<String, Object?> encode() => {
    'apply_reauth_policy': ?applyReauthPolicy?.toTfJson(),
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'request_type': ?requestType?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'auth_params': ?authParams?.encode(),
    'token_params': ?tokenParams?.encode(),
  };
}

/// `request_type` — derived from the provider schema description.
extension type const IntegrationsAuthConfigOauth2AuthorizationCodeRequestType._(
  TfArg<String> _
)
    implements TfArg<String> {
  IntegrationsAuthConfigOauth2AuthorizationCodeRequestType.variable(String name)
    : this._(TfArg.variable(name));
  IntegrationsAuthConfigOauth2AuthorizationCodeRequestType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const IntegrationsAuthConfigOauth2AuthorizationCodeRequestType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const requestBody =
      IntegrationsAuthConfigOauth2AuthorizationCodeRequestType._(
        TfArgLiteral('REQUEST_BODY'),
      );
  static const queryParameters =
      IntegrationsAuthConfigOauth2AuthorizationCodeRequestType._(
        TfArgLiteral('QUERY_PARAMETERS'),
      );
  static const encodedHeader =
      IntegrationsAuthConfigOauth2AuthorizationCodeRequestType._(
        TfArgLiteral('ENCODED_HEADER'),
      );

  static const List<IntegrationsAuthConfigOauth2AuthorizationCodeRequestType>
  values = [requestBody, queryParameters, encodedHeader];
}

/// Typed helper for the `decrypted_credential.oauth2_authorization_code.auth_params` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigAuthParams {
  const IntegrationsAuthConfigAuthParams({this.entries});

  final List<IntegrationsAuthConfigEntries>? entries;

  @internal
  Map<String, Object?> encode() => {
    if (entries != null) 'entries': [for (final e in entries!) e.encode()],
  };
}

/// Typed helper for the `decrypted_credential.oauth2_authorization_code.auth_params.entries` block of
/// `google_integrations_auth_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationsAuthConfigEntries {
  const IntegrationsAuthConfigEntries({this.key, this.value});

  final IntegrationsAuthConfigKey? key;

  final IntegrationsAuthConfigValue? value;

  @internal
  Map<String, Object?> encode() => {
    'key': ?key?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `decrypted_credential.oauth2_authorization_code.auth_params.entries.key` block of
/// `google_integrations_auth_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationsAuthConfigKey {
  const IntegrationsAuthConfigKey({this.literalValue});

  final IntegrationsAuthConfigLiteralValue? literalValue;

  @internal
  Map<String, Object?> encode() => {'literal_value': ?literalValue?.encode()};
}

/// Typed helper for the `decrypted_credential.oauth2_authorization_code.auth_params.entries.key.literal_value` block of
/// `google_integrations_auth_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationsAuthConfigLiteralValue {
  const IntegrationsAuthConfigLiteralValue({this.stringValue});

  final TfArg<String>? stringValue;

  @internal
  Map<String, Object?> encode() => {'string_value': ?stringValue?.toTfJson()};
}

/// Typed helper for the `decrypted_credential.oauth2_authorization_code.auth_params.entries.value` block of
/// `google_integrations_auth_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationsAuthConfigValue {
  const IntegrationsAuthConfigValue({this.literalValue});

  final IntegrationsAuthConfigLiteralValue? literalValue;

  @internal
  Map<String, Object?> encode() => {'literal_value': ?literalValue?.encode()};
}

/// Typed helper for the `decrypted_credential.oauth2_authorization_code.token_params` block of
/// `google_integrations_auth_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationsAuthConfigTokenParams {
  const IntegrationsAuthConfigTokenParams({this.entries});

  final List<IntegrationsAuthConfigEntries>? entries;

  @internal
  Map<String, Object?> encode() => {
    if (entries != null) 'entries': [for (final e in entries!) e.encode()],
  };
}

/// Typed helper for the `decrypted_credential.oauth2_client_credentials` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigOauth2ClientCredentials {
  const IntegrationsAuthConfigOauth2ClientCredentials({
    this.clientId,
    this.clientSecret,
    this.requestType,
    this.scope,
    this.tokenEndpoint,
    this.tokenParams,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final IntegrationsAuthConfigOauth2ClientCredentialsRequestType? requestType;

  final TfArg<String>? scope;

  final TfArg<String>? tokenEndpoint;

  final IntegrationsAuthConfigTokenParams? tokenParams;

  @internal
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
extension type const IntegrationsAuthConfigOauth2ClientCredentialsRequestType._(
  TfArg<String> _
)
    implements TfArg<String> {
  IntegrationsAuthConfigOauth2ClientCredentialsRequestType.variable(String name)
    : this._(TfArg.variable(name));
  IntegrationsAuthConfigOauth2ClientCredentialsRequestType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const IntegrationsAuthConfigOauth2ClientCredentialsRequestType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const requestTypeUnspecified =
      IntegrationsAuthConfigOauth2ClientCredentialsRequestType._(
        TfArgLiteral('REQUEST_TYPE_UNSPECIFIED'),
      );
  static const requestBody =
      IntegrationsAuthConfigOauth2ClientCredentialsRequestType._(
        TfArgLiteral('REQUEST_BODY'),
      );
  static const queryParameters =
      IntegrationsAuthConfigOauth2ClientCredentialsRequestType._(
        TfArgLiteral('QUERY_PARAMETERS'),
      );
  static const encodedHeader =
      IntegrationsAuthConfigOauth2ClientCredentialsRequestType._(
        TfArgLiteral('ENCODED_HEADER'),
      );

  static const List<IntegrationsAuthConfigOauth2ClientCredentialsRequestType>
  values = [
    requestTypeUnspecified,
    requestBody,
    queryParameters,
    encodedHeader,
  ];
}

/// Typed helper for the `decrypted_credential.oidc_token` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigOidcToken {
  const IntegrationsAuthConfigOidcToken({
    this.audience,
    this.serviceAccountEmail,
  });

  final TfArg<String>? audience;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  @internal
  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential.service_account_credentials` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigServiceAccountCredentials {
  const IntegrationsAuthConfigServiceAccountCredentials({
    this.scope,
    this.serviceAccount,
  });

  final TfArg<String>? scope;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  @internal
  Map<String, Object?> encode() => {
    'scope': ?scope?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `decrypted_credential.username_and_password` block of
/// `google_integrations_auth_config` (derived from provider schema).
@immutable
final class IntegrationsAuthConfigUsernameAndPassword {
  const IntegrationsAuthConfigUsernameAndPassword({
    this.password,
    this.username,
  });

  final TfArg<String>? password;

  final TfArg<String>? username;

  @internal
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
///   'auth_config',
///   displayName: TfArg.literal('terradart-dummy-basic'),
///   location: TfArg.literal('us-east1'),
///   decryptedCredential: IntegrationsAuthConfigDecryptedCredential(
///     credentialType: .literal('USERNAME_AND_PASSWORD'),
///     secret: .usernameAndPassword(
///       .new(
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

  GoogleIntegrationsAuthConfig(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> location,
    TfArg<String>? description,
    IntegrationsAuthConfigDecryptedCredential? decryptedCredential,
    IntegrationsAuthConfigClientCertificate? clientCertificate,
    IntegrationsAuthConfigVisibility? visibility,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `expiry_notification_duration` attribute.
  TfRef<List<String>> get expiryNotificationDuration =>
      TfRef.attribute<List<String>>(this, 'expiry_notification_duration');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `override_valid_time` attribute.
  TfRef<String> get overrideValidTime =>
      TfRef.attribute<String>(this, 'override_valid_time');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `visibility` attribute.
  TfRef<String> get visibility => TfRef.attribute<String>(this, 'visibility');
}
