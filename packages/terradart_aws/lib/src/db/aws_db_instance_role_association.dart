// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_db_instance_role_association`.
const Set<String> _awsDbInstanceRoleAssociationSensitive = <String>{};

/// Factory wrapper for `aws_db_instance_role_association`.
final class AwsDbInstanceRoleAssociation extends Resource {
  static const String tfType = 'aws_db_instance_role_association';

  AwsDbInstanceRoleAssociation({
    required super.localName,
    required TfArg<String> dbInstanceIdentifier,
    required TfArg<String> featureName,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'db_instance_identifier': dbInstanceIdentifier,
           'feature_name': featureName,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbInstanceRoleAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDbInstanceRoleAssociation>`.
  RefTo<AwsDbInstanceRoleAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
