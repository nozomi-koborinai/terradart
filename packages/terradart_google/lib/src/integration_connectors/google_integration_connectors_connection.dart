// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (authKey != null) 'auth_key': authKey!.toTfJson(),
    'auth_type': authType.toTfJson(),
    if (additionalVariable != null)
      'additional_variable': [for (final e in additionalVariable!) e.encode()],
    if (oauth2AuthCodeFlow != null)
      'oauth2_auth_code_flow': oauth2AuthCodeFlow!.encode(),
    if (oauth2ClientCredentials != null)
      'oauth2_client_credentials': oauth2ClientCredentials!.encode(),
    if (oauth2JwtBearer != null) 'oauth2_jwt_bearer': oauth2JwtBearer!.encode(),
    if (sshPublicKey != null) 'ssh_public_key': sshPublicKey!.encode(),
    if (userPassword != null) 'user_password': userPassword!.encode(),
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
    if (booleanValue != null) 'boolean_value': booleanValue!.toTfJson(),
    if (integerValue != null) 'integer_value': integerValue!.toTfJson(),
    'key': key.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (encryptionKeyValue != null)
      'encryption_key_value': encryptionKeyValue!.encode(),
    if (secretValue != null) 'secret_value': secretValue!.encode(),
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

  final TfArg<String>? kmsKeyName;

  final TfArg<
    IntegrationConnectorsConnectionAuthConfigAdditionalVariableEncryptionKeyValueType
  >
  type;

  Map<String, Object?> encode() => {
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
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

  final TfArg<List<Object?>>? scopes;

  final IntegrationConnectorsConnectionAuthConfigOauth2AuthCodeFlowClientSecret?
  clientSecret;

  Map<String, Object?> encode() => {
    if (authUri != null) 'auth_uri': authUri!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (enablePkce != null) 'enable_pkce': enablePkce!.toTfJson(),
    if (scopes != null) 'scopes': scopes!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.encode(),
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
    if (clientSecret != null) 'client_secret': clientSecret!.encode(),
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
    if (clientKey != null) 'client_key': clientKey!.encode(),
    if (jwtClaims != null) 'jwt_claims': jwtClaims!.encode(),
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
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
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
    if (certType != null) 'cert_type': certType!.toTfJson(),
    'username': username.toTfJson(),
    if (sshClientCert != null) 'ssh_client_cert': sshClientCert!.encode(),
    if (sshClientCertPass != null)
      'ssh_client_cert_pass': sshClientCertPass!.encode(),
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
    if (password != null) 'password': password!.encode(),
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
    if (booleanValue != null) 'boolean_value': booleanValue!.toTfJson(),
    if (integerValue != null) 'integer_value': integerValue!.toTfJson(),
    'key': key.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (encryptionKeyValue != null)
      'encryption_key_value': encryptionKeyValue!.encode(),
    if (secretValue != null) 'secret_value': secretValue!.encode(),
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

  final TfArg<String>? kmsKeyName;

  final TfArg<
    IntegrationConnectorsConnectionConfigVariableEncryptionKeyValueType
  >
  type;

  Map<String, Object?> encode() => {
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
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
    if (host != null) 'host': host!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (serviceAttachment != null)
      'service_attachment': serviceAttachment!.toTfJson(),
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
    if (enrichmentEnabled != null)
      'enrichment_enabled': enrichmentEnabled!.toTfJson(),
    if (additionalVariable != null)
      'additional_variable': [for (final e in additionalVariable!) e.encode()],
    if (authConfig != null) 'auth_config': authConfig!.encode(),
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
    if (booleanValue != null) 'boolean_value': booleanValue!.toTfJson(),
    if (integerValue != null) 'integer_value': integerValue!.toTfJson(),
    'key': key.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (encryptionKeyValue != null)
      'encryption_key_value': encryptionKeyValue!.encode(),
    if (secretValue != null) 'secret_value': secretValue!.encode(),
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

  final TfArg<String>? kmsKeyName;

  final TfArg<
    IntegrationConnectorsConnectionEventingConfigAdditionalVariableEncryptionKeyValueType
  >?
  type;

  Map<String, Object?> encode() => {
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
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
    if (authKey != null) 'auth_key': authKey!.toTfJson(),
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
    if (booleanValue != null) 'boolean_value': booleanValue!.toTfJson(),
    if (integerValue != null) 'integer_value': integerValue!.toTfJson(),
    'key': key.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (encryptionKeyValue != null)
      'encryption_key_value': encryptionKeyValue!.encode(),
    if (secretValue != null) 'secret_value': secretValue!.encode(),
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

  final TfArg<String>? kmsKeyName;

  final TfArg<
    IntegrationConnectorsConnectionEventingConfigAuthConfigAdditionalVariableEncryptionKeyValueType
  >?
  type;

  Map<String, Object?> encode() => {
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
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
    if (username != null) 'username': username!.toTfJson(),
    if (password != null) 'password': password!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
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
    if (host != null) 'host': host!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (serviceAttachment != null)
      'service_attachment': serviceAttachment!.toTfJson(),
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
    if (reason != null) 'reason': reason!.toTfJson(),
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
    if (level != null) 'level': level!.toTfJson(),
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
    if (maxNodeCount != null) 'max_node_count': maxNodeCount!.toTfJson(),
    if (minNodeCount != null) 'min_node_count': minNodeCount!.toTfJson(),
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
    if (clientCertType != null) 'client_cert_type': clientCertType!.toTfJson(),
    if (serverCertType != null) 'server_cert_type': serverCertType!.toTfJson(),
    if (trustModel != null) 'trust_model': trustModel!.toTfJson(),
    'type': type.toTfJson(),
    if (useSsl != null) 'use_ssl': useSsl!.toTfJson(),
    if (additionalVariable != null)
      'additional_variable': [for (final e in additionalVariable!) e.encode()],
    if (clientCertificate != null)
      'client_certificate': clientCertificate!.encode(),
    if (clientPrivateKey != null)
      'client_private_key': clientPrivateKey!.encode(),
    if (clientPrivateKeyPass != null)
      'client_private_key_pass': clientPrivateKeyPass!.encode(),
    if (privateServerCertificate != null)
      'private_server_certificate': privateServerCertificate!.encode(),
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
    if (booleanValue != null) 'boolean_value': booleanValue!.toTfJson(),
    if (integerValue != null) 'integer_value': integerValue!.toTfJson(),
    'key': key.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (encryptionKeyValue != null)
      'encryption_key_value': encryptionKeyValue!.encode(),
    if (secretValue != null) 'secret_value': secretValue!.encode(),
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

  final TfArg<String>? kmsKeyName;

  final TfArg<
    IntegrationConnectorsConnectionSslConfigAdditionalVariableEncryptionKeyValueType
  >?
  type;

  Map<String, Object?> encode() => {
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
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
    TfArg<String>? serviceAccount,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'connector_version': connectorVersion,
           if (description != null) 'description': description,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (eventingEnablementType != null)
             'eventing_enablement_type': eventingEnablementType,
           if (suspended != null) 'suspended': suspended,
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
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIntegrationConnectorsConnectionSensitive;

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
