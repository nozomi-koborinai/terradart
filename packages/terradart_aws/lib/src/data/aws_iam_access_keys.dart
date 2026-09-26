// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_access_keys`.
const Set<String> _awsIamAccessKeysSensitive = <String>{};

/// Factory wrapper for `aws_iam_access_keys`.
final class DataAwsIamAccessKeys extends Data {
  static const String tfType = 'aws_iam_access_keys';

  DataAwsIamAccessKeys({
    required super.localName,
    required TfArg<String> user,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'user': user});

  @override
  Set<String> get sensitiveFields => _awsIamAccessKeysSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_keys` attribute.
  TfRef<List<Map<String, Object?>>> get accessKeys =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_keys');
}
