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

  final TfArg<IntegrationConnectorsConnectionAuthConfigAuthType> authType;

  final List<IntegrationConnectorsConnectionAuthConfigAdditionalVariable>?
  additionalVariable;

  final IntegrationConnectorsConnectionAuthConfigOauth2AuthCodeFlow?
  oauth2AuthCodeFlow;

  final IntegrationConnectorsConnectionAuthConfigOauth2ClientCredentials?
  oauth2ClientCredentials;

  final IntegrationConnectorsConnectionAuthConfigOauth2JwtBearer?
  oauth2JwtBearer;

  final IntegrationConnectorsConnectionAuthConfigSshPublicKey? sshPublicKey;

  final IntegrationConnectorsConnectionAuthConfigUserPassword? userPassword;

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
enum IntegrationConnectorsConnectionAuthConfigAuthType
    implements TerraformEnum {
  authTypeUnspecified('AUTH_TYPE_UNSPECIFIED'),
  userPassword('USER_PASSWORD'),
  oauth2JwtBearer('OAUTH2_JWT_BEARER'),
  oauth2ClientCredentials('OAUTH2_CLIENT_CREDENTIALS'),
  sshPublicKey('SSH_PUBLIC_KEY'),
  oauth2AuthCodeFlow('OAUTH2_AUTH_CODE_FLOW');

  const IntegrationConnectorsConnectionAuthConfigAuthType(this.terraformValue);
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

  final IntegrationConnectorsConnectionAuthConfigAdditionalVariableEncryptionKeyValue?
  encryptionKeyValue;

  final IntegrationConnectorsConnectionAuthConfigAdditionalVariableSecretValue?
  secretValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'key': key.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'encryption_key_value': ?encryptionKeyValue?.encode(),
    'secret_value': ?secretValue?.encode(),
  };
}

/// Typed helper for the `auth_config.additional_variable.encryption_key_value` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigAdditionalVariableEncryptionKeyValue {
  const IntegrationConnectorsConnectionAuthConfigAdditionalVariableEncryptionKeyValue({
    this.kmsKeyName,
    required this.type,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<
    IntegrationConnectorsConnectionAuthConfigAdditionalVariableEncryptionKeyValueType
  >
  type;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum IntegrationConnectorsConnectionAuthConfigAdditionalVariableEncryptionKeyValueType
    implements TerraformEnum {
  googleManaged('GOOGLE_MANAGED'),
  customerManaged('CUSTOMER_MANAGED');

  const IntegrationConnectorsConnectionAuthConfigAdditionalVariableEncryptionKeyValueType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `auth_config.additional_variable.secret_value` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigAdditionalVariableSecretValue {
  const IntegrationConnectorsConnectionAuthConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.oauth2_auth_code_flow` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigOauth2AuthCodeFlow {
  const IntegrationConnectorsConnectionAuthConfigOauth2AuthCodeFlow({
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

  final IntegrationConnectorsConnectionAuthConfigOauth2AuthCodeFlowClientSecret?
  clientSecret;

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
@immutable
final class IntegrationConnectorsConnectionAuthConfigOauth2AuthCodeFlowClientSecret {
  const IntegrationConnectorsConnectionAuthConfigOauth2AuthCodeFlowClientSecret({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.oauth2_client_credentials` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigOauth2ClientCredentials {
  const IntegrationConnectorsConnectionAuthConfigOauth2ClientCredentials({
    required this.clientId,
    this.clientSecret,
  });

  final TfArg<String> clientId;

  final IntegrationConnectorsConnectionAuthConfigOauth2ClientCredentialsClientSecret?
  clientSecret;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': ?clientSecret?.encode(),
  };
}

/// Typed helper for the `auth_config.oauth2_client_credentials.client_secret` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigOauth2ClientCredentialsClientSecret {
  const IntegrationConnectorsConnectionAuthConfigOauth2ClientCredentialsClientSecret({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.oauth2_jwt_bearer` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigOauth2JwtBearer {
  const IntegrationConnectorsConnectionAuthConfigOauth2JwtBearer({
    this.clientKey,
    this.jwtClaims,
  });

  final IntegrationConnectorsConnectionAuthConfigOauth2JwtBearerClientKey?
  clientKey;

  final IntegrationConnectorsConnectionAuthConfigOauth2JwtBearerJwtClaims?
  jwtClaims;

  Map<String, Object?> encode() => {
    'client_key': ?clientKey?.encode(),
    'jwt_claims': ?jwtClaims?.encode(),
  };
}

/// Typed helper for the `auth_config.oauth2_jwt_bearer.client_key` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigOauth2JwtBearerClientKey {
  const IntegrationConnectorsConnectionAuthConfigOauth2JwtBearerClientKey({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.oauth2_jwt_bearer.jwt_claims` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigOauth2JwtBearerJwtClaims {
  const IntegrationConnectorsConnectionAuthConfigOauth2JwtBearerJwtClaims({
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
final class IntegrationConnectorsConnectionAuthConfigSshPublicKey {
  const IntegrationConnectorsConnectionAuthConfigSshPublicKey({
    this.certType,
    required this.username,
    this.sshClientCert,
    this.sshClientCertPass,
  });

  final TfArg<String>? certType;

  final TfArg<String> username;

  final IntegrationConnectorsConnectionAuthConfigSshPublicKeySshClientCert?
  sshClientCert;

  final IntegrationConnectorsConnectionAuthConfigSshPublicKeySshClientCertPass?
  sshClientCertPass;

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
final class IntegrationConnectorsConnectionAuthConfigSshPublicKeySshClientCert {
  const IntegrationConnectorsConnectionAuthConfigSshPublicKeySshClientCert({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.ssh_public_key.ssh_client_cert_pass` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigSshPublicKeySshClientCertPass {
  const IntegrationConnectorsConnectionAuthConfigSshPublicKeySshClientCertPass({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `auth_config.user_password` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigUserPassword {
  const IntegrationConnectorsConnectionAuthConfigUserPassword({
    required this.username,
    this.password,
  });

  final TfArg<String> username;

  final IntegrationConnectorsConnectionAuthConfigUserPasswordPassword? password;

  Map<String, Object?> encode() => {
    'username': username.toTfJson(),
    'password': ?password?.encode(),
  };
}

/// Typed helper for the `auth_config.user_password.password` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionAuthConfigUserPasswordPassword {
  const IntegrationConnectorsConnectionAuthConfigUserPasswordPassword({
    required this.secretVersion,
  });

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

  final IntegrationConnectorsConnectionConfigVariableEncryptionKeyValue?
  encryptionKeyValue;

  final IntegrationConnectorsConnectionConfigVariableSecretValue? secretValue;

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
@immutable
final class IntegrationConnectorsConnectionConfigVariableEncryptionKeyValue {
  const IntegrationConnectorsConnectionConfigVariableEncryptionKeyValue({
    this.kmsKeyName,
    required this.type,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<
    IntegrationConnectorsConnectionConfigVariableEncryptionKeyValueType
  >
  type;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum IntegrationConnectorsConnectionConfigVariableEncryptionKeyValueType
    implements TerraformEnum {
  googleManaged('GOOGLE_MANAGED'),
  customerManaged('CUSTOMER_MANAGED');

  const IntegrationConnectorsConnectionConfigVariableEncryptionKeyValueType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `config_variable.secret_value` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionConfigVariableSecretValue {
  const IntegrationConnectorsConnectionConfigVariableSecretValue({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
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

  final List<IntegrationConnectorsConnectionDestinationConfigDestination>?
  destination;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
  };
}

/// Typed helper for the `destination_config.destination` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionDestinationConfigDestination {
  const IntegrationConnectorsConnectionDestinationConfigDestination({
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

  final IntegrationConnectorsConnectionEventingConfigRegistrationDestinationConfig
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

  final IntegrationConnectorsConnectionEventingConfigAdditionalVariableEncryptionKeyValue?
  encryptionKeyValue;

  final IntegrationConnectorsConnectionEventingConfigAdditionalVariableSecretValue?
  secretValue;

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
@immutable
final class IntegrationConnectorsConnectionEventingConfigAdditionalVariableEncryptionKeyValue {
  const IntegrationConnectorsConnectionEventingConfigAdditionalVariableEncryptionKeyValue({
    this.kmsKeyName,
    this.type,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<
    IntegrationConnectorsConnectionEventingConfigAdditionalVariableEncryptionKeyValueType
  >?
  type;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum IntegrationConnectorsConnectionEventingConfigAdditionalVariableEncryptionKeyValueType
    implements TerraformEnum {
  googleManaged('GOOGLE_MANAGED'),
  customerManaged('CUSTOMER_MANAGED');

  const IntegrationConnectorsConnectionEventingConfigAdditionalVariableEncryptionKeyValueType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `eventing_config.additional_variable.secret_value` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionEventingConfigAdditionalVariableSecretValue {
  const IntegrationConnectorsConnectionEventingConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
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

  final List<
    IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariable
  >?
  additionalVariable;

  final IntegrationConnectorsConnectionEventingConfigAuthConfigUserPassword
  userPassword;

  Map<String, Object?> encode() => {
    'auth_key': ?authKey?.toTfJson(),
    'auth_type': authType.toTfJson(),
    if (additionalVariable != null)
      'additional_variable': [for (final e in additionalVariable!) e.encode()],
    'user_password': userPassword.encode(),
  };
}

/// Typed helper for the `eventing_config.auth_config.additional_variable` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariable {
  const IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariable({
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

  final IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariableEncryptionKeyValue?
  encryptionKeyValue;

  final IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariableSecretValue?
  secretValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'key': key.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'encryption_key_value': ?encryptionKeyValue?.encode(),
    'secret_value': ?secretValue?.encode(),
  };
}

/// Typed helper for the `eventing_config.auth_config.additional_variable.encryption_key_value` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariableEncryptionKeyValue {
  const IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariableEncryptionKeyValue({
    this.kmsKeyName,
    this.type,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<
    IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariableEncryptionKeyValueType
  >?
  type;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariableEncryptionKeyValueType
    implements TerraformEnum {
  googleManaged('GOOGLE_MANAGED'),
  customerManaged('CUSTOMER_MANAGED');

  const IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariableEncryptionKeyValueType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `eventing_config.auth_config.additional_variable.secret_value` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariableSecretValue {
  const IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `eventing_config.auth_config.user_password` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionEventingConfigAuthConfigUserPassword {
  const IntegrationConnectorsConnectionEventingConfigAuthConfigUserPassword({
    this.username,
    this.password,
  });

  final TfArg<String>? username;

  final IntegrationConnectorsConnectionEventingConfigAuthConfigUserPasswordPassword?
  password;

  Map<String, Object?> encode() => {
    'username': ?username?.toTfJson(),
    'password': ?password?.encode(),
  };
}

/// Typed helper for the `eventing_config.auth_config.user_password.password` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionEventingConfigAuthConfigUserPasswordPassword {
  const IntegrationConnectorsConnectionEventingConfigAuthConfigUserPasswordPassword({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `eventing_config.registration_destination_config` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionEventingConfigRegistrationDestinationConfig {
  const IntegrationConnectorsConnectionEventingConfigRegistrationDestinationConfig({
    this.key,
    this.destination,
  });

  final TfArg<String>? key;

  final List<
    IntegrationConnectorsConnectionEventingConfigRegistrationDestinationConfigDestination
  >?
  destination;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
  };
}

/// Typed helper for the `eventing_config.registration_destination_config.destination` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionEventingConfigRegistrationDestinationConfigDestination {
  const IntegrationConnectorsConnectionEventingConfigRegistrationDestinationConfigDestination({
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

  final TfArg<IntegrationConnectorsConnectionLogConfigLevel>? level;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'level': ?level?.toTfJson(),
  };
}

/// `level` — derived from the provider schema description.
enum IntegrationConnectorsConnectionLogConfigLevel implements TerraformEnum {
  logLevelUnspecified('LOG_LEVEL_UNSPECIFIED'),
  error('ERROR'),
  info('INFO'),
  debug('DEBUG');

  const IntegrationConnectorsConnectionLogConfigLevel(this.terraformValue);
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

  final TfArg<IntegrationConnectorsConnectionSslConfigTrustModel>? trustModel;

  final TfArg<IntegrationConnectorsConnectionSslConfigType> type;

  final TfArg<bool>? useSsl;

  final List<IntegrationConnectorsConnectionSslConfigAdditionalVariable>?
  additionalVariable;

  final IntegrationConnectorsConnectionSslConfigClientCertificate?
  clientCertificate;

  final IntegrationConnectorsConnectionSslConfigClientPrivateKey?
  clientPrivateKey;

  final IntegrationConnectorsConnectionSslConfigClientPrivateKeyPass?
  clientPrivateKeyPass;

  final IntegrationConnectorsConnectionSslConfigPrivateServerCertificate?
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
enum IntegrationConnectorsConnectionSslConfigTrustModel
    implements TerraformEnum {
  public('PUBLIC'),
  private('PRIVATE'),
  insecure('INSECURE');

  const IntegrationConnectorsConnectionSslConfigTrustModel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum IntegrationConnectorsConnectionSslConfigType implements TerraformEnum {
  tls('TLS'),
  mtls('MTLS');

  const IntegrationConnectorsConnectionSslConfigType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ssl_config.additional_variable` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionSslConfigAdditionalVariable {
  const IntegrationConnectorsConnectionSslConfigAdditionalVariable({
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

  final IntegrationConnectorsConnectionSslConfigAdditionalVariableEncryptionKeyValue?
  encryptionKeyValue;

  final IntegrationConnectorsConnectionSslConfigAdditionalVariableSecretValue?
  secretValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'key': key.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'encryption_key_value': ?encryptionKeyValue?.encode(),
    'secret_value': ?secretValue?.encode(),
  };
}

/// Typed helper for the `ssl_config.additional_variable.encryption_key_value` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionSslConfigAdditionalVariableEncryptionKeyValue {
  const IntegrationConnectorsConnectionSslConfigAdditionalVariableEncryptionKeyValue({
    this.kmsKeyName,
    this.type,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<
    IntegrationConnectorsConnectionSslConfigAdditionalVariableEncryptionKeyValueType
  >?
  type;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum IntegrationConnectorsConnectionSslConfigAdditionalVariableEncryptionKeyValueType
    implements TerraformEnum {
  googleManaged('GOOGLE_MANAGED'),
  customerManaged('CUSTOMER_MANAGED');

  const IntegrationConnectorsConnectionSslConfigAdditionalVariableEncryptionKeyValueType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ssl_config.additional_variable.secret_value` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionSslConfigAdditionalVariableSecretValue {
  const IntegrationConnectorsConnectionSslConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `ssl_config.client_certificate` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionSslConfigClientCertificate {
  const IntegrationConnectorsConnectionSslConfigClientCertificate({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `ssl_config.client_private_key` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionSslConfigClientPrivateKey {
  const IntegrationConnectorsConnectionSslConfigClientPrivateKey({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `ssl_config.client_private_key_pass` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionSslConfigClientPrivateKeyPass {
  const IntegrationConnectorsConnectionSslConfigClientPrivateKeyPass({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `ssl_config.private_server_certificate` block of
/// `google_integration_connectors_connection` (derived from provider schema).
@immutable
final class IntegrationConnectorsConnectionSslConfigPrivateServerCertificate {
  const IntegrationConnectorsConnectionSslConfigPrivateServerCertificate({
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

  GoogleIntegrationConnectorsConnection({
    required super.localName,
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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
