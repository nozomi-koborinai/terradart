// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_access_grants_location`.
const Set<String> _awsS3controlAccessGrantsLocationSensitive = <String>{};

/// Factory wrapper for `aws_s3control_access_grants_location`.
final class AwsS3controlAccessGrantsLocation extends Resource {
  static const String tfType = 'aws_s3control_access_grants_location';

  AwsS3controlAccessGrantsLocation({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> iamRoleArn,
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
           if (accountId != null) 'account_id': accountId,
           'iam_role_arn': iamRoleArn,
           'location_scope': locationScope,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3controlAccessGrantsLocationSensitive;

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
}
