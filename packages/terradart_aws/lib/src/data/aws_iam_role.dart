// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_role`.
const Set<String> _awsIamRoleSensitive = <String>{};

/// Factory wrapper for `aws_iam_role`.
final class DataAwsIamRole extends Data {
  static const String tfType = 'aws_iam_role';

  DataAwsIamRole({
    required super.localName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (tags != null) 'tags': tags},
       );

  @override
  Set<String> get sensitiveFields => _awsIamRoleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `assume_role_policy` attribute.
  TfRef<String> get assumeRolePolicy =>
      TfRef.attribute<String>(this, 'assume_role_policy');

  /// Reference to `create_date` attribute.
  TfRef<String> get createDate => TfRef.attribute<String>(this, 'create_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `max_session_duration` attribute.
  TfRef<num> get maxSessionDuration =>
      TfRef.attribute<num>(this, 'max_session_duration');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `permissions_boundary` attribute.
  TfRef<String> get permissionsBoundary =>
      TfRef.attribute<String>(this, 'permissions_boundary');

  /// Reference to `role_last_used` attribute.
  TfRef<List<Map<String, Object?>>> get roleLastUsed =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'role_last_used');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');
}
