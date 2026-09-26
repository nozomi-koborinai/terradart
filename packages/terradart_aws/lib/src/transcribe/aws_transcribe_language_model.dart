// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transcribe_language_model`.
const Set<String> _awsTranscribeLanguageModelSensitive = <String>{};

/// Typed helper for the `input_data_config` block of
/// `aws_transcribe_language_model` (derived from provider schema).
@immutable
final class TranscribeLanguageModelInputDataConfig {
  const TranscribeLanguageModelInputDataConfig({
    required this.dataAccessRoleArn,
    required this.s3Uri,
    this.tuningDataS3Uri,
  });

  final TfArg<String> dataAccessRoleArn;

  final TfArg<String> s3Uri;

  final TfArg<String>? tuningDataS3Uri;

  Map<String, Object?> encode() => {
    'data_access_role_arn': dataAccessRoleArn.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (tuningDataS3Uri != null)
      'tuning_data_s3_uri': tuningDataS3Uri!.toTfJson(),
  };
}

/// Factory wrapper for `aws_transcribe_language_model`.
final class AwsTranscribeLanguageModel extends Resource {
  static const String tfType = 'aws_transcribe_language_model';

  AwsTranscribeLanguageModel({
    required super.localName,
    required TfArg<String> baseModelName,
    required TfArg<String> languageCode,
    required TfArg<String> modelName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TranscribeLanguageModelInputDataConfig inputDataConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'base_model_name': baseModelName,
           'language_code': languageCode,
           'model_name': modelName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'input_data_config': TfArg.literal(inputDataConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTranscribeLanguageModelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
