// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transcribe_vocabulary_filter`.
const Set<String> _awsTranscribeVocabularyFilterSensitive = <String>{};

/// Exactly one of `vocabulary_filter_file_uri`, `words` on `aws_transcribe_vocabulary_filter`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.vocabularyFilterFileUri(...)`.
sealed class TranscribeVocabularyFilterTerms {
  const TranscribeVocabularyFilterTerms();

  /// Sets `vocabulary_filter_file_uri`.
  const factory TranscribeVocabularyFilterTerms.vocabularyFilterFileUri(
    TfArg<String> vocabularyFilterFileUri,
  ) = TranscribeVocabularyFilterTermsVocabularyFilterFileUri;

  /// Sets `words`.
  const factory TranscribeVocabularyFilterTerms.words(
    TfArg<List<String>> words,
  ) = TranscribeVocabularyFilterTermsWords;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [TranscribeVocabularyFilterTerms.vocabularyFilterFileUri] choice: sets `vocabulary_filter_file_uri`.
final class TranscribeVocabularyFilterTermsVocabularyFilterFileUri
    extends TranscribeVocabularyFilterTerms {
  const TranscribeVocabularyFilterTermsVocabularyFilterFileUri(
    this.vocabularyFilterFileUri,
  );

  final TfArg<String> vocabularyFilterFileUri;

  @override
  String get blockKey => 'vocabulary_filter_file_uri';

  @override
  Map<String, Object?> encode() => {
    'vocabulary_filter_file_uri': vocabularyFilterFileUri.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'vocabulary_filter_file_uri': vocabularyFilterFileUri,
  };
}

/// The [TranscribeVocabularyFilterTerms.words] choice: sets `words`.
final class TranscribeVocabularyFilterTermsWords
    extends TranscribeVocabularyFilterTerms {
  const TranscribeVocabularyFilterTermsWords(this.words);

  final TfArg<List<String>> words;

  @override
  String get blockKey => 'words';

  @override
  Map<String, Object?> encode() => {'words': words.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'words': words};
}

/// Factory wrapper for `aws_transcribe_vocabulary_filter`.
final class AwsTranscribeVocabularyFilter extends Resource {
  static const String tfType = 'aws_transcribe_vocabulary_filter';

  AwsTranscribeVocabularyFilter({
    required super.localName,
    required TfArg<String> languageCode,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TranscribeVocabularyFilterTerms terms,
    required TfArg<String> vocabularyFilterName,
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
           ...terms.argMap,
           'vocabulary_filter_name': vocabularyFilterName,
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
