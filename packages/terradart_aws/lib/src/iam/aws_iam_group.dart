// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_group`.
const Set<String> _awsIamGroupSensitive = <String>{};

/// Factory wrapper for `aws_iam_group`.
final class AwsIamGroup extends Resource {
  static const String tfType = 'aws_iam_group';

  AwsIamGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? path,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (path != null) 'path': path},
       );

  @override
  Set<String> get sensitiveFields => _awsIamGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');
}
