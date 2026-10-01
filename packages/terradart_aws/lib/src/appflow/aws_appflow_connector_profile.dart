// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

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

/// Appflow Connector Profile Connection enum for `connection_mode`.
enum AppflowConnectorProfileConnectionMode implements TerraformEnum {
  public('Public'),
  private('Private');

  const AppflowConnectorProfileConnectionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Appflow Connector Profile Connector enum for `connector_type`.
enum AppflowConnectorProfileConnectorType implements TerraformEnum {
  salesforce('Salesforce'),
  singular('Singular'),
  slack('Slack'),
  redshift('Redshift'),
  s3('S3'),
  marketo('Marketo'),
  googleanalytics('Googleanalytics'),
  zendesk('Zendesk'),
  servicenow('Servicenow'),
  datadog('Datadog'),
  trendmicro('Trendmicro'),
  snowflake('Snowflake'),
  dynatrace('Dynatrace'),
  infornexus('Infornexus'),
  amplitude('Amplitude'),
  veeva('Veeva'),
  eventbridge('EventBridge'),
  lookoutmetrics('LookoutMetrics'),
  upsolver('Upsolver'),
  honeycode('Honeycode'),
  customerprofiles('CustomerProfiles'),
  sapodata('SAPOData'),
  customconnector('CustomConnector'),
  pardot('Pardot');

  const AppflowConnectorProfileConnectorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `connector_profile_config` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileConfig {
  const AppflowConnectorProfileConfig({
    required this.connectorProfileCredentials,
    required this.connectorProfileProperties,
  });

  final AppflowConnectorProfileCredentials connectorProfileCredentials;

  final AppflowConnectorProfileProperties connectorProfileProperties;

  Map<String, Object?> encode() => {
    'connector_profile_credentials': connectorProfileCredentials.encode(),
    'connector_profile_properties': connectorProfileProperties.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentials {
  const AppflowConnectorProfileCredentials({
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

  final AppflowConnectorProfileCredentialsAmplitude? amplitude;

  final AppflowConnectorProfileCredentialsCustomConnector? customConnector;

  final AppflowConnectorProfileCredentialsDatadog? datadog;

  final AppflowConnectorProfileCredentialsDynatrace? dynatrace;

  final AppflowConnectorProfileCredentialsGoogleAnalytics? googleAnalytics;

  final AppflowConnectorProfileCredentialsHoneycode? honeycode;

  final AppflowConnectorProfileCredentialsInforNexus? inforNexus;

  final AppflowConnectorProfileCredentialsMarketo? marketo;

  final AppflowConnectorProfileCredentialsRedshift? redshift;

  final AppflowConnectorProfileCredentialsSalesforce? salesforce;

  final AppflowConnectorProfileCredentialsSapoData? sapoData;

  final AppflowConnectorProfileCredentialsServiceNow? serviceNow;

  final AppflowConnectorProfileCredentialsSingular? singular;

  final AppflowConnectorProfileCredentialsSlack? slack;

  final AppflowConnectorProfileCredentialsSnowflake? snowflake;

  final AppflowConnectorProfileCredentialsTrendmicro? trendmicro;

  final AppflowConnectorProfileCredentialsVeeva? veeva;

  final AppflowConnectorProfileCredentialsZendesk? zendesk;

  Map<String, Object?> encode() => {
    'amplitude': ?amplitude?.encode(),
    'custom_connector': ?customConnector?.encode(),
    'datadog': ?datadog?.encode(),
    'dynatrace': ?dynatrace?.encode(),
    'google_analytics': ?googleAnalytics?.encode(),
    'honeycode': ?honeycode?.encode(),
    'infor_nexus': ?inforNexus?.encode(),
    'marketo': ?marketo?.encode(),
    'redshift': ?redshift?.encode(),
    'salesforce': ?salesforce?.encode(),
    'sapo_data': ?sapoData?.encode(),
    'service_now': ?serviceNow?.encode(),
    'singular': ?singular?.encode(),
    'slack': ?slack?.encode(),
    'snowflake': ?snowflake?.encode(),
    'trendmicro': ?trendmicro?.encode(),
    'veeva': ?veeva?.encode(),
    'zendesk': ?zendesk?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.amplitude` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentialsAmplitude {
  const AppflowConnectorProfileCredentialsAmplitude({
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
final class AppflowConnectorProfileCredentialsCustomConnector {
  const AppflowConnectorProfileCredentialsCustomConnector({
    required this.authenticationType,
    this.apiKey,
    this.basic,
    this.custom,
    this.oauth2,
  });

  final TfArg<AppflowConnectorProfileAuthenticationType> authenticationType;

  final AppflowConnectorProfileApiKey? apiKey;

  final AppflowConnectorProfileBasic? basic;

  final AppflowConnectorProfileCustom? custom;

  final AppflowConnectorProfileOauth2? oauth2;

  Map<String, Object?> encode() => {
    'authentication_type': authenticationType.toTfJson(),
    'api_key': ?apiKey?.encode(),
    'basic': ?basic?.encode(),
    'custom': ?custom?.encode(),
    'oauth2': ?oauth2?.encode(),
  };
}

/// `authentication_type` — derived from the provider schema description.
enum AppflowConnectorProfileAuthenticationType implements TerraformEnum {
  oauth2('OAUTH2'),
  apikey('APIKEY'),
  basic('BASIC'),
  custom('CUSTOM');

  const AppflowConnectorProfileAuthenticationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.custom_connector.api_key` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileApiKey {
  const AppflowConnectorProfileApiKey({
    required this.apiKey,
    this.apiSecretKey,
  });

  final TfArg<String> apiKey;

  final TfArg<String>? apiSecretKey;

  Map<String, Object?> encode() => {
    'api_key': apiKey.toTfJson(),
    'api_secret_key': ?apiSecretKey?.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.custom_connector.basic` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileBasic {
  const AppflowConnectorProfileBasic({
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
final class AppflowConnectorProfileCustom {
  const AppflowConnectorProfileCustom({
    this.credentialsMap,
    required this.customAuthenticationType,
  });

  final TfArg<Map<String, String>>? credentialsMap;

  final TfArg<String> customAuthenticationType;

  Map<String, Object?> encode() => {
    'credentials_map': ?credentialsMap?.toTfJson(),
    'custom_authentication_type': customAuthenticationType.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.custom_connector.oauth2` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileOauth2 {
  const AppflowConnectorProfileOauth2({
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

  final AppflowConnectorProfileOauthRequest? oauthRequest;

  Map<String, Object?> encode() => {
    'access_token': ?accessToken?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
    'oauth_request': ?oauthRequest?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.google_analytics.oauth_request` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppflowConnectorProfileOauthRequest {
  const AppflowConnectorProfileOauthRequest({this.authCode, this.redirectUri});

  final TfArg<String>? authCode;

  final TfArg<String>? redirectUri;

  Map<String, Object?> encode() => {
    'auth_code': ?authCode?.toTfJson(),
    'redirect_uri': ?redirectUri?.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.datadog` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentialsDatadog {
  const AppflowConnectorProfileCredentialsDatadog({
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
final class AppflowConnectorProfileCredentialsDynatrace {
  const AppflowConnectorProfileCredentialsDynatrace({required this.apiToken});

  final TfArg<String> apiToken;

  Map<String, Object?> encode() => {'api_token': apiToken.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.google_analytics` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentialsGoogleAnalytics {
  const AppflowConnectorProfileCredentialsGoogleAnalytics({
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

  final AppflowConnectorProfileOauthRequest? oauthRequest;

  Map<String, Object?> encode() => {
    'access_token': ?accessToken?.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
    'oauth_request': ?oauthRequest?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.honeycode` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentialsHoneycode {
  const AppflowConnectorProfileCredentialsHoneycode({
    this.accessToken,
    this.refreshToken,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String>? refreshToken;

  final AppflowConnectorProfileOauthRequest? oauthRequest;

  Map<String, Object?> encode() => {
    'access_token': ?accessToken?.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
    'oauth_request': ?oauthRequest?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.infor_nexus` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentialsInforNexus {
  const AppflowConnectorProfileCredentialsInforNexus({
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
final class AppflowConnectorProfileCredentialsMarketo {
  const AppflowConnectorProfileCredentialsMarketo({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  final AppflowConnectorProfileOauthRequest? oauthRequest;

  Map<String, Object?> encode() => {
    'access_token': ?accessToken?.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'oauth_request': ?oauthRequest?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.redshift` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentialsRedshift {
  const AppflowConnectorProfileCredentialsRedshift({
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
final class AppflowConnectorProfileCredentialsSalesforce {
  const AppflowConnectorProfileCredentialsSalesforce({
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

  final TfArg<AppflowConnectorProfileOauth2GrantType>? oauth2GrantType;

  final TfArg<String>? refreshToken;

  final AppflowConnectorProfileOauthRequest? oauthRequest;

  Map<String, Object?> encode() => {
    'access_token': ?accessToken?.toTfJson(),
    'client_credentials_arn': ?clientCredentialsArn?.toTfJson(),
    'jwt_token': ?jwtToken?.toTfJson(),
    'oauth2_grant_type': ?oauth2GrantType?.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
    'oauth_request': ?oauthRequest?.encode(),
  };
}

/// `oauth2_grant_type` — derived from the provider schema description.
enum AppflowConnectorProfileOauth2GrantType implements TerraformEnum {
  clientCredentials('CLIENT_CREDENTIALS'),
  authorizationCode('AUTHORIZATION_CODE'),
  jwtBearer('JWT_BEARER');

  const AppflowConnectorProfileOauth2GrantType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.sapo_data` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentialsSapoData {
  const AppflowConnectorProfileCredentialsSapoData({
    this.basicAuthCredentials,
    this.oauthCredentials,
  });

  final AppflowConnectorProfileBasicAuthCredentials? basicAuthCredentials;

  final AppflowConnectorProfileOauthCredentials? oauthCredentials;

  Map<String, Object?> encode() => {
    'basic_auth_credentials': ?basicAuthCredentials?.encode(),
    'oauth_credentials': ?oauthCredentials?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.sapo_data.basic_auth_credentials` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileBasicAuthCredentials {
  const AppflowConnectorProfileBasicAuthCredentials({
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
final class AppflowConnectorProfileOauthCredentials {
  const AppflowConnectorProfileOauthCredentials({
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

  final AppflowConnectorProfileOauthRequest? oauthRequest;

  Map<String, Object?> encode() => {
    'access_token': ?accessToken?.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
    'oauth_request': ?oauthRequest?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.service_now` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentialsServiceNow {
  const AppflowConnectorProfileCredentialsServiceNow({
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
final class AppflowConnectorProfileCredentialsSingular {
  const AppflowConnectorProfileCredentialsSingular({required this.apiKey});

  final TfArg<String> apiKey;

  Map<String, Object?> encode() => {'api_key': apiKey.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.slack` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentialsSlack {
  const AppflowConnectorProfileCredentialsSlack({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  final AppflowConnectorProfileOauthRequest? oauthRequest;

  Map<String, Object?> encode() => {
    'access_token': ?accessToken?.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'oauth_request': ?oauthRequest?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.snowflake` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentialsSnowflake {
  const AppflowConnectorProfileCredentialsSnowflake({
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
final class AppflowConnectorProfileCredentialsTrendmicro {
  const AppflowConnectorProfileCredentialsTrendmicro({
    required this.apiSecretKey,
  });

  final TfArg<String> apiSecretKey;

  Map<String, Object?> encode() => {'api_secret_key': apiSecretKey.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_credentials.veeva` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileCredentialsVeeva {
  const AppflowConnectorProfileCredentialsVeeva({
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
final class AppflowConnectorProfileCredentialsZendesk {
  const AppflowConnectorProfileCredentialsZendesk({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.oauthRequest,
  });

  final TfArg<String>? accessToken;

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  final AppflowConnectorProfileOauthRequest? oauthRequest;

  Map<String, Object?> encode() => {
    'access_token': ?accessToken?.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'oauth_request': ?oauthRequest?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileProperties {
  const AppflowConnectorProfileProperties({
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

  final AppflowConnectorProfilePropertiesAmplitude? amplitude;

  final AppflowConnectorProfilePropertiesCustomConnector? customConnector;

  final AppflowConnectorProfilePropertiesDatadog? datadog;

  final AppflowConnectorProfilePropertiesDynatrace? dynatrace;

  final AppflowConnectorProfilePropertiesGoogleAnalytics? googleAnalytics;

  final AppflowConnectorProfilePropertiesHoneycode? honeycode;

  final AppflowConnectorProfilePropertiesInforNexus? inforNexus;

  final AppflowConnectorProfilePropertiesMarketo? marketo;

  final AppflowConnectorProfilePropertiesRedshift? redshift;

  final AppflowConnectorProfilePropertiesSalesforce? salesforce;

  final AppflowConnectorProfilePropertiesSapoData? sapoData;

  final AppflowConnectorProfilePropertiesServiceNow? serviceNow;

  final AppflowConnectorProfilePropertiesSingular? singular;

  final AppflowConnectorProfilePropertiesSlack? slack;

  final AppflowConnectorProfilePropertiesSnowflake? snowflake;

  final AppflowConnectorProfilePropertiesTrendmicro? trendmicro;

  final AppflowConnectorProfilePropertiesVeeva? veeva;

  final AppflowConnectorProfilePropertiesZendesk? zendesk;

  Map<String, Object?> encode() => {
    'amplitude': ?amplitude?.encode(),
    'custom_connector': ?customConnector?.encode(),
    'datadog': ?datadog?.encode(),
    'dynatrace': ?dynatrace?.encode(),
    'google_analytics': ?googleAnalytics?.encode(),
    'honeycode': ?honeycode?.encode(),
    'infor_nexus': ?inforNexus?.encode(),
    'marketo': ?marketo?.encode(),
    'redshift': ?redshift?.encode(),
    'salesforce': ?salesforce?.encode(),
    'sapo_data': ?sapoData?.encode(),
    'service_now': ?serviceNow?.encode(),
    'singular': ?singular?.encode(),
    'slack': ?slack?.encode(),
    'snowflake': ?snowflake?.encode(),
    'trendmicro': ?trendmicro?.encode(),
    'veeva': ?veeva?.encode(),
    'zendesk': ?zendesk?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.amplitude` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesAmplitude {
  const AppflowConnectorProfilePropertiesAmplitude();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.custom_connector` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesCustomConnector {
  const AppflowConnectorProfilePropertiesCustomConnector({
    this.profileProperties,
    this.oauth2Properties,
  });

  final TfArg<Map<String, String>>? profileProperties;

  final AppflowConnectorProfileOauth2Properties? oauth2Properties;

  Map<String, Object?> encode() => {
    'profile_properties': ?profileProperties?.toTfJson(),
    'oauth2_properties': ?oauth2Properties?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.custom_connector.oauth2_properties` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileOauth2Properties {
  const AppflowConnectorProfileOauth2Properties({
    required this.oauth2GrantType,
    required this.tokenUrl,
    this.tokenUrlCustomProperties,
  });

  final TfArg<AppflowConnectorProfileOauth2GrantType> oauth2GrantType;

  final TfArg<String> tokenUrl;

  final TfArg<Map<String, String>>? tokenUrlCustomProperties;

  Map<String, Object?> encode() => {
    'oauth2_grant_type': oauth2GrantType.toTfJson(),
    'token_url': tokenUrl.toTfJson(),
    'token_url_custom_properties': ?tokenUrlCustomProperties?.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.datadog` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesDatadog {
  const AppflowConnectorProfilePropertiesDatadog({required this.instanceUrl});

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.dynatrace` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesDynatrace {
  const AppflowConnectorProfilePropertiesDynatrace({required this.instanceUrl});

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.google_analytics` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesGoogleAnalytics {
  const AppflowConnectorProfilePropertiesGoogleAnalytics();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.honeycode` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesHoneycode {
  const AppflowConnectorProfilePropertiesHoneycode();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.infor_nexus` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesInforNexus {
  const AppflowConnectorProfilePropertiesInforNexus({
    required this.instanceUrl,
  });

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.marketo` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesMarketo {
  const AppflowConnectorProfilePropertiesMarketo({required this.instanceUrl});

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.redshift` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesRedshift {
  const AppflowConnectorProfilePropertiesRedshift({
    required this.bucketName,
    this.bucketPrefix,
    this.clusterIdentifier,
    this.dataApiRoleArn,
    this.databaseName,
    this.databaseUrl,
    required this.roleArn,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<String>? clusterIdentifier;

  final TfArg<String>? dataApiRoleArn;

  final TfArg<String>? databaseName;

  final TfArg<String>? databaseUrl;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'cluster_identifier': ?clusterIdentifier?.toTfJson(),
    'data_api_role_arn': ?dataApiRoleArn?.toTfJson(),
    'database_name': ?databaseName?.toTfJson(),
    'database_url': ?databaseUrl?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.salesforce` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesSalesforce {
  const AppflowConnectorProfilePropertiesSalesforce({
    this.instanceUrl,
    this.isSandboxEnvironment,
    this.usePrivatelinkForMetadataAndAuthorization,
  });

  final TfArg<String>? instanceUrl;

  final TfArg<bool>? isSandboxEnvironment;

  final TfArg<bool>? usePrivatelinkForMetadataAndAuthorization;

  Map<String, Object?> encode() => {
    'instance_url': ?instanceUrl?.toTfJson(),
    'is_sandbox_environment': ?isSandboxEnvironment?.toTfJson(),
    'use_privatelink_for_metadata_and_authorization':
        ?usePrivatelinkForMetadataAndAuthorization?.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.sapo_data` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesSapoData {
  const AppflowConnectorProfilePropertiesSapoData({
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

  final AppflowConnectorProfileOauthProperties? oauthProperties;

  Map<String, Object?> encode() => {
    'application_host_url': applicationHostUrl.toTfJson(),
    'application_service_path': applicationServicePath.toTfJson(),
    'client_number': clientNumber.toTfJson(),
    'logon_language': ?logonLanguage?.toTfJson(),
    'port_number': portNumber.toTfJson(),
    'private_link_service_name': ?privateLinkServiceName?.toTfJson(),
    'oauth_properties': ?oauthProperties?.encode(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.sapo_data.oauth_properties` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfileOauthProperties {
  const AppflowConnectorProfileOauthProperties({
    required this.authCodeUrl,
    required this.oauthScopes,
    required this.tokenUrl,
  });

  final TfArg<String> authCodeUrl;

  final TfArg<List<String>> oauthScopes;

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
final class AppflowConnectorProfilePropertiesServiceNow {
  const AppflowConnectorProfilePropertiesServiceNow({
    required this.instanceUrl,
  });

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.singular` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesSingular {
  const AppflowConnectorProfilePropertiesSingular();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.slack` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesSlack {
  const AppflowConnectorProfilePropertiesSlack({required this.instanceUrl});

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.snowflake` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesSnowflake {
  const AppflowConnectorProfilePropertiesSnowflake({
    this.accountName,
    required this.bucketName,
    this.bucketPrefix,
    this.privateLinkServiceName,
    this.region,
    required this.stage,
    required this.warehouse,
  });

  final TfArg<String>? accountName;

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<String>? privateLinkServiceName;

  final TfArg<String>? region;

  final TfArg<String> stage;

  final TfArg<String> warehouse;

  Map<String, Object?> encode() => {
    'account_name': ?accountName?.toTfJson(),
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'private_link_service_name': ?privateLinkServiceName?.toTfJson(),
    'region': ?region?.toTfJson(),
    'stage': stage.toTfJson(),
    'warehouse': warehouse.toTfJson(),
  };
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.trendmicro` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesTrendmicro {
  const AppflowConnectorProfilePropertiesTrendmicro();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.veeva` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesVeeva {
  const AppflowConnectorProfilePropertiesVeeva({required this.instanceUrl});

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Typed helper for the `connector_profile_config.connector_profile_properties.zendesk` block of
/// `aws_appflow_connector_profile` (derived from provider schema).
@immutable
final class AppflowConnectorProfilePropertiesZendesk {
  const AppflowConnectorProfilePropertiesZendesk({required this.instanceUrl});

  final TfArg<String> instanceUrl;

  Map<String, Object?> encode() => {'instance_url': instanceUrl.toTfJson()};
}

/// Factory wrapper for `aws_appflow_connector_profile`.
final class AwsAppflowConnectorProfile extends Resource {
  static const String tfType = 'aws_appflow_connector_profile';

  AwsAppflowConnectorProfile({
    required super.localName,
    required TfArg<AppflowConnectorProfileConnectionMode> connectionMode,
    TfArg<String>? connectorLabel,
    required TfArg<AppflowConnectorProfileConnectorType> connectorType,
    RefTo<AwsKmsKey>? kmsArn,
    required TfArg<String> name,
    TfArg<String>? region,
    required AppflowConnectorProfileConfig connectorProfileConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_mode': connectionMode,
           'connector_label': ?connectorLabel,
           'connector_type': connectorType,
           'kms_arn': ?kmsArn?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'connector_profile_config': TfArg.literal(
             connectorProfileConfig.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppflowConnectorProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppflowConnectorProfile>`.
  RefTo<AwsAppflowConnectorProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `credentials_arn` attribute.
  TfRef<String> get credentialsArn =>
      TfRef.attribute<String>(this, 'credentials_arn');

  /// Reference to `connection_mode` attribute.
  TfRef<String> get connectionModeRef =>
      TfRef.attribute<String>(this, 'connection_mode');

  /// Reference to `connector_label` attribute.
  TfRef<String> get connectorLabelRef =>
      TfRef.attribute<String>(this, 'connector_label');

  /// Reference to `connector_type` attribute.
  TfRef<String> get connectorTypeRef =>
      TfRef.attribute<String>(this, 'connector_type');

  /// Reference to `kms_arn` attribute.
  TfRef<String> get kmsArnRef => TfRef.attribute<String>(this, 'kms_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
