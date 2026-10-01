// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_integration_connectors_connection`.
const Set<String> _googleIntegrationConnectorsConnectionSensitive = <String>{};

/// Integration Connectors Connection Eventing Enablement enum for `eventing_enablement_type`.
enum IntegrationConnectorsConnectionEventingEnablementType
    implements TerraformEnum {
  eventingAndConnection('EVENTING_AND_CONNECTION'),
  onlyEventing('ONLY_EVENTING');

  const IntegrationConnectorsConnectionEventingEnablementType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `auth_config` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfig {
  const IntegrationConnectorsConnectionAuthConfig({
    this.authKey,
    required this.authType,
    this.additionalVariable,
    this.oauth2AuthCodeFlow,
    this.oauth2ClientCredentials,
    this.oauth2JwtBearer,
    this.sshPublicKey,
    this.userPassword,
  });

  final TfArg<String>? authKey;

  final TfArg<IntegrationConnectorsConnectionAuthType> authType;

  final List<IntegrationConnectorsConnectionAuthConfigAdditionalVariable>?
  additionalVariable;

  final IntegrationConnectorsConnectionOauth2AuthCodeFlow? oauth2AuthCodeFlow;

  final IntegrationConnectorsConnectionOauth2ClientCredentials?
  oauth2ClientCredentials;

  final IntegrationConnectorsConnectionOauth2JwtBearer? oauth2JwtBearer;

  final IntegrationConnectorsConnectionSshPublicKey? sshPublicKey;

  final IntegrationConnectorsConnectionUserPassword? userPassword;

  Map<String, Object?> encode() => {
    'auth_key': ?authKey?.toTfJson(),
    'auth_type': authType.toTfJson(),
    if (additionalVariable != null)
      'additional_variable': [for (final e in additionalVariable!) e.encode()],
    'oauth2_auth_code_flow': ?oauth2AuthCodeFlow?.encode(),
    'oauth2_client_credentials': ?oauth2ClientCredentials?.encode(),
    'oauth2_jwt_bearer': ?oauth2JwtBearer?.encode(),
    'ssh_public_key': ?sshPublicKey?.encode(),
    'user_password': ?userPassword?.encode(),
  };
}

/// `auth_type` — derived from the provider schema description.
enum IntegrationConnectorsConnectionAuthType implements TerraformEnum {
  authTypeUnspecified('AUTH_TYPE_UNSPECIFIED'),
  userPassword('USER_PASSWORD'),
  oauth2JwtBearer('OAUTH2_JWT_BEARER'),
  oauth2ClientCredentials('OAUTH2_CLIENT_CREDENTIALS'),
  sshPublicKey('SSH_PUBLIC_KEY'),
  oauth2AuthCodeFlow('OAUTH2_AUTH_CODE_FLOW');

  const IntegrationConnectorsConnectionAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `auth_config.additional_variable` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigAdditionalVariable {
  const IntegrationConnectorsConnectionAuthConfigAdditionalVariable({
    this.booleanValue,
    this.integerValue,
    required this.key,
    this.stringValue,
    this.encryptionKeyValue,
    this.secretValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<num>? integerValue;

  final TfArg<String> key;

  final TfArg<String>? stringValue;

  final IntegrationConnectorsConnectionEncryptionKeyValue? encryptionKeyValue;

  final IntegrationConnectorsConnectionSecretValue? secretValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'key': key.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'encryption_key_value': ?encryptionKeyValue?.encode(),
    'secret_value': ?secretValue?.encode(),
  };
}

/// Typed helper for the `config_variable.encryption_key_value` block of
/// `google_integration_connectors_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationConnectorsConnectionEncryptionKeyValue {
  const IntegrationConnectorsConnectionEncryptionKeyValue({
    this.kmsKeyName,
    required this.type,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<IntegrationConnectorsConnectionEncryptionKeyValueType> type;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum IntegrationConnectorsConnectionEncryptionKeyValueType
    implements TerraformEnum {
  googleManaged('GOOGLE_MANAGED'),
  customerManaged('CUSTOMER_MANAGED');

  const IntegrationConnectorsConnectionEncryptionKeyValueType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `config_variable.secret_value` block of
/// `google_integration_connectors_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationConnectorsConnectionSecretValue {
  const IntegrationConnectorsConnectionSecretValue({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.oauth2_auth_code_flow` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionOauth2AuthCodeFlow {
  const IntegrationConnectorsConnectionOauth2AuthCodeFlow({
    this.authUri,
    this.clientId,
    this.enablePkce,
    this.scopes,
    this.clientSecret,
  });

  final TfArg<String>? authUri;

  final TfArg<String>? clientId;

  final TfArg<bool>? enablePkce;

  final TfArg<List<String>>? scopes;

  final IntegrationConnectorsConnectionClientSecret? clientSecret;

  Map<String, Object?> encode() => {
    'auth_uri': ?authUri?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'enable_pkce': ?enablePkce?.toTfJson(),
    'scopes': ?scopes?.toTfJson(),
    'client_secret': ?clientSecret?.encode(),
  };
}

/// Typed helper for the `auth_config.oauth2_auth_code_flow.client_secret` block of
/// `google_integration_connectors_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationConnectorsConnectionClientSecret {
  const IntegrationConnectorsConnectionClientSecret({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.oauth2_client_credentials` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionOauth2ClientCredentials {
  const IntegrationConnectorsConnectionOauth2ClientCredentials({
    required this.clientId,
    this.clientSecret,
  });

  final TfArg<String> clientId;

  final IntegrationConnectorsConnectionClientSecret? clientSecret;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': ?clientSecret?.encode(),
  };
}

/// Typed helper for the `auth_config.oauth2_jwt_bearer` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionOauth2JwtBearer {
  const IntegrationConnectorsConnectionOauth2JwtBearer({
    this.clientKey,
    this.jwtClaims,
  });

  final IntegrationConnectorsConnectionClientKey? clientKey;

  final IntegrationConnectorsConnectionJwtClaims? jwtClaims;

  Map<String, Object?> encode() => {
    'client_key': ?clientKey?.encode(),
    'jwt_claims': ?jwtClaims?.encode(),
  };
}

/// Typed helper for the `auth_config.oauth2_jwt_bearer.client_key` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionClientKey {
  const IntegrationConnectorsConnectionClientKey({required this.secretVersion});

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.oauth2_jwt_bearer.jwt_claims` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionJwtClaims {
  const IntegrationConnectorsConnectionJwtClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  final TfArg<String>? audience;

  final TfArg<String>? issuer;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `auth_config.ssh_public_key` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionSshPublicKey {
  const IntegrationConnectorsConnectionSshPublicKey({
    this.certType,
    required this.username,
    this.sshClientCert,
    this.sshClientCertPass,
  });

  final TfArg<String>? certType;

  final TfArg<String> username;

  final IntegrationConnectorsConnectionSshClientCert? sshClientCert;

  final IntegrationConnectorsConnectionSshClientCertPass? sshClientCertPass;

  Map<String, Object?> encode() => {
    'cert_type': ?certType?.toTfJson(),
    'username': username.toTfJson(),
    'ssh_client_cert': ?sshClientCert?.encode(),
    'ssh_client_cert_pass': ?sshClientCertPass?.encode(),
  };
}

/// Typed helper for the `auth_config.ssh_public_key.ssh_client_cert` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionSshClientCert {
  const IntegrationConnectorsConnectionSshClientCert({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.ssh_public_key.ssh_client_cert_pass` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionSshClientCertPass {
  const IntegrationConnectorsConnectionSshClientCertPass({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.user_password` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionUserPassword {
  const IntegrationConnectorsConnectionUserPassword({
    required this.username,
    this.password,
  });

  final TfArg<String> username;

  final IntegrationConnectorsConnectionPassword? password;

  Map<String, Object?> encode() => {
    'username': username.toTfJson(),
    'password': ?password?.encode(),
  };
}

/// Typed helper for the `auth_config.user_password.password` block of
/// `google_integration_connectors_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationConnectorsConnectionPassword {
  const IntegrationConnectorsConnectionPassword({required this.secretVersion});

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `config_variable` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionConfigVariable {
  const IntegrationConnectorsConnectionConfigVariable({
    this.booleanValue,
    this.integerValue,
    required this.key,
    this.stringValue,
    this.encryptionKeyValue,
    this.secretValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<num>? integerValue;

  final TfArg<String> key;

  final TfArg<String>? stringValue;

  final IntegrationConnectorsConnectionEncryptionKeyValue? encryptionKeyValue;

  final IntegrationConnectorsConnectionSecretValue? secretValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'key': key.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'encryption_key_value': ?encryptionKeyValue?.encode(),
    'secret_value': ?secretValue?.encode(),
  };
}

/// Typed helper for the `destination_config` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionDestinationConfig {
  const IntegrationConnectorsConnectionDestinationConfig({
    required this.key,
    this.destination,
  });

  final TfArg<String> key;

  final List<IntegrationConnectorsConnectionDestination>? destination;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
  };
}

/// Typed helper for the `destination_config.destination` block of
/// `google_integration_connectors_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationConnectorsConnectionDestination {
  const IntegrationConnectorsConnectionDestination({
    this.host,
    this.port,
    this.serviceAttachment,
  });

  final TfArg<String>? host;

  final TfArg<num>? port;

  final TfArg<String>? serviceAttachment;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'port': ?port?.toTfJson(),
    'service_attachment': ?serviceAttachment?.toTfJson(),
  };
}

/// Typed helper for the `eventing_config` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionEventingConfig {
  const IntegrationConnectorsConnectionEventingConfig({
    this.enrichmentEnabled,
    this.additionalVariable,
    this.authConfig,
    required this.registrationDestinationConfig,
  });

  final TfArg<bool>? enrichmentEnabled;

  final List<IntegrationConnectorsConnectionEventingConfigAdditionalVariable>?
  additionalVariable;

  final IntegrationConnectorsConnectionEventingConfigAuthConfig? authConfig;

  final IntegrationConnectorsConnectionRegistrationDestinationConfig
  registrationDestinationConfig;

  Map<String, Object?> encode() => {
    'enrichment_enabled': ?enrichmentEnabled?.toTfJson(),
    if (additionalVariable != null)
      'additional_variable': [for (final e in additionalVariable!) e.encode()],
    'auth_config': ?authConfig?.encode(),
    'registration_destination_config': registrationDestinationConfig.encode(),
  };
}

/// Typed helper for the `eventing_config.additional_variable` block of
/// `google_integration_connectors_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationConnectorsConnectionEventingConfigAdditionalVariable {
  const IntegrationConnectorsConnectionEventingConfigAdditionalVariable({
    this.booleanValue,
    this.integerValue,
    required this.key,
    this.stringValue,
    this.encryptionKeyValue,
    this.secretValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<num>? integerValue;

  final TfArg<String> key;

  final TfArg<String>? stringValue;

  final IntegrationConnectorsConnectionAdditionalVariableEncryptionKeyValue?
  encryptionKeyValue;

  final IntegrationConnectorsConnectionSecretValue? secretValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'key': key.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'encryption_key_value': ?encryptionKeyValue?.encode(),
    'secret_value': ?secretValue?.encode(),
  };
}

/// Typed helper for the `eventing_config.additional_variable.encryption_key_value` block of
/// `google_integration_connectors_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IntegrationConnectorsConnectionAdditionalVariableEncryptionKeyValue {
  const IntegrationConnectorsConnectionAdditionalVariableEncryptionKeyValue({
    this.kmsKeyName,
    this.type,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<IntegrationConnectorsConnectionEncryptionKeyValueType>? type;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `eventing_config.auth_config` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionEventingConfigAuthConfig {
  const IntegrationConnectorsConnectionEventingConfigAuthConfig({
    this.authKey,
    required this.authType,
    this.additionalVariable,
    required this.userPassword,
  });

  final TfArg<String>? authKey;

  final TfArg<String> authType;

  final List<IntegrationConnectorsConnectionEventingConfigAdditionalVariable>?
  additionalVariable;

  final IntegrationConnectorsConnectionAuthConfigUserPassword userPassword;

  Map<String, Object?> encode() => {
    'auth_key': ?authKey?.toTfJson(),
    'auth_type': authType.toTfJson(),
    if (additionalVariable != null)
      'additional_variable': [for (final e in additionalVariable!) e.encode()],
    'user_password': userPassword.encode(),
  };
}

/// Typed helper for the `eventing_config.auth_config.user_password` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigUserPassword {
  const IntegrationConnectorsConnectionAuthConfigUserPassword({
    this.username,
    this.password,
  });

  final TfArg<String>? username;

  final IntegrationConnectorsConnectionPassword? password;

  Map<String, Object?> encode() => {
    'username': ?username?.toTfJson(),
    'password': ?password?.encode(),
  };
}

/// Typed helper for the `eventing_config.registration_destination_config` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionRegistrationDestinationConfig {
  const IntegrationConnectorsConnectionRegistrationDestinationConfig({
    this.key,
    this.destination,
  });

  final TfArg<String>? key;

  final List<IntegrationConnectorsConnectionDestination>? destination;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
  };
}

/// Typed helper for the `lock_config` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionLockConfig {
  const IntegrationConnectorsConnectionLockConfig({
    required this.locked,
    this.reason,
  });

  final TfArg<bool> locked;

  final TfArg<String>? reason;

  Map<String, Object?> encode() => {
    'locked': locked.toTfJson(),
    'reason': ?reason?.toTfJson(),
  };
}

/// Typed helper for the `log_config` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionLogConfig {
  const IntegrationConnectorsConnectionLogConfig({
    required this.enabled,
    this.level,
  });

  final TfArg<bool> enabled;

  final TfArg<IntegrationConnectorsConnectionLevel>? level;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'level': ?level?.toTfJson(),
  };
}

/// `level` — derived from the provider schema description.
enum IntegrationConnectorsConnectionLevel implements TerraformEnum {
  logLevelUnspecified('LOG_LEVEL_UNSPECIFIED'),
  error('ERROR'),
  info('INFO'),
  debug('DEBUG');

  const IntegrationConnectorsConnectionLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `node_config` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionNodeConfig {
  const IntegrationConnectorsConnectionNodeConfig({
    this.maxNodeCount,
    this.minNodeCount,
  });

  final TfArg<num>? maxNodeCount;

  final TfArg<num>? minNodeCount;

  Map<String, Object?> encode() => {
    'max_node_count': ?maxNodeCount?.toTfJson(),
    'min_node_count': ?minNodeCount?.toTfJson(),
  };
}

/// Typed helper for the `ssl_config` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionSslConfig {
  const IntegrationConnectorsConnectionSslConfig({
    this.clientCertType,
    this.serverCertType,
    this.trustModel,
    required this.type,
    this.useSsl,
    this.additionalVariable,
    this.clientCertificate,
    this.clientPrivateKey,
    this.clientPrivateKeyPass,
    this.privateServerCertificate,
  });

  final TfArg<String>? clientCertType;

  final TfArg<String>? serverCertType;

  final TfArg<IntegrationConnectorsConnectionTrustModel>? trustModel;

  final TfArg<IntegrationConnectorsConnectionType> type;

  final TfArg<bool>? useSsl;

  final List<IntegrationConnectorsConnectionEventingConfigAdditionalVariable>?
  additionalVariable;

  final IntegrationConnectorsConnectionClientCertificate? clientCertificate;

  final IntegrationConnectorsConnectionClientPrivateKey? clientPrivateKey;

  final IntegrationConnectorsConnectionClientPrivateKeyPass?
  clientPrivateKeyPass;

  final IntegrationConnectorsConnectionPrivateServerCertificate?
  privateServerCertificate;

  Map<String, Object?> encode() => {
    'client_cert_type': ?clientCertType?.toTfJson(),
    'server_cert_type': ?serverCertType?.toTfJson(),
    'trust_model': ?trustModel?.toTfJson(),
    'type': type.toTfJson(),
    'use_ssl': ?useSsl?.toTfJson(),
    if (additionalVariable != null)
      'additional_variable': [for (final e in additionalVariable!) e.encode()],
    'client_certificate': ?clientCertificate?.encode(),
    'client_private_key': ?clientPrivateKey?.encode(),
    'client_private_key_pass': ?clientPrivateKeyPass?.encode(),
    'private_server_certificate': ?privateServerCertificate?.encode(),
  };
}

/// `trust_model` — derived from the provider schema description.
enum IntegrationConnectorsConnectionTrustModel implements TerraformEnum {
  public('PUBLIC'),
  private('PRIVATE'),
  insecure('INSECURE');

  const IntegrationConnectorsConnectionTrustModel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum IntegrationConnectorsConnectionType implements TerraformEnum {
  tls('TLS'),
  mtls('MTLS');

  const IntegrationConnectorsConnectionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ssl_config.client_certificate` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionClientCertificate {
  const IntegrationConnectorsConnectionClientCertificate({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `ssl_config.client_private_key` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionClientPrivateKey {
  const IntegrationConnectorsConnectionClientPrivateKey({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `ssl_config.client_private_key_pass` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionClientPrivateKeyPass {
  const IntegrationConnectorsConnectionClientPrivateKeyPass({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `ssl_config.private_server_certificate` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionPrivateServerCertificate {
  const IntegrationConnectorsConnectionPrivateServerCertificate({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Factory wrapper for `google_integration_connectors_connection`.
///
/// An Integration connectors Connection.
///
/// Integration Connectors **connection** — managed connector nodes to a
/// SaaS or Google-managed application (`connector_version`).
///
/// **Cost / apply:** gcp-cost: Integration Connectors `6FFB-B71E-5A0F`
/// Connection nodes to Google managed applications SKU `4AB5-4E41-8DAB`
/// **$0.35/h** (business applications `4E3B-04D1-77FA` **$0.70/h**; data
/// processed `58DF-02CB-FB23` **$10/GiBy** after free tier).
/// billing-behavior: connection node hours bill while the connection
/// exists; destroy stops node charges. Too expensive for apply-smoke even
/// once — debt-only on `terradart-validate`. **Never** wire into
/// apply-smoke.
///
/// Enable `connectors.googleapis.com` before apply. [connectorVersion] is
/// a full resource name under
/// `projects/.../locations/global/providers/.../connectors/.../versions/...`.
final class GoogleIntegrationConnectorsConnection extends Resource {
  static const String tfType = 'google_integration_connectors_connection';

  GoogleIntegrationConnectorsConnection(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> connectorVersion,
    TfArg<String>? description,
    RefTo<GoogleServiceAccount>? serviceAccount,
    TfArg<IntegrationConnectorsConnectionEventingEnablementType>?
    eventingEnablementType,
    TfArg<bool>? suspended,
    IntegrationConnectorsConnectionAuthConfig? authConfig,
    List<IntegrationConnectorsConnectionConfigVariable>? configVariable,
    List<IntegrationConnectorsConnectionDestinationConfig>? destinationConfig,
    IntegrationConnectorsConnectionEventingConfig? eventingConfig,
    IntegrationConnectorsConnectionLockConfig? lockConfig,
    IntegrationConnectorsConnectionLogConfig? logConfig,
    IntegrationConnectorsConnectionNodeConfig? nodeConfig,
    IntegrationConnectorsConnectionSslConfig? sslConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'connector_version': connectorVersion,
           'description': ?description,
           'service_account': ?serviceAccount?.encodeAs('email'),
           'eventing_enablement_type': ?eventingEnablementType,
           'suspended': ?suspended,
           if (authConfig != null)
             'auth_config': TfArg.literal(authConfig.encode()),
           if (configVariable != null)
             'config_variable': TfArg.literal([
               for (final e in configVariable) e.encode(),
             ]),
           if (destinationConfig != null)
             'destination_config': TfArg.literal([
               for (final e in destinationConfig) e.encode(),
             ]),
           if (eventingConfig != null)
             'eventing_config': TfArg.literal(eventingConfig.encode()),
           if (lockConfig != null)
             'lock_config': TfArg.literal(lockConfig.encode()),
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
           if (nodeConfig != null)
             'node_config': TfArg.literal(nodeConfig.encode()),
           if (sslConfig != null)
             'ssl_config': TfArg.literal(sslConfig.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIntegrationConnectorsConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIntegrationConnectorsConnection>`.
  RefTo<GoogleIntegrationConnectorsConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_revision` attribute.
  TfRef<String> get connectionRevision =>
      TfRef.attribute<String>(this, 'connection_revision');

  /// Reference to `connector_version_infra_config` attribute.
  TfRef<List<Map<String, Object?>>> get connectorVersionInfraConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'connector_version_infra_config',
      );

  /// Reference to `connector_version_launch_stage` attribute.
  TfRef<String> get connectorVersionLaunchStage =>
      TfRef.attribute<String>(this, 'connector_version_launch_stage');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `eventing_runtime_data` attribute.
  TfRef<List<Map<String, Object?>>> get eventingRuntimeData =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'eventing_runtime_data',
      );

  /// Reference to `service_directory` attribute.
  TfRef<String> get serviceDirectory =>
      TfRef.attribute<String>(this, 'service_directory');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `subscription_type` attribute.
  TfRef<String> get subscriptionType =>
      TfRef.attribute<String>(this, 'subscription_type');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `connector_version` attribute.
  TfRef<String> get connectorVersion =>
      TfRef.attribute<String>(this, 'connector_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `eventing_enablement_type` attribute.
  TfRef<String> get eventingEnablementType =>
      TfRef.attribute<String>(this, 'eventing_enablement_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `suspended` attribute.
  TfRef<bool> get suspended => TfRef.attribute<bool>(this, 'suspended');
}
