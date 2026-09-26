// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_inference_profiles`.
const Set<String> _awsBedrockInferenceProfilesSensitive = <String>{};

/// Factory wrapper for `aws_bedrock_inference_profiles`.
final class DataAwsBedrockInferenceProfiles extends Data {
  static const String tfType = 'aws_bedrock_inference_profiles';

  DataAwsBedrockInferenceProfiles({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockInferenceProfilesSensitive;

  /// Reference to `inference_profile_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get inferenceProfileSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'inference_profile_summaries',
      );
}
