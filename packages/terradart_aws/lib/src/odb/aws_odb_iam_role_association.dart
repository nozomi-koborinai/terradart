// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_iam_role_association`.
const Set<String> _awsOdbIamRoleAssociationSensitive = <String>{};

/// Factory wrapper for `aws_odb_iam_role_association`.
final class AwsOdbIamRoleAssociation extends Resource {
  static const String tfType = 'aws_odb_iam_role_association';

  AwsOdbIamRoleAssociation({
    required super.localName,
    required TfArg<String> awsIntegration,
    required TfArg<String> iamRoleArn,
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
           'iam_role_arn': iamRoleArn,
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbIamRoleAssociationSensitive;

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');
}
