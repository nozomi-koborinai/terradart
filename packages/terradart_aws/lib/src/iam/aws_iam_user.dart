// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user`.
const Set<String> _awsIamUserSensitive = <String>{};

/// Factory wrapper for `aws_iam_user`.
final class AwsIamUser extends Resource {
  static const String tfType = 'aws_iam_user';

  AwsIamUser({
    required super.localName,
    TfArg<bool>? forceDestroy,
    required TfArg<String> name,
    TfArg<String>? path,
    TfArg<String>? permissionsBoundary,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           'name': name,
           if (path != null) 'path': path,
           if (permissionsBoundary != null)
             'permissions_boundary': permissionsBoundary,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');
}
