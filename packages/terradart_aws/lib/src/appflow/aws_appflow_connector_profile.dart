// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appflow_connector_profile`.
const Set<String> _awsAppflowConnectorProfileSensitive = <String>{
  'connector_profile_config.connector_profile_credentials.amplitude.secret_key',
  'connector_profile_config.connector_profile_credentials.custom_connector.basic.password',
  'connector_profile_config.connector_profile_credentials.custom_connector.custom.credentials_map',
  'connector_profile_config.connector_profile_credentials.custom_connector.oauth2.access_token',
  'connector_profile_config.connector_profile_credentials.custom_connector.oauth2.client_secret',
  'connector_profile_config.connector_profile_credentials.google_analytics.access_token',
  'connector_profile_config.connector_profile_credentials.google_analytics.client_secret',
  'connector_profile_config.connector_profile_credentials.honeycode.access_token',
  'connector_profile_config.connector_profile_credentials.infor_nexus.secret_access_key',
  'connector_profile_config.connector_profile_credentials.marketo.access_token',
  'connector_profile_config.connector_profile_credentials.marketo.client_secret',
  'connector_profile_config.connector_profile_credentials.redshift.password',
  'connector_profile_config.connector_profile_credentials.salesforce.access_token',
  'connector_profile_config.connector_profile_credentials.sapo_data.basic_auth_credentials.password',
  'connector_profile_config.connector_profile_credentials.sapo_data.oauth_credentials.access_token',
  'connector_profile_config.connector_profile_credentials.service_now.password',
  'connector_profile_config.connector_profile_credentials.slack.access_token',
  'connector_profile_config.connector_profile_credentials.slack.client_secret',
  'connector_profile_config.connector_profile_credentials.snowflake.password',
  'connector_profile_config.connector_profile_credentials.trendmicro.api_secret_key',
  'connector_profile_config.connector_profile_credentials.veeva.password',
  'connector_profile_config.connector_profile_credentials.zendesk.access_token',
  'connector_profile_config.connector_profile_credentials.zendesk.client_secret',
};

/// Typed helper for the `connector_profile_config` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfig {
  const AppflowConnectorProfileConnectorProfileConfig({
    required this.connectorProfileCredentials,
    required this.connectorProfileProperties,
  });

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentials
  connectorProfileCredentials;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileProperties
  connectorProfileProperties;

  Map<String, Object?> encode() => {
    'connector_profile_credentials': connectorProfileCredentials.encode(),
    'connector_profile_properties': connectorProfileProperties.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentials {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentials({
    this.amplitude,
    this.customConnector,
    this.datadog,
    this.dynatrace,
    this.googleAnalytics,
    this.honeycode,
    this.inforNexus,
    this.marketo,
    this.redshift,
    this.salesforce,
    this.sapoData,
    this.serviceNow,
    this.singular,
    this.slack,
    this.snowflake,
    this.trendmicro,
    this.veeva,
    this.zendesk,
  });

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude?
  amplitude;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector?
  customConnector;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog?
  datadog;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace?
  dynatrace;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics?
  googleAnalytics;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode?
  honeycode;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus?
  inforNexus;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo?
  marketo;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift?
  redshift;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce?
  salesforce;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData?
  sapoData;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow?
  serviceNow;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular?
  singular;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack?
  slack;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake?
  snowflake;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro?
  trendmicro;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva?
  veeva;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk?
  zendesk;

  Map<String, Object?> encode() => {
    if (amplitude != null) 'amplitude': amplitude!.encode(),
    if (customConnector != null) 'custom_connector': customConnector!.encode(),
    if (datadog != null) 'datadog': datadog!.encode(),
    if (dynatrace != null) 'dynatrace': dynatrace!.encode(),
    if (googleAnalytics != null) 'google_analytics': googleAnalytics!.encode(),
    if (honeycode != null) 'honeycode': honeycode!.encode(),
    if (inforNexus != null) 'infor_nexus': inforNexus!.encode(),
    if (marketo != null) 'marketo': marketo!.encode(),
    if (redshift != null) 'redshift': redshift!.encode(),
    if (salesforce != null) 'salesforce': salesforce!.encode(),
    if (sapoData != null) 'sapo_data': sapoData!.encode(),
    if (serviceNow != null) 'service_now': serviceNow!.encode(),
    if (singular != null) 'singular': singular!.encode(),
    if (slack != null) 'slack': slack!.encode(),
    if (snowflake != null) 'snowflake': snowflake!.encode(),
    if (trendmicro != null) 'trendmicro': trendmicro!.encode(),
    if (veeva != null) 'veeva': veeva!.encode(),
    if (zendesk != null) 'zendesk': zendesk!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.amplitude` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude({
    required this.apiKey,
    required this.secretKey,
  });

  final TfArg<String> apiKey;

  final TfArg<String> secretKey;

  Map<String, Object?> encode() => {
    'api_key': apiKey.toTfJson(),
    'secret_key': secretKey.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.custom_connector` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector({
    required this.authenticationType,
    this.apiKey,
    this.basic,
    this.custom,
    this.oauth2,
  });

  final TfArg<String> authenticationType;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey?
  apiKey;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic?
  basic;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom?
  custom;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2?
  oauth2;

  Map<String, Object?> encode() => {
    'authentication_type': authenticationType.toTfJson(),
    if (apiKey != null) 'api_key': apiKey!.encode(),
    if (basic != null) 'basic': basic!.encode(),
    if (custom != null) 'custom': custom!.encode(),
    if (oauth2 != null) 'oauth2': oauth2!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.custom_connector.api_key` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey({
    required this.apiKey,
    this.apiSecretKey,
  });

  final TfArg<String> apiKey;

  final TfArg<String>? apiSecretKey;

  Map<String, Object?> encode() => {
    'api_key': apiKey.toTfJson(),
    if (apiSecretKey != null) 'api_secret_key': apiSecretKey!.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.custom_connector.basic` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic({
    required this.password,
    required this.username,
  });

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.custom_connector.custom` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom({
    this.credentialsMap,
    required this.customAuthenticationType,
  });

  final TfArg<Map<String, String>>? credentialsMap;

  final TfArg<String> customAuthenticationType;

  Map<String, Object?> encode() => {
    if (credentialsMap != null) 'credentials_map': credentialsMap!.toTfJson(),
    'custom_authentication_type': customAuthenticationType.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.custom_connector.oauth2` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2 {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2({
    this.accessToken,
    this.clientId,
    this.clientSecret,
    this.refreshToken,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? refreshToken;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest?
  oauthRequest;

  Map<String, Object?> encode() => {
    if (accessToken != null) 'access_token': accessToken!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (refreshToken != null) 'refresh_token': refreshToken!.toTfJson(),
    if (oauthRequest != null) 'oauth_request': oauthRequest!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.custom_connector.oauth2.oauth_request` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest({
    this.authCode,
    this.redirectUri,
  });

  final TfArg<String>? authCode;

  final TfArg<String>? redirectUri;

  Map<String, Object?> encode() => {
    if (authCode != null) 'auth_code': authCode!.toTfJson(),
    if (redirectUri != null) 'redirect_uri': redirectUri!.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.datadog` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog({
    required this.apiKey,
    required this.applicationKey,
  });

  final TfArg<String> apiKey;

  final TfArg<String> applicationKey;

  Map<String, Object?> encode() => {
    'api_key': apiKey.toTfJson(),
    'application_key': applicationKey.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.dynatrace` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace({
    required this.apiToken,
  });

  final TfArg<String> apiToken;

  Map<String, Object?> encode() => {'api_token': apiToken.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.google_analytics` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.refreshToken,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  final TfArg<String>? refreshToken;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest?
  oauthRequest;

  Map<String, Object?> encode() => {
    if (accessToken != null) 'access_token': accessToken!.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    if (refreshToken != null) 'refresh_token': refreshToken!.toTfJson(),
    if (oauthRequest != null) 'oauth_request': oauthRequest!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.google_analytics.oauth_request` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest({
    this.authCode,
    this.redirectUri,
  });

  final TfArg<String>? authCode;

  final TfArg<String>? redirectUri;

  Map<String, Object?> encode() => {
    if (authCode != null) 'auth_code': authCode!.toTfJson(),
    if (redirectUri != null) 'redirect_uri': redirectUri!.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.honeycode` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode({
    this.accessToken,
    this.refreshToken,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String>? refreshToken;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycodeOauthRequest?
  oauthRequest;

  Map<String, Object?> encode() => {
    if (accessToken != null) 'access_token': accessToken!.toTfJson(),
    if (refreshToken != null) 'refresh_token': refreshToken!.toTfJson(),
    if (oauthRequest != null) 'oauth_request': oauthRequest!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.honeycode.oauth_request` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycodeOauthRequest {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycodeOauthRequest({
    this.authCode,
    this.redirectUri,
  });

  final TfArg<String>? authCode;

  final TfArg<String>? redirectUri;

  Map<String, Object?> encode() => {
    if (authCode != null) 'auth_code': authCode!.toTfJson(),
    if (redirectUri != null) 'redirect_uri': redirectUri!.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.infor_nexus` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus({
    required this.accessKeyId,
    required this.datakey,
    required this.secretAccessKey,
    required this.userId,
  });

  final TfArg<String> accessKeyId;

  final TfArg<String> datakey;

  final TfArg<String> secretAccessKey;

  final TfArg<String> userId;

  Map<String, Object?> encode() => {
    'access_key_id': accessKeyId.toTfJson(),
    'datakey': datakey.toTfJson(),
    'secret_access_key': secretAccessKey.toTfJson(),
    'user_id': userId.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.marketo` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest?
  oauthRequest;

  Map<String, Object?> encode() => {
    if (accessToken != null) 'access_token': accessToken!.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    if (oauthRequest != null) 'oauth_request': oauthRequest!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.marketo.oauth_request` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest({
    this.authCode,
    this.redirectUri,
  });

  final TfArg<String>? authCode;

  final TfArg<String>? redirectUri;

  Map<String, Object?> encode() => {
    if (authCode != null) 'auth_code': authCode!.toTfJson(),
    if (redirectUri != null) 'redirect_uri': redirectUri!.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.redshift` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift({
    required this.password,
    required this.username,
  });

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.salesforce` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce({
    this.accessToken,
    this.clientCredentialsArn,
    this.jwtToken,
    this.oauth2GrantType,
    this.refreshToken,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String>? clientCredentialsArn;

  final TfArg<String>? jwtToken;

  final TfArg<String>? oauth2GrantType;

  final TfArg<String>? refreshToken;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest?
  oauthRequest;

  Map<String, Object?> encode() => {
    if (accessToken != null) 'access_token': accessToken!.toTfJson(),
    if (clientCredentialsArn != null)
      'client_credentials_arn': clientCredentialsArn!.toTfJson(),
    if (jwtToken != null) 'jwt_token': jwtToken!.toTfJson(),
    if (oauth2GrantType != null)
      'oauth2_grant_type': oauth2GrantType!.toTfJson(),
    if (refreshToken != null) 'refresh_token': refreshToken!.toTfJson(),
    if (oauthRequest != null) 'oauth_request': oauthRequest!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.salesforce.oauth_request` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest({
    this.authCode,
    this.redirectUri,
  });

  final TfArg<String>? authCode;

  final TfArg<String>? redirectUri;

  Map<String, Object?> encode() => {
    if (authCode != null) 'auth_code': authCode!.toTfJson(),
    if (redirectUri != null) 'redirect_uri': redirectUri!.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.sapo_data` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData({
    this.basicAuthCredentials,
    this.oauthCredentials,
  });

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials?
  basicAuthCredentials;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials?
  oauthCredentials;

  Map<String, Object?> encode() => {
    if (basicAuthCredentials != null)
      'basic_auth_credentials': basicAuthCredentials!.encode(),
    if (oauthCredentials != null)
      'oauth_credentials': oauthCredentials!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.sapo_data.basic_auth_credentials` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials({
    required this.password,
    required this.username,
  });

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.sapo_data.oauth_credentials` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.refreshToken,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  final TfArg<String>? refreshToken;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest?
  oauthRequest;

  Map<String, Object?> encode() => {
    if (accessToken != null) 'access_token': accessToken!.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    if (refreshToken != null) 'refresh_token': refreshToken!.toTfJson(),
    if (oauthRequest != null) 'oauth_request': oauthRequest!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.sapo_data.oauth_credentials.oauth_request` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest({
    this.authCode,
    this.redirectUri,
  });

  final TfArg<String>? authCode;

  final TfArg<String>? redirectUri;

  Map<String, Object?> encode() => {
    if (authCode != null) 'auth_code': authCode!.toTfJson(),
    if (redirectUri != null) 'redirect_uri': redirectUri!.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.service_now` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow({
    required this.password,
    required this.username,
  });

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.singular` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular({
    required this.apiKey,
  });

  final TfArg<String> apiKey;

  Map<String, Object?> encode() => {'api_key': apiKey.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.slack` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlackOauthRequest?
  oauthRequest;

  Map<String, Object?> encode() => {
    if (accessToken != null) 'access_token': accessToken!.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    if (oauthRequest != null) 'oauth_request': oauthRequest!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.slack.oauth_request` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlackOauthRequest {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlackOauthRequest({
    this.authCode,
    this.redirectUri,
  });

  final TfArg<String>? authCode;

  final TfArg<String>? redirectUri;

  Map<String, Object?> encode() => {
    if (authCode != null) 'auth_code': authCode!.toTfJson(),
    if (redirectUri != null) 'redirect_uri': redirectUri!.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.snowflake` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake({
    required this.password,
    required this.username,
  });

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.trendmicro` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro({
    required this.apiSecretKey,
  });

  final TfArg<String> apiSecretKey;

  Map<String, Object?> encode() => {'api_secret_key': apiSecretKey.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.veeva` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva({
    required this.password,
    required this.username,
  });

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.zendesk` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendeskOauthRequest?
  oauthRequest;

  Map<String, Object?> encode() => {
    if (accessToken != null) 'access_token': accessToken!.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    if (oauthRequest != null) 'oauth_request': oauthRequest!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.zendesk.oauth_request` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendeskOauthRequest {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendeskOauthRequest({
    this.authCode,
    this.redirectUri,
  });

  final TfArg<String>? authCode;

  final TfArg<String>? redirectUri;

  Map<String, Object?> encode() => {
    if (authCode != null) 'auth_code': authCode!.toTfJson(),
    if (redirectUri != null) 'redirect_uri': redirectUri!.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfileProperties {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfileProperties({
    this.amplitude,
    this.customConnector,
    this.datadog,
    this.dynatrace,
    this.googleAnalytics,
    this.honeycode,
    this.inforNexus,
    this.marketo,
    this.redshift,
    this.salesforce,
    this.sapoData,
    this.serviceNow,
    this.singular,
    this.slack,
    this.snowflake,
    this.trendmicro,
    this.veeva,
    this.zendesk,
  });

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesAmplitude?
  amplitude;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector?
  customConnector;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog?
  datadog;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace?
  dynatrace;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesGoogleAnalytics?
  googleAnalytics;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesHoneycode?
  honeycode;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus?
  inforNexus;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo?
  marketo;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift?
  redshift;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce?
  salesforce;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData?
  sapoData;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow?
  serviceNow;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSingular?
  singular;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack?
  slack;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake?
  snowflake;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesTrendmicro?
  trendmicro;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva?
  veeva;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk?
  zendesk;

  Map<String, Object?> encode() => {
    if (amplitude != null) 'amplitude': amplitude!.encode(),
    if (customConnector != null) 'custom_connector': customConnector!.encode(),
    if (datadog != null) 'datadog': datadog!.encode(),
    if (dynatrace != null) 'dynatrace': dynatrace!.encode(),
    if (googleAnalytics != null) 'google_analytics': googleAnalytics!.encode(),
    if (honeycode != null) 'honeycode': honeycode!.encode(),
    if (inforNexus != null) 'infor_nexus': inforNexus!.encode(),
    if (marketo != null) 'marketo': marketo!.encode(),
    if (redshift != null) 'redshift': redshift!.encode(),
    if (salesforce != null) 'salesforce': salesforce!.encode(),
    if (sapoData != null) 'sapo_data': sapoData!.encode(),
    if (serviceNow != null) 'service_now': serviceNow!.encode(),
    if (singular != null) 'singular': singular!.encode(),
    if (slack != null) 'slack': slack!.encode(),
    if (snowflake != null) 'snowflake': snowflake!.encode(),
    if (trendmicro != null) 'trendmicro': trendmicro!.encode(),
    if (veeva != null) 'veeva': veeva!.encode(),
    if (zendesk != null) 'zendesk': zendesk!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.amplitude` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesAmplitude {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesAmplitude();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.custom_connector` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector({
    this.profileProperties,
    this.oauth2Properties,
  });

  final TfArg<Map<String, String>>? profileProperties;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties?
  oauth2Properties;

  Map<String, Object?> encode() => {
    if (profileProperties != null)
      'profile_properties': profileProperties!.toTfJson(),
    if (oauth2Properties != null)
      'oauth2_properties': oauth2Properties!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.custom_connector.oauth2_properties` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties({
    required this.oauth2GrantType,
    required this.tokenUrl,
    this.tokenUrlCustomProperties,
  });

  final TfArg<String> oauth2GrantType;

  final TfArg<String> tokenUrl;

  final TfArg<Map<String, String>>? tokenUrlCustomProperties;

  Map<String, Object?> encode() => {
    'oauth2_grant_type': oauth2GrantType.toTfJson(),
    'token_url': tokenUrl.toTfJson(),
    if (tokenUrlCustomProperties != null)
      'token_url_custom_properties': tokenUrlCustomProperties!.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.datadog` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog({
    required this.instanceUrl,
  });

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.dynatrace` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace({
    required this.instanceUrl,
  });

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.google_analytics` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesGoogleAnalytics {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesGoogleAnalytics();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.honeycode` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesHoneycode {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesHoneycode();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.infor_nexus` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus({
    required this.instanceUrl,
  });

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.marketo` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo({
    required this.instanceUrl,
  });

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.redshift` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift({
    required this.bucketName,
    this.bucketPrefix,
    this.clusterIdentifier,
    this.dataApiRoleArn,
    this.databaseName,
    this.databaseUrl,
    required this.roleArn,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<String>? clusterIdentifier;

  final TfArg<String>? dataApiRoleArn;

  final TfArg<String>? databaseName;

  final TfArg<String>? databaseUrl;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (clusterIdentifier != null)
      'cluster_identifier': clusterIdentifier!.toTfJson(),
    if (dataApiRoleArn != null) 'data_api_role_arn': dataApiRoleArn!.toTfJson(),
    if (databaseName != null) 'database_name': databaseName!.toTfJson(),
    if (databaseUrl != null) 'database_url': databaseUrl!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.salesforce` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce({
    this.instanceUrl,
    this.isSandboxEnvironment,
    this.usePrivatelinkForMetadataAndAuthorization,
  });

  final TfArg<String>? instanceUrl;

  final TfArg<bool>? isSandboxEnvironment;

  final TfArg<bool>? usePrivatelinkForMetadataAndAuthorization;

  Map<String, Object?> encode() => {
    if (instanceUrl != null) 'instance_url': instanceUrl!.toTfJson(),
    if (isSandboxEnvironment != null)
      'is_sandbox_environment': isSandboxEnvironment!.toTfJson(),
    if (usePrivatelinkForMetadataAndAuthorization != null)
      'use_privatelink_for_metadata_and_authorization':
          usePrivatelinkForMetadataAndAuthorization!.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.sapo_data` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData({
    required this.applicationHostUrl,
    required this.applicationServicePath,
    required this.clientNumber,
    this.logonLanguage,
    required this.portNumber,
    this.privateLinkServiceName,
    this.oauthProperties,
  });

  final TfArg<String> applicationHostUrl;

  final TfArg<String> applicationServicePath;

  final TfArg<String> clientNumber;

  final TfArg<String>? logonLanguage;

  final TfArg<num> portNumber;

  final TfArg<String>? privateLinkServiceName;

  final AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties?
  oauthProperties;

  Map<String, Object?> encode() => {
    'application_host_url': applicationHostUrl.toTfJson(),
    'application_service_path': applicationServicePath.toTfJson(),
    'client_number': clientNumber.toTfJson(),
    if (logonLanguage != null) 'logon_language': logonLanguage!.toTfJson(),
    'port_number': portNumber.toTfJson(),
    if (privateLinkServiceName != null)
      'private_link_service_name': privateLinkServiceName!.toTfJson(),
    if (oauthProperties != null) 'oauth_properties': oauthProperties!.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.sapo_data.oauth_properties` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties({
    required this.authCodeUrl,
    required this.oauthScopes,
    required this.tokenUrl,
  });

  final TfArg<String> authCodeUrl;

  final TfArg<List<Object?>> oauthScopes;

  final TfArg<String> tokenUrl;

  Map<String, Object?> encode() => {
    'auth_code_url': authCodeUrl.toTfJson(),
    'oauth_scopes': oauthScopes.toTfJson(),
    'token_url': tokenUrl.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.service_now` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow({
    required this.instanceUrl,
  });

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.singular` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSingular {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSingular();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.slack` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack({
    required this.instanceUrl,
  });

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.snowflake` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake({
    this.accountName,
    required this.bucketName,
    this.bucketPrefix,
    this.privateLinkServiceName,
    this.region,
    required this.stage,
    required this.warehouse,
  });

  final TfArg<String>? accountName;

  final TfArg<String> bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<String>? privateLinkServiceName;

  final TfArg<String>? region;

  final TfArg<String> stage;

  final TfArg<String> warehouse;

  Map<String, Object?> encode() => {
    if (accountName != null) 'account_name': accountName!.toTfJson(),
    'bucket_name': bucketName.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (privateLinkServiceName != null)
      'private_link_service_name': privateLinkServiceName!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    'stage': stage.toTfJson(),
    'warehouse': warehouse.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.trendmicro` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesTrendmicro {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesTrendmicro();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.veeva` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva({
    required this.instanceUrl,
  });

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.zendesk` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk {
  const AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk({
    required this.instanceUrl,
  });

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Factory wrapper for `aws_appflow_connector_profile`.
final class AwsAppflowConnectorProfile extends Resource {
  static const String tfType = 'aws_appflow_connector_profile';

  AwsAppflowConnectorProfile({
    required super.localName,
    required TfArg<String> connectionMode,
    TfArg<String>? connectorLabel,
    required TfArg<String> connectorType,
    TfArg<String>? kmsArn,
    required TfArg<String> name,
    TfArg<String>? region,
    required AppflowConnectorProfileConnectorProfileConfig
    connectorProfileConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_mode': connectionMode,
           if (connectorLabel != null) 'connector_label': connectorLabel,
           'connector_type': connectorType,
           if (kmsArn != null) 'kms_arn': kmsArn,
           'name': name,
           if (region != null) 'region': region,
           'connector_profile_config': TfArg.literal(
             connectorProfileConfig.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppflowConnectorProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `credentials_arn` attribute.
  TfRef<String> get credentialsArn =>
      TfRef.attribute<String>(this, 'credentials_arn');
}
