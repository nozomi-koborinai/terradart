// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

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

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String> key;

  @internal
  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'key': key.toTfJson(),
  };
}

/// Factory wrapper for `aws_kendra_query_suggestions_block_list`.
final class AwsKendraQuerySuggestionsBlockList extends Resource {
  static const String tfType = 'aws_kendra_query_suggestions_block_list';

  AwsKendraQuerySuggestionsBlockList(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> indexId,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    required KendraQuerySuggestionsBlockListSourceS3Path sourceS3Path,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'index_id': indexId,
           'name': name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'source_s3_path': TfArg.literal(sourceS3Path.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsKendraQuerySuggestionsBlockListSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKendraQuerySuggestionsBlockList>`.
  RefTo<AwsKendraQuerySuggestionsBlockList> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `query_suggestions_block_list_id` attribute.
  TfRef<String> get querySuggestionsBlockListId =>
      TfRef.attribute<String>(this, 'query_suggestions_block_list_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `index_id` attribute.
  TfRef<String> get indexId => TfRef.attribute<String>(this, 'index_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
