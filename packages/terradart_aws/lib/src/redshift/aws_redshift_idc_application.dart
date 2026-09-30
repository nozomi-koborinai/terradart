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

  final List<RedshiftIdcApplicationServiceIntegrationLakeFormation>?
  lakeFormation;

  final List<RedshiftIdcApplicationServiceIntegrationRedshift>? redshift;

  final List<RedshiftIdcApplicationServiceIntegrationS3AccessGrants>?
  s3AccessGrants;

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
final class RedshiftIdcApplicationServiceIntegrationLakeFormation {
  const RedshiftIdcApplicationServiceIntegrationLakeFormation({
    this.lakeFormationQuery,
  });

  final List<
    RedshiftIdcApplicationServiceIntegrationLakeFormationLakeFormationQuery
  >?
  lakeFormationQuery;

  Map<String, Object?> encode() => {
    if (lakeFormationQuery != null)
      'lake_formation_query': [for (final e in lakeFormationQuery!) e.encode()],
  };
}

/// Typed helper for the `service_integration.lake_formation.lake_formation_query` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationServiceIntegrationLakeFormationLakeFormationQuery {
  const RedshiftIdcApplicationServiceIntegrationLakeFormationLakeFormationQuery({
    required this.authorization,
  });

  final TfArg<
    RedshiftIdcApplicationServiceIntegrationLakeFormationLakeFormationQueryAuthorization
  >
  authorization;

  Map<String, Object?> encode() => {'authorization': authorization.toTfJson()};
}

/// `authorization` — derived from the provider schema description.
enum RedshiftIdcApplicationServiceIntegrationLakeFormationLakeFormationQueryAuthorization
    implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const RedshiftIdcApplicationServiceIntegrationLakeFormationLakeFormationQueryAuthorization(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `service_integration.redshift` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationServiceIntegrationRedshift {
  const RedshiftIdcApplicationServiceIntegrationRedshift({this.connect});

  final List<RedshiftIdcApplicationServiceIntegrationRedshiftConnect>? connect;

  Map<String, Object?> encode() => {
    if (connect != null) 'connect': [for (final e in connect!) e.encode()],
  };
}

/// Typed helper for the `service_integration.redshift.connect` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationServiceIntegrationRedshiftConnect {
  const RedshiftIdcApplicationServiceIntegrationRedshiftConnect({
    required this.authorization,
  });

  final TfArg<
    RedshiftIdcApplicationServiceIntegrationRedshiftConnectAuthorization
  >
  authorization;

  Map<String, Object?> encode() => {'authorization': authorization.toTfJson()};
}

/// `authorization` — derived from the provider schema description.
enum RedshiftIdcApplicationServiceIntegrationRedshiftConnectAuthorization
    implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const RedshiftIdcApplicationServiceIntegrationRedshiftConnectAuthorization(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `service_integration.s3_access_grants` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationServiceIntegrationS3AccessGrants {
  const RedshiftIdcApplicationServiceIntegrationS3AccessGrants({
    this.readWriteAccess,
  });

  final List<
    RedshiftIdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess
  >?
  readWriteAccess;

  Map<String, Object?> encode() => {
    if (readWriteAccess != null)
      'read_write_access': [for (final e in readWriteAccess!) e.encode()],
  };
}

/// Typed helper for the `service_integration.s3_access_grants.read_write_access` block of
/// `aws_redshift_idc_application` (derived from provider schema).
@immutable
final class RedshiftIdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess {
  const RedshiftIdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess({
    required this.authorization,
  });

  final TfArg<
    RedshiftIdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccessAuthorization
  >
  authorization;

  Map<String, Object?> encode() => {'authorization': authorization.toTfJson()};
}

/// `authorization` — derived from the provider schema description.
enum RedshiftIdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccessAuthorization
    implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const RedshiftIdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccessAuthorization(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
}
