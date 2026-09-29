// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_kendra_faq`.
const Set<String> _awsKendraFaqSensitive = <String>{};

/// Kendra Faq File enum for `file_format`.
enum KendraFaqFileFormat implements TerraformEnum {
  csv('CSV'),
  csvWithHeader('CSV_WITH_HEADER'),
  json('JSON');

  const KendraFaqFileFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_path` block of
/// `aws_kendra_faq` (derived from provider schema).
@immutable
final class KendraFaqS3Path {
  const KendraFaqS3Path({required this.bucket, required this.key});

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String> key;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'key': key.toTfJson(),
  };
}

/// Factory wrapper for `aws_kendra_faq`.
final class AwsKendraFaq extends Resource {
  static const String tfType = 'aws_kendra_faq';

  AwsKendraFaq({
    required super.localName,
    TfArg<String>? description,
    TfArg<KendraFaqFileFormat>? fileFormat,
    required TfArg<String> indexId,
    TfArg<String>? languageCode,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    required KendraFaqS3Path s3Path,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'file_format': ?fileFormat,
           'index_id': indexId,
           'language_code': ?languageCode,
           'name': name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           's3_path': TfArg.literal(s3Path.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKendraFaqSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKendraFaq>`.
  RefTo<AwsKendraFaq> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `error_message` attribute.
  TfRef<String> get errorMessage =>
      TfRef.attribute<String>(this, 'error_message');

  /// Reference to `faq_id` attribute.
  TfRef<String> get faqId => TfRef.attribute<String>(this, 'faq_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
