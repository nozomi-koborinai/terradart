// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_foundation_models`.
const Set<String> _awsBedrockFoundationModelsSensitive = <String>{};

/// Factory wrapper for `aws_bedrock_foundation_models`.
final class DataAwsBedrockFoundationModels extends Data {
  static const String tfType = 'aws_bedrock_foundation_models';

  DataAwsBedrockFoundationModels({
    required super.localName,
    TfArg<String>? byCustomizationType,
    TfArg<String>? byInferenceType,
    TfArg<String>? byOutputModality,
    TfArg<String>? byProvider,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (byCustomizationType != null)
             'by_customization_type': byCustomizationType,
           if (byInferenceType != null) 'by_inference_type': byInferenceType,
           if (byOutputModality != null) 'by_output_modality': byOutputModality,
           if (byProvider != null) 'by_provider': byProvider,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockFoundationModelsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `model_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get modelSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'model_summaries');
}
