// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_cluster_iam_roles`.
const Set<String> _awsRedshiftClusterIamRolesSensitive = <String>{};

/// Factory wrapper for `aws_redshift_cluster_iam_roles`.
final class AwsRedshiftClusterIamRoles extends Resource {
  static const String tfType = 'aws_redshift_cluster_iam_roles';

  AwsRedshiftClusterIamRoles({
    required super.localName,
    required TfArg<String> clusterIdentifier,
    TfArg<String>? defaultIamRoleArn,
    TfArg<List<String>>? iamRoleArns,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_identifier': clusterIdentifier,
           if (defaultIamRoleArn != null)
             'default_iam_role_arn': defaultIamRoleArn,
           if (iamRoleArns != null) 'iam_role_arns': iamRoleArns,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftClusterIamRolesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
