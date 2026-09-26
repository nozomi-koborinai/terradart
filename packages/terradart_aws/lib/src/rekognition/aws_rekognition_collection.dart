// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rekognition_collection`.
const Set<String> _awsRekognitionCollectionSensitive = <String>{};

/// Factory wrapper for `aws_rekognition_collection`.
final class AwsRekognitionCollection extends Resource {
  static const String tfType = 'aws_rekognition_collection';

  AwsRekognitionCollection({
    required super.localName,
    required TfArg<String> collectionId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'collection_id': collectionId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRekognitionCollectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `face_model_version` attribute.
  TfRef<String> get faceModelVersion =>
      TfRef.attribute<String>(this, 'face_model_version');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
