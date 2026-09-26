// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user`.
const Set<String> _awsIamUserSensitive = <String>{};

/// Factory wrapper for `aws_iam_user`.
final class DataAwsIamUser extends Data {
  static const String tfType = 'aws_iam_user';

  DataAwsIamUser({
    required super.localName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> userName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (tags != null) 'tags': tags, 'user_name': userName},
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserSensitive;

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
}
