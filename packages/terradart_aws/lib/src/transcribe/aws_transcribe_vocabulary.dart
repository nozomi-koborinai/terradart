// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transcribe_vocabulary`.
const Set<String> _awsTranscribeVocabularySensitive = <String>{};

/// Exactly one of `phrases`, `vocabulary_file_uri` on `aws_transcribe_vocabulary`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.phrases(...)`.
sealed class TranscribeVocabularyTerms {
  const TranscribeVocabularyTerms();

  /// Sets `phrases`.
  const factory TranscribeVocabularyTerms.phrases(TfArg<List<String>> phrases) =
      TranscribeVocabularyTermsPhrases;

  /// Sets `vocabulary_file_uri`.
  const factory TranscribeVocabularyTerms.vocabularyFileUri(
    TfArg<String> vocabularyFileUri,
  ) = TranscribeVocabularyTermsVocabularyFileUri;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [TranscribeVocabularyTerms.phrases] choice: sets `phrases`.
final class TranscribeVocabularyTermsPhrases extends TranscribeVocabularyTerms {
  const TranscribeVocabularyTermsPhrases(this.phrases);

  final TfArg<List<String>> phrases;

  @override
  String get blockKey => 'phrases';

  @override
  Map<String, Object?> encode() => {'phrases': phrases.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'phrases': phrases};
}

/// The [TranscribeVocabularyTerms.vocabularyFileUri] choice: sets `vocabulary_file_uri`.
final class TranscribeVocabularyTermsVocabularyFileUri
    extends TranscribeVocabularyTerms {
  const TranscribeVocabularyTermsVocabularyFileUri(this.vocabularyFileUri);

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
    required TranscribeVocabularyTerms terms,
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
           ...terms.argMap,
           'region': ?region,
           'tags': ?tags,
           'vocabulary_name': vocabularyName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTranscribeVocabularySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTranscribeVocabulary>`.
  RefTo<AwsTranscribeVocabulary> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `download_uri` attribute.
  TfRef<String> get downloadUri =>
      TfRef.attribute<String>(this, 'download_uri');
}
