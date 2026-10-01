// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_odb_iam_role_association`.
const Set<String> _awsOdbIamRoleAssociationSensitive = <String>{};

/// Factory wrapper for `aws_odb_iam_role_association`.
final class AwsOdbIamRoleAssociation extends Resource {
  static const String tfType = 'aws_odb_iam_role_association';

  AwsOdbIamRoleAssociation({
    required super.localName,
    required TfArg<String> awsIntegration,
    required RefTo<AwsIamRole> iamRoleArn,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_integration': awsIntegration,
           'iam_role_arn': iamRoleArn.encodeAs('arn'),
           'region': ?region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbIamRoleAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOdbIamRoleAssociation>`.
  RefTo<AwsOdbIamRoleAssociation> get ref => RefTo.of(this);

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `aws_integration` attribute.
  TfRef<String> get awsIntegration =>
      TfRef.attribute<String>(this, 'aws_integration');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
