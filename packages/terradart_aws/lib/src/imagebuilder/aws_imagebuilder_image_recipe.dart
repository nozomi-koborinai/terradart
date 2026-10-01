// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_imagebuilder_image_recipe`.
const Set<String> _awsImagebuilderImageRecipeSensitive = <String>{};

/// Typed helper for the `block_device_mapping` block of
/// `aws_imagebuilder_image_recipe` (derived from provider schema).
@immutable
final class ImagebuilderImageRecipeBlockDeviceMapping {
  const ImagebuilderImageRecipeBlockDeviceMapping({
    this.deviceName,
    this.noDevice,
    this.virtualName,
    this.ebs,
  });

  final TfArg<String>? deviceName;

  final TfArg<bool>? noDevice;

  final TfArg<String>? virtualName;

  final ImagebuilderImageRecipeEbs? ebs;

  Map<String, Object?> encode() => {
    'device_name': ?deviceName?.toTfJson(),
    'no_device': ?noDevice?.toTfJson(),
    'virtual_name': ?virtualName?.toTfJson(),
    'ebs': ?ebs?.encode(),
  };
}

/// Typed helper for the `block_device_mapping.ebs` block of
/// `aws_imagebuilder_image_recipe` (derived from provider schema).
@immutable
final class ImagebuilderImageRecipeEbs {
  const ImagebuilderImageRecipeEbs({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.snapshotId,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  final TfArg<String>? deleteOnTermination;

  final TfArg<String>? encrypted;

  final TfArg<num>? iops;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String>? snapshotId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<ImagebuilderImageRecipeVolumeType>? volumeType;

  Map<String, Object?> encode() => {
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'encrypted': ?encrypted?.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'snapshot_id': ?snapshotId?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_size': ?volumeSize?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
enum ImagebuilderImageRecipeVolumeType implements TerraformEnum {
  standard('standard'),
  io1('io1'),
  io2('io2'),
  gp2('gp2'),
  gp3('gp3'),
  sc1('sc1'),
  st1('st1');

  const ImagebuilderImageRecipeVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `component` block of
/// `aws_imagebuilder_image_recipe` (derived from provider schema).
@immutable
final class ImagebuilderImageRecipeComponent {
  const ImagebuilderImageRecipeComponent({
    required this.componentArn,
    this.parameter,
  });

  final TfArg<String> componentArn;

  final List<ImagebuilderImageRecipeParameter>? parameter;

  Map<String, Object?> encode() => {
    'component_arn': componentArn.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// Typed helper for the `component.parameter` block of
/// `aws_imagebuilder_image_recipe` (derived from provider schema).
@immutable
final class ImagebuilderImageRecipeParameter {
  const ImagebuilderImageRecipeParameter({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `systems_manager_agent` block of
/// `aws_imagebuilder_image_recipe` (derived from provider schema).
@immutable
final class ImagebuilderImageRecipeSystemsManagerAgent {
  const ImagebuilderImageRecipeSystemsManagerAgent({
    required this.uninstallAfterBuild,
  });

  final TfArg<bool> uninstallAfterBuild;

  Map<String, Object?> encode() => {
    'uninstall_after_build': uninstallAfterBuild.toTfJson(),
  };
}

/// Factory wrapper for `aws_imagebuilder_image_recipe`.
final class AwsImagebuilderImageRecipe extends Resource {
  static const String tfType = 'aws_imagebuilder_image_recipe';

  AwsImagebuilderImageRecipe(
    super.localName, {
    TfArg<Map<String, String>>? amiTags,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> parentImage,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? userDataBase64,
    required TfArg<String> version,
    TfArg<String>? workingDirectory,
    List<ImagebuilderImageRecipeBlockDeviceMapping>? blockDeviceMapping,
    required List<ImagebuilderImageRecipeComponent> component,
    ImagebuilderImageRecipeSystemsManagerAgent? systemsManagerAgent,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ami_tags': ?amiTags,
           'description': ?description,
           'name': name,
           'parent_image': parentImage,
           'region': ?region,
           'tags': ?tags,
           'user_data_base64': ?userDataBase64,
           'version': version,
           'working_directory': ?workingDirectory,
           if (blockDeviceMapping != null)
             'block_device_mapping': TfArg.literal([
               for (final e in blockDeviceMapping) e.encode(),
             ]),
           'component': TfArg.literal([for (final e in component) e.encode()]),
           if (systemsManagerAgent != null)
             'systems_manager_agent': TfArg.literal(
               systemsManagerAgent.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderImageRecipeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsImagebuilderImageRecipe>`.
  RefTo<AwsImagebuilderImageRecipe> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');

  /// Reference to `ami_tags` attribute.
  TfRef<Map<String, String>> get amiTags =>
      TfRef.attribute<Map<String, String>>(this, 'ami_tags');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `parent_image` attribute.
  TfRef<String> get parentImage =>
      TfRef.attribute<String>(this, 'parent_image');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_data_base64` attribute.
  TfRef<String> get userDataBase64 =>
      TfRef.attribute<String>(this, 'user_data_base64');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `working_directory` attribute.
  TfRef<String> get workingDirectory =>
      TfRef.attribute<String>(this, 'working_directory');
}
