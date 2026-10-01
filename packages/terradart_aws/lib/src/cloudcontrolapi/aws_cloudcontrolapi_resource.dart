// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cloudcontrolapi_resource`.
const Set<String> _awsCloudcontrolapiResourceSensitive = <String>{'schema'};

/// Factory wrapper for `aws_cloudcontrolapi_resource`.
final class AwsCloudcontrolapiResource extends Resource {
  static const String tfType = 'aws_cloudcontrolapi_resource';

  AwsCloudcontrolapiResource(
    super.localName, {
    required TfArg<String> desiredState,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    TfArg<String>? schema,
    required TfArg<String> typeName,
    TfArg<String>? typeVersionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'desired_state': desiredState,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'schema': ?schema,
           'type_name': typeName,
           'type_version_id': ?typeVersionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudcontrolapiResourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudcontrolapiResource>`.
  RefTo<AwsCloudcontrolapiResource> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `properties` attribute.
  TfRef<String> get properties => TfRef.attribute<String>(this, 'properties');

  /// Reference to `desired_state` attribute.
  TfRef<String> get desiredState =>
      TfRef.attribute<String>(this, 'desired_state');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `schema` attribute.
  TfRef<String> get schema => TfRef.attribute<String>(this, 'schema');

  /// Reference to `type_name` attribute.
  TfRef<String> get typeName => TfRef.attribute<String>(this, 'type_name');

  /// Reference to `type_version_id` attribute.
  TfRef<String> get typeVersionId =>
      TfRef.attribute<String>(this, 'type_version_id');
}
