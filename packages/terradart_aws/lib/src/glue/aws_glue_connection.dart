// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_connection`.
const Set<String> _awsGlueConnectionSensitive = <String>{
  'athena_properties',
  'authentication_configuration.basic_authentication_credentials.password',
  'authentication_configuration.custom_authentication_credentials',
  'authentication_configuration.oauth2_properties.authorization_code_properties.authorization_code',
  'authentication_configuration.oauth2_properties.oauth2_credentials.access_token',
  'authentication_configuration.oauth2_properties.oauth2_credentials.jwt_token',
  'authentication_configuration.oauth2_properties.oauth2_credentials.refresh_token',
  'authentication_configuration.oauth2_properties.oauth2_credentials.user_managed_client_application_client_secret',
  'authentication_configuration.oauth2_properties.token_url_parameters_map',
  'connection_properties',
};

/// Typed helper for the `authentication_configuration` block of
/// `aws_glue_connection` (derived from provider schema).
@immutable
final class GlueConnectionAuthenticationConfiguration {
  const GlueConnectionAuthenticationConfiguration({
    required this.authenticationType,
    this.customAuthenticationCredentials,
    this.kmsKeyArn,
    this.secretArn,
    this.basicAuthenticationCredentials,
    this.oauth2Properties,
  });

  final TfArg<String> authenticationType;

  final TfArg<Map<String, String>>? customAuthenticationCredentials;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? secretArn;

  final GlueConnectionAuthenticationConfigurationBasicAuthenticationCredentials?
  basicAuthenticationCredentials;

  final GlueConnectionAuthenticationConfigurationOauth2Properties?
  oauth2Properties;

  Map<String, Object?> encode() => {
    'authentication_type': authenticationType.toTfJson(),
    if (customAuthenticationCredentials != null)
      'custom_authentication_credentials': customAuthenticationCredentials!
          .toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (secretArn != null) 'secret_arn': secretArn!.toTfJson(),
    if (basicAuthenticationCredentials != null)
      'basic_authentication_credentials': basicAuthenticationCredentials!
          .encode(),
    if (oauth2Properties != null)
      'oauth2_properties': oauth2Properties!.encode(),
  };
}

/// Typed helper for the `authentication_configuration.basic_authentication_credentials` block of
/// `aws_glue_connection` (derived from provider schema).
@immutable
final class GlueConnectionAuthenticationConfigurationBasicAuthenticationCredentials {
  const GlueConnectionAuthenticationConfigurationBasicAuthenticationCredentials({
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

/// Typed helper for the `authentication_configuration.oauth2_properties` block of
/// `aws_glue_connection` (derived from provider schema).
@immutable
final class GlueConnectionAuthenticationConfigurationOauth2Properties {
  const GlueConnectionAuthenticationConfigurationOauth2Properties({
    this.oauth2GrantType,
    this.tokenUrl,
    this.tokenUrlParametersMap,
    this.authorizationCodeProperties,
    this.oauth2ClientApplication,
    this.oauth2Credentials,
  });

  final TfArg<String>? oauth2GrantType;

  final TfArg<String>? tokenUrl;

  final TfArg<Map<String, String>>? tokenUrlParametersMap;

  final GlueConnectionAuthenticationConfigurationOauth2PropertiesAuthorizationCodeProperties?
  authorizationCodeProperties;

  final GlueConnectionAuthenticationConfigurationOauth2PropertiesOauth2ClientApplication?
  oauth2ClientApplication;

  final GlueConnectionAuthenticationConfigurationOauth2PropertiesOauth2Credentials?
  oauth2Credentials;

  Map<String, Object?> encode() => {
    if (oauth2GrantType != null)
      'oauth2_grant_type': oauth2GrantType!.toTfJson(),
    if (tokenUrl != null) 'token_url': tokenUrl!.toTfJson(),
    if (tokenUrlParametersMap != null)
      'token_url_parameters_map': tokenUrlParametersMap!.toTfJson(),
    if (authorizationCodeProperties != null)
      'authorization_code_properties': authorizationCodeProperties!.encode(),
    if (oauth2ClientApplication != null)
      'oauth2_client_application': oauth2ClientApplication!.encode(),
    if (oauth2Credentials != null)
      'oauth2_credentials': oauth2Credentials!.encode(),
  };
}

/// Typed helper for the `authentication_configuration.oauth2_properties.authorization_code_properties` block of
/// `aws_glue_connection` (derived from provider schema).
@immutable
final class GlueConnectionAuthenticationConfigurationOauth2PropertiesAuthorizationCodeProperties {
  const GlueConnectionAuthenticationConfigurationOauth2PropertiesAuthorizationCodeProperties({
    required this.authorizationCode,
    required this.redirectUri,
  });

  final TfArg<String> authorizationCode;

  final TfArg<String> redirectUri;

  Map<String, Object?> encode() => {
    'authorization_code': authorizationCode.toTfJson(),
    'redirect_uri': redirectUri.toTfJson(),
  };
}

/// Typed helper for the `authentication_configuration.oauth2_properties.oauth2_client_application` block of
/// `aws_glue_connection` (derived from provider schema).
@immutable
final class GlueConnectionAuthenticationConfigurationOauth2PropertiesOauth2ClientApplication {
  const GlueConnectionAuthenticationConfigurationOauth2PropertiesOauth2ClientApplication({
    this.awsManagedClientApplicationReference,
    this.userManagedClientApplicationClientId,
  });

  final TfArg<String>? awsManagedClientApplicationReference;

  final TfArg<String>? userManagedClientApplicationClientId;

  Map<String, Object?> encode() => {
    if (awsManagedClientApplicationReference != null)
      'aws_managed_client_application_reference':
          awsManagedClientApplicationReference!.toTfJson(),
    if (userManagedClientApplicationClientId != null)
      'user_managed_client_application_client_id':
          userManagedClientApplicationClientId!.toTfJson(),
  };
}

/// Typed helper for the `authentication_configuration.oauth2_properties.oauth2_credentials` block of
/// `aws_glue_connection` (derived from provider schema).
@immutable
final class GlueConnectionAuthenticationConfigurationOauth2PropertiesOauth2Credentials {
  const GlueConnectionAuthenticationConfigurationOauth2PropertiesOauth2Credentials({
    this.accessToken,
    this.jwtToken,
    this.refreshToken,
    this.userManagedClientApplicationClientSecret,
  });

  final TfArg<String>? accessToken;

  final TfArg<String>? jwtToken;

  final TfArg<String>? refreshToken;

  final TfArg<String>? userManagedClientApplicationClientSecret;

  Map<String, Object?> encode() => {
    if (accessToken != null) 'access_token': accessToken!.toTfJson(),
    if (jwtToken != null) 'jwt_token': jwtToken!.toTfJson(),
    if (refreshToken != null) 'refresh_token': refreshToken!.toTfJson(),
    if (userManagedClientApplicationClientSecret != null)
      'user_managed_client_application_client_secret':
          userManagedClientApplicationClientSecret!.toTfJson(),
  };
}

/// Typed helper for the `physical_connection_requirements` block of
/// `aws_glue_connection` (derived from provider schema).
@immutable
final class GlueConnectionPhysicalConnectionRequirements {
  const GlueConnectionPhysicalConnectionRequirements({
    this.availabilityZone,
    this.securityGroupIdList,
    this.subnetId,
  });

  final TfArg<String>? availabilityZone;

  final TfArg<List<Object?>>? securityGroupIdList;

  final TfArg<String>? subnetId;

  Map<String, Object?> encode() => {
    if (availabilityZone != null)
      'availability_zone': availabilityZone!.toTfJson(),
    if (securityGroupIdList != null)
      'security_group_id_list': securityGroupIdList!.toTfJson(),
    if (subnetId != null) 'subnet_id': subnetId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_connection`.
final class AwsGlueConnection extends Resource {
  static const String tfType = 'aws_glue_connection';

  AwsGlueConnection({
    required super.localName,
    TfArg<Map<String, String>>? athenaProperties,
    TfArg<String>? catalogId,
    TfArg<Map<String, String>>? connectionProperties,
    TfArg<String>? connectionType,
    TfArg<String>? description,
    TfArg<List<String>>? matchCriteria,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    GlueConnectionAuthenticationConfiguration? authenticationConfiguration,
    GlueConnectionPhysicalConnectionRequirements?
    physicalConnectionRequirements,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (athenaProperties != null) 'athena_properties': athenaProperties,
           if (catalogId != null) 'catalog_id': catalogId,
           if (connectionProperties != null)
             'connection_properties': connectionProperties,
           if (connectionType != null) 'connection_type': connectionType,
           if (description != null) 'description': description,
           if (matchCriteria != null) 'match_criteria': matchCriteria,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (authenticationConfiguration != null)
             'authentication_configuration': TfArg.literal(
               authenticationConfiguration.encode(),
             ),
           if (physicalConnectionRequirements != null)
             'physical_connection_requirements': TfArg.literal(
               physicalConnectionRequirements.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueConnectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
