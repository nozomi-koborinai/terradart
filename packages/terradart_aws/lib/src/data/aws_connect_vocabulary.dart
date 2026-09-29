// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../connect/aws_connect_vocabulary.dart';

/// Sensitive field paths for `aws_connect_vocabulary`.
const Set<String> _awsConnectVocabularySensitive = <String>{};

/// Factory wrapper for `aws_connect_vocabulary`.
final class DataAwsConnectVocabulary extends Data {
  static const String tfType = 'aws_connect_vocabulary';

  DataAwsConnectVocabulary({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vocabularyId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'name': ?name,
           'region': ?region,
           'tags': ?tags,
           'vocabulary_id': ?vocabularyId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectVocabularySensitive;

  /// A reference to the `aws_connect_vocabulary` this data source reads, for
  /// arguments typed `RefTo<AwsConnectVocabulary>`.
  RefTo<AwsConnectVocabulary> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `language_code` attribute.
  TfRef<String> get languageCode =>
      TfRef.attribute<String>(this, 'language_code');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
