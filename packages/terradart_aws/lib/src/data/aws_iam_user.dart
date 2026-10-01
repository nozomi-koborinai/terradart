// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iam/aws_iam_user.dart';

/// Sensitive field paths for `aws_iam_user`.
const Set<String> _awsIamUserSensitive = <String>{};

/// Factory wrapper for `aws_iam_user`.
final class DataAwsIamUser extends Data {
  static const String tfType = 'aws_iam_user';

  DataAwsIamUser(
    super.localName, {
    TfArg<Map<String, String>>? tags,
    required TfArg<String> userName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'tags': ?tags, 'user_name': userName},
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserSensitive;

  /// A reference to the `aws_iam_user` this data source reads, for
  /// arguments typed `RefTo<AwsIamUser>`.
  RefTo<AwsIamUser> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `permissions_boundary` attribute.
  TfRef<String> get permissionsBoundary =>
      TfRef.attribute<String>(this, 'permissions_boundary');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
