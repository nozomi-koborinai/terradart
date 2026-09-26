// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_inference_profile`.
const Set<String> _awsBedrockInferenceProfileSensitive = <String>{};

/// Typed helper for the `model_source` block of
/// `aws_bedrock_inference_profile` (derived from provider schema).
@immutable
final class BedrockInferenceProfileModelSource {
  const BedrockInferenceProfileModelSource({required this.copyFrom});

  final TfArg<String> copyFrom;

  Map<String, Object?> encode() => {'copy_from': copyFrom.toTfJson()};
}

/// Factory wrapper for `aws_bedrock_inference_profile`.
final class AwsBedrockInferenceProfile extends Resource {
  static const String tfType = 'aws_bedrock_inference_profile';

  AwsBedrockInferenceProfile({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockInferenceProfileModelSource>? modelSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (modelSource != null)
             'model_source': TfArg.literal([
               for (final e in modelSource) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockInferenceProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `models` attribute.
  TfRef<List<Map<String, Object?>>> get models =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'models');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
