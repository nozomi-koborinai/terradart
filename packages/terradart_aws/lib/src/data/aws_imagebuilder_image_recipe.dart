// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_image_recipe`.
const Set<String> _awsImagebuilderImageRecipeSensitive = <String>{};

/// Factory wrapper for `aws_imagebuilder_image_recipe`.
final class DataAwsImagebuilderImageRecipe extends Data {
  static const String tfType = 'aws_imagebuilder_image_recipe';

  DataAwsImagebuilderImageRecipe({
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
  Set<String> get sensitiveFields => _awsImagebuilderImageRecipeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ami_tags` attribute.
  TfRef<Map<String, String>> get amiTags =>
      TfRef.attribute<Map<String, String>>(this, 'ami_tags');

  /// Reference to `block_device_mapping` attribute.
  TfRef<List<Map<String, Object?>>> get blockDeviceMapping =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'block_device_mapping');

  /// Reference to `component` attribute.
  TfRef<List<Map<String, Object?>>> get component =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'component');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `parent_image` attribute.
  TfRef<String> get parentImage =>
      TfRef.attribute<String>(this, 'parent_image');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');

  /// Reference to `user_data_base64` attribute.
  TfRef<String> get userDataBase64 =>
      TfRef.attribute<String>(this, 'user_data_base64');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `working_directory` attribute.
  TfRef<String> get workingDirectory =>
      TfRef.attribute<String>(this, 'working_directory');
}
