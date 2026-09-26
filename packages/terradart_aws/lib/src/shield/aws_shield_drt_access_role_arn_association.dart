// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_drt_access_role_arn_association`.
const Set<String> _awsShieldDrtAccessRoleArnAssociationSensitive = <String>{};

/// Factory wrapper for `aws_shield_drt_access_role_arn_association`.
final class AwsShieldDrtAccessRoleArnAssociation extends Resource {
  static const String tfType = 'aws_shield_drt_access_role_arn_association';

  AwsShieldDrtAccessRoleArnAssociation({
    required super.localName,
    required TfArg<String> roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'role_arn': roleArn});

  @override
  Set<String> get sensitiveFields =>
      _awsShieldDrtAccessRoleArnAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
