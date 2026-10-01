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

  AwsRekognitionProject(
    super.localName, {
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
           'auto_update': ?autoUpdate,
           'feature': ?feature,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRekognitionProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRekognitionProject>`.
  RefTo<AwsRekognitionProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `auto_update` attribute.
  TfRef<String> get autoUpdate => TfRef.attribute<String>(this, 'auto_update');

  /// Reference to `feature` attribute.
  TfRef<String> get feature => TfRef.attribute<String>(this, 'feature');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
