// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_foundation_model`.
const Set<String> _awsBedrockFoundationModelSensitive = <String>{};

/// Factory wrapper for `aws_bedrock_foundation_model`.
final class DataAwsBedrockFoundationModel extends Data {
  static const String tfType = 'aws_bedrock_foundation_model';

  DataAwsBedrockFoundationModel({
    required super.localName,
    required TfArg<String> modelId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'model_id': modelId, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockFoundationModelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `customizations_supported` attribute.
  TfRef<List<String>> get customizationsSupported =>
      TfRef.attribute<List<String>>(this, 'customizations_supported');

  /// Reference to `inference_types_supported` attribute.
  TfRef<List<String>> get inferenceTypesSupported =>
      TfRef.attribute<List<String>>(this, 'inference_types_supported');

  /// Reference to `input_modalities` attribute.
  TfRef<List<String>> get inputModalities =>
      TfRef.attribute<List<String>>(this, 'input_modalities');

  /// Reference to `model_arn` attribute.
  TfRef<String> get modelArn => TfRef.attribute<String>(this, 'model_arn');

  /// Reference to `model_name` attribute.
  TfRef<String> get modelName => TfRef.attribute<String>(this, 'model_name');

  /// Reference to `output_modalities` attribute.
  TfRef<List<String>> get outputModalities =>
      TfRef.attribute<List<String>>(this, 'output_modalities');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');

  /// Reference to `response_streaming_supported` attribute.
  TfRef<bool> get responseStreamingSupported =>
      TfRef.attribute<bool>(this, 'response_streaming_supported');
}
