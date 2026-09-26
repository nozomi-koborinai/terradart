// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final ImagebuilderImageRecipeBlockDeviceMappingEbs? ebs;

  Map<String, Object?> encode() => {
    if (deviceName != null) 'device_name': deviceName!.toTfJson(),
    if (noDevice != null) 'no_device': noDevice!.toTfJson(),
    if (virtualName != null) 'virtual_name': virtualName!.toTfJson(),
    if (ebs != null) 'ebs': ebs!.encode(),
  };
}

/// Typed helper for the `block_device_mapping.ebs` block of
/// `aws_imagebuilder_image_recipe` (derived from provider schema).
@immutable
final class ImagebuilderImageRecipeBlockDeviceMappingEbs {
  const ImagebuilderImageRecipeBlockDeviceMappingEbs({
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

  final TfArg<String>? kmsKeyId;

  final TfArg<String>? snapshotId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<String>? volumeType;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (snapshotId != null) 'snapshot_id': snapshotId!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
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

  final List<ImagebuilderImageRecipeComponentParameter>? parameter;

  Map<String, Object?> encode() => {
    'component_arn': componentArn.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// Typed helper for the `component.parameter` block of
/// `aws_imagebuilder_image_recipe` (derived from provider schema).
@immutable
final class ImagebuilderImageRecipeComponentParameter {
  const ImagebuilderImageRecipeComponentParameter({
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

  AwsImagebuilderImageRecipe({
    required super.localName,
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
           if (amiTags != null) 'ami_tags': amiTags,
           if (description != null) 'description': description,
           'name': name,
           'parent_image': parentImage,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (userDataBase64 != null) 'user_data_base64': userDataBase64,
           'version': version,
           if (workingDirectory != null) 'working_directory': workingDirectory,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
