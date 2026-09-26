// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_group`.
const Set<String> _awsIamGroupSensitive = <String>{};

/// Factory wrapper for `aws_iam_group`.
final class DataAwsIamGroup extends Data {
  static const String tfType = 'aws_iam_group';

  DataAwsIamGroup({
    required super.localName,
    required TfArg<String> groupName,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'group_name': groupName});

  @override
  Set<String> get sensitiveFields => _awsIamGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `group_id` attribute.
  TfRef<String> get groupId => TfRef.attribute<String>(this, 'group_id');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `users` attribute.
  TfRef<List<Map<String, Object?>>> get users =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'users');
}
