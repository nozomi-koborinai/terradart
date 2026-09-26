// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_container_recipe`.
const Set<String> _awsImagebuilderContainerRecipeSensitive = <String>{};

/// Factory wrapper for `aws_imagebuilder_container_recipe`.
final class DataAwsImagebuilderContainerRecipe extends Data {
  static const String tfType = 'aws_imagebuilder_container_recipe';

  DataAwsImagebuilderContainerRecipe({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderContainerRecipeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `component` attribute.
  TfRef<List<Map<String, Object?>>> get component =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'component');

  /// Reference to `container_type` attribute.
  TfRef<String> get containerType =>
      TfRef.attribute<String>(this, 'container_type');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dockerfile_template_data` attribute.
  TfRef<String> get dockerfileTemplateData =>
      TfRef.attribute<String>(this, 'dockerfile_template_data');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `instance_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get instanceConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'instance_configuration',
      );

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `parent_image` attribute.
  TfRef<String> get parentImage =>
      TfRef.attribute<String>(this, 'parent_image');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');

  /// Reference to `target_repository` attribute.
  TfRef<List<Map<String, Object?>>> get targetRepository =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'target_repository');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `working_directory` attribute.
  TfRef<String> get workingDirectory =>
      TfRef.attribute<String>(this, 'working_directory');
}
