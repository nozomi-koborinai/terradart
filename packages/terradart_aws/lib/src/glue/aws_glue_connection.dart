// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? secretArn;

  final GlueConnectionBasicAuthenticationCredentials?
  basicAuthenticationCredentials;

  final GlueConnectionOauth2Properties? oauth2Properties;

  Map<String, Object?> encode() => {
    'authentication_type': authenticationType.toTfJson(),
    'custom_authentication_credentials': ?customAuthenticationCredentials
        ?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'secret_arn': ?secretArn?.toTfJson(),
    'basic_authentication_credentials': ?basicAuthenticationCredentials
        ?.encode(),
    'oauth2_properties': ?oauth2Properties?.encode(),
  };
}

/// Typed helper for the `authentication_configuration.basic_authentication_credentials` block of
/// `aws_glue_connection` (derived from provider schema).
@immutable
final class GlueConnectionBasicAuthenticationCredentials {
  const GlueConnectionBasicAuthenticationCredentials({
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
final class GlueConnectionOauth2Properties {
  const GlueConnectionOauth2Properties({
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

  final GlueConnectionAuthorizationCodeProperties? authorizationCodeProperties;

  final GlueConnectionOauth2ClientApplication? oauth2ClientApplication;

  final GlueConnectionOauth2Credentials? oauth2Credentials;

  Map<String, Object?> encode() => {
    'oauth2_grant_type': ?oauth2GrantType?.toTfJson(),
    'token_url': ?tokenUrl?.toTfJson(),
    'token_url_parameters_map': ?tokenUrlParametersMap?.toTfJson(),
    'authorization_code_properties': ?authorizationCodeProperties?.encode(),
    'oauth2_client_application': ?oauth2ClientApplication?.encode(),
    'oauth2_credentials': ?oauth2Credentials?.encode(),
  };
}

/// Typed helper for the `authentication_configuration.oauth2_properties.authorization_code_properties` block of
/// `aws_glue_connection` (derived from provider schema).
@immutable
final class GlueConnectionAuthorizationCodeProperties {
  const GlueConnectionAuthorizationCodeProperties({
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
final class GlueConnectionOauth2ClientApplication {
  const GlueConnectionOauth2ClientApplication({
    this.awsManagedClientApplicationReference,
    this.userManagedClientApplicationClientId,
  });

  final TfArg<String>? awsManagedClientApplicationReference;

  final TfArg<String>? userManagedClientApplicationClientId;

  Map<String, Object?> encode() => {
    'aws_managed_client_application_reference':
        ?awsManagedClientApplicationReference?.toTfJson(),
    'user_managed_client_application_client_id':
        ?userManagedClientApplicationClientId?.toTfJson(),
  };
}

/// Typed helper for the `authentication_configuration.oauth2_properties.oauth2_credentials` block of
/// `aws_glue_connection` (derived from provider schema).
@immutable
final class GlueConnectionOauth2Credentials {
  const GlueConnectionOauth2Credentials({
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
    'access_token': ?accessToken?.toTfJson(),
    'jwt_token': ?jwtToken?.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
    'user_managed_client_application_client_secret':
        ?userManagedClientApplicationClientSecret?.toTfJson(),
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

  final TfArg<List<String>>? securityGroupIdList;

  final RefTo<AwsSubnet>? subnetId;

  Map<String, Object?> encode() => {
    'availability_zone': ?availabilityZone?.toTfJson(),
    'security_group_id_list': ?securityGroupIdList?.toTfJson(),
    'subnet_id': ?subnetId?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_connection`.
final class AwsGlueConnection extends Resource {
  static const String tfType = 'aws_glue_connection';

  AwsGlueConnection(
    super.localName, {
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
           'athena_properties': ?athenaProperties,
           'catalog_id': ?catalogId,
           'connection_properties': ?connectionProperties,
           'connection_type': ?connectionType,
           'description': ?description,
           'match_criteria': ?matchCriteria,
           'name': name,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueConnection>`.
  RefTo<AwsGlueConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `athena_properties` attribute.
  TfRef<Map<String, String>> get athenaProperties =>
      TfRef.attribute<Map<String, String>>(this, 'athena_properties');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `connection_properties` attribute.
  TfRef<Map<String, String>> get connectionProperties =>
      TfRef.attribute<Map<String, String>>(this, 'connection_properties');

  /// Reference to `connection_type` attribute.
  TfRef<String> get connectionType =>
      TfRef.attribute<String>(this, 'connection_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `match_criteria` attribute.
  TfRef<List<String>> get matchCriteria =>
      TfRef.attribute<List<String>>(this, 'match_criteria');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
