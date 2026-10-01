// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_rds_cluster_role_association`.
const Set<String> _awsRdsClusterRoleAssociationSensitive = <String>{};

/// Factory wrapper for `aws_rds_cluster_role_association`.
final class AwsRdsClusterRoleAssociation extends Resource {
  static const String tfType = 'aws_rds_cluster_role_association';

  AwsRdsClusterRoleAssociation({
    required super.localName,
    required TfArg<String> dbClusterIdentifier,
    TfArg<String>? featureName,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'db_cluster_identifier': dbClusterIdentifier,
           'feature_name': ?featureName,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterRoleAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsClusterRoleAssociation>`.
  RefTo<AwsRdsClusterRoleAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `db_cluster_identifier` attribute.
  TfRef<String> get dbClusterIdentifier =>
      TfRef.attribute<String>(this, 'db_cluster_identifier');

  /// Reference to `feature_name` attribute.
  TfRef<String> get featureName =>
      TfRef.attribute<String>(this, 'feature_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');
}
