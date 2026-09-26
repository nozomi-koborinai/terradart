// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_custom_models`.
const Set<String> _awsBedrockCustomModelsSensitive = <String>{};

/// Factory wrapper for `aws_bedrock_custom_models`.
final class DataAwsBedrockCustomModels extends Data {
  static const String tfType = 'aws_bedrock_custom_models';

  DataAwsBedrockCustomModels({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockCustomModelsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `model_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get modelSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'model_summaries');
}
