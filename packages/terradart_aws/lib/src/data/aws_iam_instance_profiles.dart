// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_instance_profiles`.
const Set<String> _awsIamInstanceProfilesSensitive = <String>{};

/// Factory wrapper for `aws_iam_instance_profiles`.
final class DataAwsIamInstanceProfiles extends Data {
  static const String tfType = 'aws_iam_instance_profiles';

  DataAwsIamInstanceProfiles({
    required super.localName,
    required TfArg<String> roleName,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'role_name': roleName});

  @override
  Set<String> get sensitiveFields => _awsIamInstanceProfilesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');

  /// Reference to `paths` attribute.
  TfRef<List<String>> get paths => TfRef.attribute<List<String>>(this, 'paths');
}
