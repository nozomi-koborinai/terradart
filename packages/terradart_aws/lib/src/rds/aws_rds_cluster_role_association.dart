// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'db_cluster_identifier': dbClusterIdentifier,
           if (featureName != null) 'feature_name': featureName,
           if (region != null) 'region': region,
           'role_arn': roleArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterRoleAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
