// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cloudcontrolapi/aws_cloudcontrolapi_resource.dart';
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cloudcontrolapi_resource`.
const Set<String> _awsCloudcontrolapiResourceSensitive = <String>{};

/// Factory wrapper for `aws_cloudcontrolapi_resource`.
final class DataAwsCloudcontrolapiResource extends Data {
  static const String tfType = 'aws_cloudcontrolapi_resource';

  DataAwsCloudcontrolapiResource({
    required super.localName,
    required TfArg<String> identifier,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    required TfArg<String> typeName,
    TfArg<String>? typeVersionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identifier': identifier,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'type_name': typeName,
           'type_version_id': ?typeVersionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudcontrolapiResourceSensitive;

  /// A reference to the `aws_cloudcontrolapi_resource` this data source reads, for
  /// arguments typed `RefTo<AwsCloudcontrolapiResource>`.
  RefTo<AwsCloudcontrolapiResource> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `properties` attribute.
  TfRef<String> get properties => TfRef.attribute<String>(this, 'properties');
}
