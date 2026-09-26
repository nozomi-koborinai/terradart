// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transcribe_vocabulary_filter`.
const Set<String> _awsTranscribeVocabularyFilterSensitive = <String>{};

/// Factory wrapper for `aws_transcribe_vocabulary_filter`.
final class AwsTranscribeVocabularyFilter extends Resource {
  static const String tfType = 'aws_transcribe_vocabulary_filter';

  AwsTranscribeVocabularyFilter({
    required super.localName,
    required TfArg<String> languageCode,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vocabularyFilterFileUri,
    required TfArg<String> vocabularyFilterName,
    TfArg<List<String>>? words,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'language_code': languageCode,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (vocabularyFilterFileUri != null)
             'vocabulary_filter_file_uri': vocabularyFilterFileUri,
           'vocabulary_filter_name': vocabularyFilterName,
           if (words != null) 'words': words,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTranscribeVocabularyFilterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `download_uri` attribute.
  TfRef<String> get downloadUri =>
      TfRef.attribute<String>(this, 'download_uri');
}
