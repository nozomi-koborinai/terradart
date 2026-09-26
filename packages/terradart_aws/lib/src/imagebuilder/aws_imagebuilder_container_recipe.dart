// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_container_recipe`.
const Set<String> _awsImagebuilderContainerRecipeSensitive = <String>{};

/// Typed helper for the `component` block of
/// `aws_imagebuilder_container_recipe` (derived from provider schema).
@immutable
final class ImagebuilderContainerRecipeComponent {
  const ImagebuilderContainerRecipeComponent({
    required this.componentArn,
    this.parameter,
  });

  final TfArg<String> componentArn;

  final List<ImagebuilderContainerRecipeComponentParameter>? parameter;

  Map<String, Object?> encode() => {
    'component_arn': componentArn.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// Typed helper for the `component.parameter` block of
/// `aws_imagebuilder_container_recipe` (derived from provider schema).
@immutable
final class ImagebuilderContainerRecipeComponentParameter {
  const ImagebuilderContainerRecipeComponentParameter({
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

/// Typed helper for the `instance_configuration` block of
/// `aws_imagebuilder_container_recipe` (derived from provider schema).
@immutable
final class ImagebuilderContainerRecipeInstanceConfiguration {
  const ImagebuilderContainerRecipeInstanceConfiguration({
    this.image,
    this.blockDeviceMapping,
  });

  final TfArg<String>? image;

  final List<
    ImagebuilderContainerRecipeInstanceConfigurationBlockDeviceMapping
  >?
  blockDeviceMapping;

  Map<String, Object?> encode() => {
    if (image != null) 'image': image!.toTfJson(),
    if (blockDeviceMapping != null)
      'block_device_mapping': [for (final e in blockDeviceMapping!) e.encode()],
  };
}

/// Typed helper for the `instance_configuration.block_device_mapping` block of
/// `aws_imagebuilder_container_recipe` (derived from provider schema).
@immutable
final class ImagebuilderContainerRecipeInstanceConfigurationBlockDeviceMapping {
  const ImagebuilderContainerRecipeInstanceConfigurationBlockDeviceMapping({
    this.deviceName,
    this.noDevice,
    this.virtualName,
    this.ebs,
  });

  final TfArg<String>? deviceName;

  final TfArg<bool>? noDevice;

  final TfArg<String>? virtualName;

  final ImagebuilderContainerRecipeInstanceConfigurationBlockDeviceMappingEbs?
  ebs;

  Map<String, Object?> encode() => {
    if (deviceName != null) 'device_name': deviceName!.toTfJson(),
    if (noDevice != null) 'no_device': noDevice!.toTfJson(),
    if (virtualName != null) 'virtual_name': virtualName!.toTfJson(),
    if (ebs != null) 'ebs': ebs!.encode(),
  };
}

/// Typed helper for the `instance_configuration.block_device_mapping.ebs` block of
/// `aws_imagebuilder_container_recipe` (derived from provider schema).
@immutable
final class ImagebuilderContainerRecipeInstanceConfigurationBlockDeviceMappingEbs {
  const ImagebuilderContainerRecipeInstanceConfigurationBlockDeviceMappingEbs({
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

/// Typed helper for the `target_repository` block of
/// `aws_imagebuilder_container_recipe` (derived from provider schema).
@immutable
final class ImagebuilderContainerRecipeTargetRepository {
  const ImagebuilderContainerRecipeTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  final TfArg<String> repositoryName;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    'repository_name': repositoryName.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Factory wrapper for `aws_imagebuilder_container_recipe`.
final class AwsImagebuilderContainerRecipe extends Resource {
  static const String tfType = 'aws_imagebuilder_container_recipe';

  AwsImagebuilderContainerRecipe({
    required super.localName,
    required TfArg<String> containerType,
    TfArg<String>? description,
    TfArg<String>? dockerfileTemplateData,
    TfArg<String>? dockerfileTemplateUri,
    TfArg<String>? kmsKeyId,
    required TfArg<String> name,
    required TfArg<String> parentImage,
    TfArg<String>? platformOverride,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> version,
    TfArg<String>? workingDirectory,
    required List<ImagebuilderContainerRecipeComponent> component,
    ImagebuilderContainerRecipeInstanceConfiguration? instanceConfiguration,
    required ImagebuilderContainerRecipeTargetRepository targetRepository,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_type': containerType,
           if (description != null) 'description': description,
           if (dockerfileTemplateData != null)
             'dockerfile_template_data': dockerfileTemplateData,
           if (dockerfileTemplateUri != null)
             'dockerfile_template_uri': dockerfileTemplateUri,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           'parent_image': parentImage,
           if (platformOverride != null) 'platform_override': platformOverride,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'version': version,
           if (workingDirectory != null) 'working_directory': workingDirectory,
           'component': TfArg.literal([for (final e in component) e.encode()]),
           if (instanceConfiguration != null)
             'instance_configuration': TfArg.literal(
               instanceConfiguration.encode(),
             ),
           'target_repository': TfArg.literal(targetRepository.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderContainerRecipeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');
}
