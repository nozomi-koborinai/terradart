// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kendra_query_suggestions_block_list`.
const Set<String> _awsKendraQuerySuggestionsBlockListSensitive = <String>{};

/// Typed helper for the `source_s3_path` block of
/// `aws_kendra_query_suggestions_block_list` (derived from provider schema).
@immutable
final class KendraQuerySuggestionsBlockListSourceS3Path {
  const KendraQuerySuggestionsBlockListSourceS3Path({
    required this.bucket,
    required this.key,
  });

  final TfArg<String> bucket;

  final TfArg<String> key;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'key': key.toTfJson(),
  };
}

/// Factory wrapper for `aws_kendra_query_suggestions_block_list`.
final class AwsKendraQuerySuggestionsBlockList extends Resource {
  static const String tfType = 'aws_kendra_query_suggestions_block_list';

  AwsKendraQuerySuggestionsBlockList({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> indexId,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    required KendraQuerySuggestionsBlockListSourceS3Path sourceS3Path,
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
  Set<String> get sensitiveFields =>
      _awsKendraQuerySuggestionsBlockListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `query_suggestions_block_list_id` attribute.
  TfRef<String> get querySuggestionsBlockListId =>
      TfRef.attribute<String>(this, 'query_suggestions_block_list_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
