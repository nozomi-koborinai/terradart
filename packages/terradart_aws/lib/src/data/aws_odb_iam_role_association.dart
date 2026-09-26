// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_iam_role_association`.
const Set<String> _awsOdbIamRoleAssociationSensitive = <String>{};

/// Factory wrapper for `aws_odb_iam_role_association`.
final class DataAwsOdbIamRoleAssociation extends Data {
  static const String tfType = 'aws_odb_iam_role_association';

  DataAwsOdbIamRoleAssociation({
    required super.localName,
    required TfArg<String> iamRoleArn,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'iam_role_arn': iamRoleArn,
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbIamRoleAssociationSensitive;

  /// Reference to `aws_integration` attribute.
  TfRef<String> get awsIntegration =>
      TfRef.attribute<String>(this, 'aws_integration');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');
}
