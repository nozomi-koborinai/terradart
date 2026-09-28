// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rekognition_project`.
const Set<String> _awsRekognitionProjectSensitive = <String>{};

/// Rekognition Project Auto enum for `auto_update`.
enum RekognitionProjectAutoUpdate implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const RekognitionProjectAutoUpdate(this.terraformValue);
  @override
  final String terraformValue;
}

/// Rekognition Project enum for `feature`.
enum RekognitionProjectFeature implements TerraformEnum {
  contentModeration('CONTENT_MODERATION'),
  customLabels('CUSTOM_LABELS');

  const RekognitionProjectFeature(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_rekognition_project`.
final class AwsRekognitionProject extends Resource {
  static const String tfType = 'aws_rekognition_project';

  AwsRekognitionProject({
    required super.localName,
    TfArg<RekognitionProjectAutoUpdate>? autoUpdate,
    TfArg<RekognitionProjectFeature>? feature,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoUpdate != null) 'auto_update': autoUpdate,
           if (feature != null) 'feature': feature,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRekognitionProjectSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
