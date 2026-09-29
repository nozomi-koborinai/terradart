// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../odb/aws_odb_iam_role_association.dart';
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_odb_iam_role_association`.
const Set<String> _awsOdbIamRoleAssociationSensitive = <String>{};

/// Factory wrapper for `aws_odb_iam_role_association`.
final class DataAwsOdbIamRoleAssociation extends Data {
  static const String tfType = 'aws_odb_iam_role_association';

  DataAwsOdbIamRoleAssociation({
    required super.localName,
    required RefTo<AwsIamRole> iamRoleArn,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'iam_role_arn': iamRoleArn.encodeAs('arn'),
           'region': ?region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbIamRoleAssociationSensitive;

  /// A reference to the `aws_odb_iam_role_association` this data source reads, for
  /// arguments typed `RefTo<AwsOdbIamRoleAssociation>`.
  RefTo<AwsOdbIamRoleAssociation> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `aws_integration` attribute.
  TfRef<String> get awsIntegration =>
      TfRef.attribute<String>(this, 'aws_integration');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');
}
