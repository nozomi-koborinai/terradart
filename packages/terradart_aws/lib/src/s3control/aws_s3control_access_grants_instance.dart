// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_access_grants_instance`.
const Set<String> _awsS3controlAccessGrantsInstanceSensitive = <String>{};

/// Factory wrapper for `aws_s3control_access_grants_instance`.
final class AwsS3controlAccessGrantsInstance extends Resource {
  static const String tfType = 'aws_s3control_access_grants_instance';

  AwsS3controlAccessGrantsInstance(
    super.localName, {
    TfArg<String>? accountId,
    TfArg<String>? identityCenterArn,
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
           'identity_center_arn': ?identityCenterArn,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3controlAccessGrantsInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3controlAccessGrantsInstance>`.
  RefTo<AwsS3controlAccessGrantsInstance> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_grants_instance_arn` attribute.
  TfRef<String> get accessGrantsInstanceArn =>
      TfRef.attribute<String>(this, 'access_grants_instance_arn');

  /// Reference to `access_grants_instance_id` attribute.
  TfRef<String> get accessGrantsInstanceId =>
      TfRef.attribute<String>(this, 'access_grants_instance_id');

  /// Reference to `identity_center_application_arn` attribute.
  TfRef<String> get identityCenterApplicationArn =>
      TfRef.attribute<String>(this, 'identity_center_application_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `identity_center_arn` attribute.
  TfRef<String> get identityCenterArn =>
      TfRef.attribute<String>(this, 'identity_center_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
