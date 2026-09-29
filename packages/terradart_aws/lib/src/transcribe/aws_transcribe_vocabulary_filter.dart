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
sealed class TranscribeVocabularyFilterVocabularyFilterFileUriOrWords {
  const TranscribeVocabularyFilterVocabularyFilterFileUriOrWords();

  /// Sets `vocabulary_filter_file_uri`.
  const factory TranscribeVocabularyFilterVocabularyFilterFileUriOrWords.vocabularyFilterFileUri(
    TfArg<String> vocabularyFilterFileUri,
  ) = TranscribeVocabularyFilterVocabularyFilterFileUriOrWordsVocabularyFilterFileUri;

  /// Sets `words`.
  const factory TranscribeVocabularyFilterVocabularyFilterFileUriOrWords.words(
    TfArg<List<String>> words,
  ) = TranscribeVocabularyFilterVocabularyFilterFileUriOrWordsWords;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [TranscribeVocabularyFilterVocabularyFilterFileUriOrWords.vocabularyFilterFileUri] choice: sets `vocabulary_filter_file_uri`.
final class TranscribeVocabularyFilterVocabularyFilterFileUriOrWordsVocabularyFilterFileUri
    extends TranscribeVocabularyFilterVocabularyFilterFileUriOrWords {
  const TranscribeVocabularyFilterVocabularyFilterFileUriOrWordsVocabularyFilterFileUri(
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

/// The [TranscribeVocabularyFilterVocabularyFilterFileUriOrWords.words] choice: sets `words`.
final class TranscribeVocabularyFilterVocabularyFilterFileUriOrWordsWords
    extends TranscribeVocabularyFilterVocabularyFilterFileUriOrWords {
  const TranscribeVocabularyFilterVocabularyFilterFileUriOrWordsWords(
    this.words,
  );

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
    required TranscribeVocabularyFilterVocabularyFilterFileUriOrWords
    vocabularyFilterFileUriOrWords,
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
           ...vocabularyFilterFileUriOrWords.argMap,
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
