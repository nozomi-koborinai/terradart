// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transcribe_vocabulary`.
const Set<String> _awsTranscribeVocabularySensitive = <String>{};

/// Exactly one of `phrases`, `vocabulary_file_uri` on `aws_transcribe_vocabulary`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class TranscribeVocabularyPhrasesOrVocabularyFileUri {
  const TranscribeVocabularyPhrasesOrVocabularyFileUri();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `phrases` (one of the [TranscribeVocabularyPhrasesOrVocabularyFileUri] choices).
final class TranscribeVocabularyPhrasesOption
    extends TranscribeVocabularyPhrasesOrVocabularyFileUri {
  const TranscribeVocabularyPhrasesOption({required this.phrases});

  final TfArg<List<String>> phrases;

  @override
  String get blockKey => 'phrases';

  @override
  Map<String, Object?> encode() => {'phrases': phrases.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'phrases': phrases};
}

/// Sets `vocabulary_file_uri` (one of the [TranscribeVocabularyPhrasesOrVocabularyFileUri] choices).
final class TranscribeVocabularyVocabularyFileUriOption
    extends TranscribeVocabularyPhrasesOrVocabularyFileUri {
  const TranscribeVocabularyVocabularyFileUriOption({
    required this.vocabularyFileUri,
  });

  final TfArg<String> vocabularyFileUri;

  @override
  String get blockKey => 'vocabulary_file_uri';

  @override
  Map<String, Object?> encode() => {
    'vocabulary_file_uri': vocabularyFileUri.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'vocabulary_file_uri': vocabularyFileUri,
  };
}

/// Factory wrapper for `aws_transcribe_vocabulary`.
final class AwsTranscribeVocabulary extends Resource {
  static const String tfType = 'aws_transcribe_vocabulary';

  AwsTranscribeVocabulary({
    required super.localName,
    required TfArg<String> languageCode,
    required TranscribeVocabularyPhrasesOrVocabularyFileUri
    phrasesOrVocabularyFileUri,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vocabularyName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'language_code': languageCode,
           ...phrasesOrVocabularyFileUri.argMap,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'vocabulary_name': vocabularyName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTranscribeVocabularySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `download_uri` attribute.
  TfRef<String> get downloadUri =>
      TfRef.attribute<String>(this, 'download_uri');
}
