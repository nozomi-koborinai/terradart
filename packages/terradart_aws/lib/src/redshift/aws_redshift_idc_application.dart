// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_redshift_idc_application`.
const Set<String> _awsRedshiftIdcApplicationSensitive = <String>{};

/// Redshift Idc Application Application enum for `application_type`.
enum RedshiftIdcApplicationApplicationType implements TerraformEnum {
  none('None'),
  lakehouse('Lakehouse');

  const RedshiftIdcApplicationApplicationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `authorized_token_issuer` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationAuthorizedTokenIssuer {
  const RedshiftIdcApplicationAuthorizedTokenIssuer({
    this.authorizedAudiencesList,
    this.trustedTokenIssuerArn,
  });

  final TfArg<List<String>>? authorizedAudiencesList;

  final TfArg<String>? trustedTokenIssuerArn;

  Map<String, Object?> encode() => {
    'authorized_audiences_list': ?authorizedAudiencesList?.toTfJson(),
    'trusted_token_issuer_arn': ?trustedTokenIssuerArn?.toTfJson(),
  };
}

/// Typed helper for the `service_integration` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationServiceIntegration {
  const RedshiftIdcApplicationServiceIntegration({
    this.lakeFormation,
    this.redshift,
    this.s3AccessGrants,
  });

  final List<RedshiftIdcApplicationLakeFormation>? lakeFormation;

  final List<RedshiftIdcApplicationRedshift>? redshift;

  final List<RedshiftIdcApplicationS3AccessGrants>? s3AccessGrants;

  Map<String, Object?> encode() => {
    if (lakeFormation != null)
      'lake_formation': [for (final e in lakeFormation!) e.encode()],
    if (redshift != null) 'redshift': [for (final e in redshift!) e.encode()],
    if (s3AccessGrants != null)
      's3_access_grants': [for (final e in s3AccessGrants!) e.encode()],
  };
}

/// Typed helper for the `service_integration.lake_formation` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationLakeFormation {
  const RedshiftIdcApplicationLakeFormation({this.lakeFormationQuery});

  final List<RedshiftIdcApplicationLakeFormationQuery>? lakeFormationQuery;

  Map<String, Object?> encode() => {
    if (lakeFormationQuery != null)
      'lake_formation_query': [for (final e in lakeFormationQuery!) e.encode()],
  };
}

/// Typed helper for the `service_integration.lake_formation.lake_formation_query` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationLakeFormationQuery {
  const RedshiftIdcApplicationLakeFormationQuery({required this.authorization});

  final TfArg<RedshiftIdcApplicationAuthorization> authorization;

  Map<String, Object?> encode() => {'authorization': authorization.toTfJson()};
}

/// `authorization` — derived from the provider schema description.
enum RedshiftIdcApplicationAuthorization implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const RedshiftIdcApplicationAuthorization(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `service_integration.redshift` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationRedshift {
  const RedshiftIdcApplicationRedshift({this.connect});

  final List<RedshiftIdcApplicationConnect>? connect;

  Map<String, Object?> encode() => {
    if (connect != null) 'connect': [for (final e in connect!) e.encode()],
  };
}

/// Typed helper for the `service_integration.redshift.connect` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationConnect {
  const RedshiftIdcApplicationConnect({required this.authorization});

  final TfArg<RedshiftIdcApplicationAuthorization> authorization;

  Map<String, Object?> encode() => {'authorization': authorization.toTfJson()};
}

/// Typed helper for the `service_integration.s3_access_grants` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationS3AccessGrants {
  const RedshiftIdcApplicationS3AccessGrants({this.readWriteAccess});

  final List<RedshiftIdcApplicationReadWriteAccess>? readWriteAccess;

  Map<String, Object?> encode() => {
    if (readWriteAccess != null)
      'read_write_access': [for (final e in readWriteAccess!) e.encode()],
  };
}

/// Typed helper for the `service_integration.s3_access_grants.read_write_access` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationReadWriteAccess {
  const RedshiftIdcApplicationReadWriteAccess({required this.authorization});

  final TfArg<RedshiftIdcApplicationAuthorization> authorization;

  Map<String, Object?> encode() => {'authorization': authorization.toTfJson()};
}

/// Factory wrapper for `aws_redshift_idc_application`.
final class AwsRedshiftIdcApplication extends Resource {
  static const String tfType = 'aws_redshift_idc_application';

  AwsRedshiftIdcApplication({
    required super.localName,
    TfArg<RedshiftIdcApplicationApplicationType>? applicationType,
    required RefTo<AwsIamRole> iamRoleArn,
    required TfArg<String> idcDisplayName,
    required TfArg<String> idcInstanceArn,
    TfArg<String>? identityNamespace,
    required TfArg<String> redshiftIdcApplicationName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<RedshiftIdcApplicationAuthorizedTokenIssuer>? authorizedTokenIssuer,
    List<RedshiftIdcApplicationServiceIntegration>? serviceIntegration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_type': ?applicationType,
           'iam_role_arn': iamRoleArn.encodeAs('arn'),
           'idc_display_name': idcDisplayName,
           'idc_instance_arn': idcInstanceArn,
           'identity_namespace': ?identityNamespace,
           'redshift_idc_application_name': redshiftIdcApplicationName,
           'region': ?region,
           'tags': ?tags,
           if (authorizedTokenIssuer != null)
             'authorized_token_issuer': TfArg.literal([
               for (final e in authorizedTokenIssuer) e.encode(),
             ]),
           if (serviceIntegration != null)
             'service_integration': TfArg.literal([
               for (final e in serviceIntegration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftIdcApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftIdcApplication>`.
  RefTo<AwsRedshiftIdcApplication> get ref => RefTo.of(this);

  /// Reference to `idc_managed_application_arn` attribute.
  TfRef<String> get idcManagedApplicationArn =>
      TfRef.attribute<String>(this, 'idc_managed_application_arn');

  /// Reference to `redshift_idc_application_arn` attribute.
  TfRef<String> get redshiftIdcApplicationArn =>
      TfRef.attribute<String>(this, 'redshift_idc_application_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `application_type` attribute.
  TfRef<String> get applicationTypeRef =>
      TfRef.attribute<String>(this, 'application_type');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArnRef =>
      TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `idc_display_name` attribute.
  TfRef<String> get idcDisplayNameRef =>
      TfRef.attribute<String>(this, 'idc_display_name');

  /// Reference to `idc_instance_arn` attribute.
  TfRef<String> get idcInstanceArnRef =>
      TfRef.attribute<String>(this, 'idc_instance_arn');

  /// Reference to `identity_namespace` attribute.
  TfRef<String> get identityNamespaceRef =>
      TfRef.attribute<String>(this, 'identity_namespace');

  /// Reference to `redshift_idc_application_name` attribute.
  TfRef<String> get redshiftIdcApplicationNameRef =>
      TfRef.attribute<String>(this, 'redshift_idc_application_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
