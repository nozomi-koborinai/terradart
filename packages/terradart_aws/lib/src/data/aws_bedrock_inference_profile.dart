// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_inference_profile`.
const Set<String> _awsBedrockInferenceProfileSensitive = <String>{};

/// Factory wrapper for `aws_bedrock_inference_profile`.
final class DataAwsBedrockInferenceProfile extends Data {
  static const String tfType = 'aws_bedrock_inference_profile';

  DataAwsBedrockInferenceProfile({
    required super.localName,
    required TfArg<String> inferenceProfileId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'inference_profile_id': inferenceProfileId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockInferenceProfileSensitive;

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `inference_profile_arn` attribute.
  TfRef<String> get inferenceProfileArn =>
      TfRef.attribute<String>(this, 'inference_profile_arn');

  /// Reference to `inference_profile_name` attribute.
  TfRef<String> get inferenceProfileName =>
      TfRef.attribute<String>(this, 'inference_profile_name');

  /// Reference to `models` attribute.
  TfRef<List<Map<String, Object?>>> get models =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'models');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
