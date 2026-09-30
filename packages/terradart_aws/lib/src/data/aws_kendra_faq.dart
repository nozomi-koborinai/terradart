// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kendra/aws_kendra_faq.dart';

/// Sensitive field paths for `aws_kendra_faq`.
const Set<String> _awsKendraFaqSensitive = <String>{};

/// Factory wrapper for `aws_kendra_faq`.
final class DataAwsKendraFaq extends Data {
  static const String tfType = 'aws_kendra_faq';

  DataAwsKendraFaq({
    required super.localName,
    required TfArg<String> faqId,
    required TfArg<String> indexId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'faq_id': faqId,
           'index_id': indexId,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKendraFaqSensitive;

  /// A reference to the `aws_kendra_faq` this data source reads, for
  /// arguments typed `RefTo<AwsKendraFaq>`.
  RefTo<AwsKendraFaq> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `file_format` attribute.
  TfRef<String> get fileFormat => TfRef.attribute<String>(this, 'file_format');

  /// Reference to `language_code` attribute.
  TfRef<String> get languageCode =>
      TfRef.attribute<String>(this, 'language_code');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `s3_path` attribute.
  TfRef<List<Map<String, Object?>>> get s3Path =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 's3_path');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `faq_id` attribute.
  TfRef<String> get faqIdRef => TfRef.attribute<String>(this, 'faq_id');

  /// Reference to `index_id` attribute.
  TfRef<String> get indexIdRef => TfRef.attribute<String>(this, 'index_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
