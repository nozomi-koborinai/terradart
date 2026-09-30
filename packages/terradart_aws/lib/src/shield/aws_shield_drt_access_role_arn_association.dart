// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_shield_drt_access_role_arn_association`.
const Set<String> _awsShieldDrtAccessRoleArnAssociationSensitive = <String>{};

/// Factory wrapper for `aws_shield_drt_access_role_arn_association`.
final class AwsShieldDrtAccessRoleArnAssociation extends Resource {
  static const String tfType = 'aws_shield_drt_access_role_arn_association';

  AwsShieldDrtAccessRoleArnAssociation({
    required super.localName,
    required RefTo<AwsIamRole> roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'role_arn': roleArn.encodeAs('arn')},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsShieldDrtAccessRoleArnAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsShieldDrtAccessRoleArnAssociation>`.
  RefTo<AwsShieldDrtAccessRoleArnAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');
}
