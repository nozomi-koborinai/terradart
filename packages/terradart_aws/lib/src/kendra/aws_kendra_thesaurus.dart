// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_kendra_thesaurus`.
const Set<String> _awsKendraThesaurusSensitive = <String>{};

/// Typed helper for the `source_s3_path` block of
/// `aws_kendra_thesaurus` (derived from provider schema).
@immutable
final class KendraThesaurusSourceS3Path {
  const KendraThesaurusSourceS3Path({required this.bucket, required this.key});

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String> key;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'key': key.toTfJson(),
  };
}

/// Factory wrapper for `aws_kendra_thesaurus`.
final class AwsKendraThesaurus extends Resource {
  static const String tfType = 'aws_kendra_thesaurus';

  AwsKendraThesaurus(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> indexId,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    required KendraThesaurusSourceS3Path sourceS3Path,
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
  Set<String> get sensitiveFields => _awsKendraThesaurusSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKendraThesaurus>`.
  RefTo<AwsKendraThesaurus> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `thesaurus_id` attribute.
  TfRef<String> get thesaurusId =>
      TfRef.attribute<String>(this, 'thesaurus_id');

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
