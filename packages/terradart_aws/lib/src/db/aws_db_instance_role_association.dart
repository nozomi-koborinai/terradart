// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'db_instance_identifier': dbInstanceIdentifier,
           'feature_name': featureName,
           if (region != null) 'region': region,
           'role_arn': roleArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbInstanceRoleAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
