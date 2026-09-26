// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kendra_thesaurus`.
const Set<String> _awsKendraThesaurusSensitive = <String>{};

/// Factory wrapper for `aws_kendra_thesaurus`.
final class DataAwsKendraThesaurus extends Data {
  static const String tfType = 'aws_kendra_thesaurus';

  DataAwsKendraThesaurus({
    required super.localName,
    required TfArg<String> indexId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> thesaurusId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'index_id': indexId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'thesaurus_id': thesaurusId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKendraThesaurusSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `error_message` attribute.
  TfRef<String> get errorMessage =>
      TfRef.attribute<String>(this, 'error_message');

  /// Reference to `file_size_bytes` attribute.
  TfRef<num> get fileSizeBytes => TfRef.attribute<num>(this, 'file_size_bytes');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `source_s3_path` attribute.
  TfRef<List<Map<String, Object?>>> get sourceS3Path =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'source_s3_path');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `synonym_rule_count` attribute.
  TfRef<num> get synonymRuleCount =>
      TfRef.attribute<num>(this, 'synonym_rule_count');

  /// Reference to `term_count` attribute.
  TfRef<num> get termCount => TfRef.attribute<num>(this, 'term_count');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
