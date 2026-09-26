// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transcribe_medical_vocabulary`.
const Set<String> _awsTranscribeMedicalVocabularySensitive = <String>{};

/// Factory wrapper for `aws_transcribe_medical_vocabulary`.
final class AwsTranscribeMedicalVocabulary extends Resource {
  static const String tfType = 'aws_transcribe_medical_vocabulary';

  AwsTranscribeMedicalVocabulary({
    required super.localName,
    required TfArg<String> languageCode,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vocabularyFileUri,
    required TfArg<String> vocabularyName,
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
           'vocabulary_file_uri': vocabularyFileUri,
           'vocabulary_name': vocabularyName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTranscribeMedicalVocabularySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `download_uri` attribute.
  TfRef<String> get downloadUri =>
      TfRef.attribute<String>(this, 'download_uri');
}
