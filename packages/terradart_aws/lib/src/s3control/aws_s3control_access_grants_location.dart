// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_s3control_access_grants_location`.
const Set<String> _awsS3controlAccessGrantsLocationSensitive = <String>{};

/// Factory wrapper for `aws_s3control_access_grants_location`.
final class AwsS3controlAccessGrantsLocation extends Resource {
  static const String tfType = 'aws_s3control_access_grants_location';

  AwsS3controlAccessGrantsLocation({
    required super.localName,
    TfArg<String>? accountId,
    required RefTo<AwsIamRole> iamRoleArn,
    required TfArg<String> locationScope,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'iam_role_arn': iamRoleArn.encodeAs('arn'),
           'location_scope': locationScope,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3controlAccessGrantsLocationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3controlAccessGrantsLocation>`.
  RefTo<AwsS3controlAccessGrantsLocation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_grants_location_arn` attribute.
  TfRef<String> get accessGrantsLocationArn =>
      TfRef.attribute<String>(this, 'access_grants_location_arn');

  /// Reference to `access_grants_location_id` attribute.
  TfRef<String> get accessGrantsLocationId =>
      TfRef.attribute<String>(this, 'access_grants_location_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `location_scope` attribute.
  TfRef<String> get locationScope =>
      TfRef.attribute<String>(this, 'location_scope');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
