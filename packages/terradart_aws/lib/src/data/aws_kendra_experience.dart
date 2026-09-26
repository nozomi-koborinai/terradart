// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kendra_experience`.
const Set<String> _awsKendraExperienceSensitive = <String>{};

/// Factory wrapper for `aws_kendra_experience`.
final class DataAwsKendraExperience extends Data {
  static const String tfType = 'aws_kendra_experience';

  DataAwsKendraExperience({
    required super.localName,
    required TfArg<String> experienceId,
    required TfArg<String> indexId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'experience_id': experienceId,
           'index_id': indexId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKendraExperienceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configuration` attribute.
  TfRef<List<Map<String, Object?>>> get configuration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'configuration');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get endpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoints');

  /// Reference to `error_message` attribute.
  TfRef<String> get errorMessage =>
      TfRef.attribute<String>(this, 'error_message');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
