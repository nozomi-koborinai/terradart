// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kendra_thesaurus`.
const Set<String> _awsKendraThesaurusSensitive = <String>{};

/// Typed helper for the `source_s3_path` block of
/// `aws_kendra_thesaurus` (derived from provider schema).
@immutable
final class KendraThesaurusSourceS3Path {
  const KendraThesaurusSourceS3Path({required this.bucket, required this.key});

  final TfArg<String> bucket;

  final TfArg<String> key;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'key': key.toTfJson(),
  };
}

/// Factory wrapper for `aws_kendra_thesaurus`.
final class AwsKendraThesaurus extends Resource {
  static const String tfType = 'aws_kendra_thesaurus';

  AwsKendraThesaurus({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> indexId,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    required KendraThesaurusSourceS3Path sourceS3Path,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'index_id': indexId,
           'name': name,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           'source_s3_path': TfArg.literal(sourceS3Path.encode()),
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

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `thesaurus_id` attribute.
  TfRef<String> get thesaurusId =>
      TfRef.attribute<String>(this, 'thesaurus_id');
}
