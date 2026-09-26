// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_users`.
const Set<String> _awsIamUsersSensitive = <String>{};

/// Factory wrapper for `aws_iam_users`.
final class DataAwsIamUsers extends Data {
  static const String tfType = 'aws_iam_users';

  DataAwsIamUsers({
    required super.localName,
    TfArg<String>? nameRegex,
    TfArg<String>? pathPrefix,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (nameRegex != null) 'name_regex': nameRegex,
           if (pathPrefix != null) 'path_prefix': pathPrefix,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamUsersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');
}
