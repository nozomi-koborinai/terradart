// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_roles`.
const Set<String> _awsIamRolesSensitive = <String>{};

/// Factory wrapper for `aws_iam_roles`.
final class DataAwsIamRoles extends Data {
  static const String tfType = 'aws_iam_roles';

  DataAwsIamRoles({
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
  Set<String> get sensitiveFields => _awsIamRolesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');
}
