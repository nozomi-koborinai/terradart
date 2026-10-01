// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_imagebuilder_container_recipe`.
const Set<String> _awsImagebuilderContainerRecipeSensitive = <String>{};

/// Imagebuilder Container Recipe Container enum for `container_type`.
enum ImagebuilderContainerRecipeContainerType implements TerraformEnum {
  docker('DOCKER');

  const ImagebuilderContainerRecipeContainerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Imagebuilder Container Recipe Platform enum for `platform_override`.
enum ImagebuilderContainerRecipePlatformOverride implements TerraformEnum {
  linux('Linux'),
  windows('Windows');

  const ImagebuilderContainerRecipePlatformOverride(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `dockerfile_template_data`, `dockerfile_template_uri` on `aws_imagebuilder_container_recipe`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.dockerfileTemplateData(...)`.
sealed class ImagebuilderContainerRecipeDockerfileTemplate {
  const ImagebuilderContainerRecipeDockerfileTemplate();

  /// Sets `dockerfile_template_data`.
  const factory ImagebuilderContainerRecipeDockerfileTemplate.dockerfileTemplateData(
    TfArg<String> dockerfileTemplateData,
  ) = ImagebuilderContainerRecipeDockerfileTemplateData;

  /// Sets `dockerfile_template_uri`.
  const factory ImagebuilderContainerRecipeDockerfileTemplate.dockerfileTemplateUri(
    TfArg<String> dockerfileTemplateUri,
  ) = ImagebuilderContainerRecipeDockerfileTemplateUri;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ImagebuilderContainerRecipeDockerfileTemplate.dockerfileTemplateData] choice: sets `dockerfile_template_data`.
final class ImagebuilderContainerRecipeDockerfileTemplateData
    extends ImagebuilderContainerRecipeDockerfileTemplate {
  const ImagebuilderContainerRecipeDockerfileTemplateData(
    this.dockerfileTemplateData,
  );

  final TfArg<String> dockerfileTemplateData;

  @override
  String get blockKey => 'dockerfile_template_data';

  @override
  Map<String, Object?> encode() => {
    'dockerfile_template_data': dockerfileTemplateData.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'dockerfile_template_data': dockerfileTemplateData,
  };
}

/// The [ImagebuilderContainerRecipeDockerfileTemplate.dockerfileTemplateUri] choice: sets `dockerfile_template_uri`.
final class ImagebuilderContainerRecipeDockerfileTemplateUri
    extends ImagebuilderContainerRecipeDockerfileTemplate {
  const ImagebuilderContainerRecipeDockerfileTemplateUri(
    this.dockerfileTemplateUri,
  );

  final TfArg<String> dockerfileTemplateUri;

  @override
  String get blockKey => 'dockerfile_template_uri';

  @override
  Map<String, Object?> encode() => {
    'dockerfile_template_uri': dockerfileTemplateUri.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'dockerfile_template_uri': dockerfileTemplateUri,
  };
}

/// Typed helper for the `component` block of
/// `aws_imagebuilder_container_recipe` (derived from provider schema).
@immutable
final class ImagebuilderContainerRecipeComponent {
  const ImagebuilderContainerRecipeComponent({
    required this.componentArn,
    this.parameter,
  });

  final TfArg<String> componentArn;

  final List<ImagebuilderContainerRecipeParameter>? parameter;

  Map<String, Object?> encode() => {
    'component_arn': componentArn.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// Typed helper for the `component.parameter` block of
/// `aws_imagebuilder_container_recipe` (derived from provider schema).
@immutable
final class ImagebuilderContainerRecipeParameter {
  const ImagebuilderContainerRecipeParameter({
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

  final List<ImagebuilderContainerRecipeBlockDeviceMapping>? blockDeviceMapping;

  Map<String, Object?> encode() => {
    'image': ?image?.toTfJson(),
    if (blockDeviceMapping != null)
      'block_device_mapping': [for (final e in blockDeviceMapping!) e.encode()],
  };
}

/// Typed helper for the `instance_configuration.block_device_mapping` block of
/// `aws_imagebuilder_container_recipe` (derived from provider schema).
@immutable
final class ImagebuilderContainerRecipeBlockDeviceMapping {
  const ImagebuilderContainerRecipeBlockDeviceMapping({
    this.deviceName,
    this.noDevice,
    this.virtualName,
    this.ebs,
  });

  final TfArg<String>? deviceName;

  final TfArg<bool>? noDevice;

  final TfArg<String>? virtualName;

  final ImagebuilderContainerRecipeEbs? ebs;

  Map<String, Object?> encode() => {
    'device_name': ?deviceName?.toTfJson(),
    'no_device': ?noDevice?.toTfJson(),
    'virtual_name': ?virtualName?.toTfJson(),
    'ebs': ?ebs?.encode(),
  };
}

/// Typed helper for the `instance_configuration.block_device_mapping.ebs` block of
/// `aws_imagebuilder_container_recipe` (derived from provider schema).
@immutable
final class ImagebuilderContainerRecipeEbs {
  const ImagebuilderContainerRecipeEbs({
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

  final TfArg<ImagebuilderContainerRecipeVolumeType>? volumeType;

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
enum ImagebuilderContainerRecipeVolumeType implements TerraformEnum {
  standard('standard'),
  io1('io1'),
  io2('io2'),
  gp2('gp2'),
  gp3('gp3'),
  sc1('sc1'),
  st1('st1');

  const ImagebuilderContainerRecipeVolumeType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<ImagebuilderContainerRecipeService> service;

  Map<String, Object?> encode() => {
    'repository_name': repositoryName.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// `service` — derived from the provider schema description.
enum ImagebuilderContainerRecipeService implements TerraformEnum {
  ecr('ECR');

  const ImagebuilderContainerRecipeService(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_imagebuilder_container_recipe`.
final class AwsImagebuilderContainerRecipe extends Resource {
  static const String tfType = 'aws_imagebuilder_container_recipe';

  AwsImagebuilderContainerRecipe({
    required super.localName,
    required TfArg<ImagebuilderContainerRecipeContainerType> containerType,
    TfArg<String>? description,
    required ImagebuilderContainerRecipeDockerfileTemplate dockerfileTemplate,
    RefTo<AwsKmsKey>? kmsKeyId,
    required TfArg<String> name,
    required TfArg<String> parentImage,
    TfArg<ImagebuilderContainerRecipePlatformOverride>? platformOverride,
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
           'description': ?description,
           ...dockerfileTemplate.argMap,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': name,
           'parent_image': parentImage,
           'platform_override': ?platformOverride,
           'region': ?region,
           'tags': ?tags,
           'version': version,
           'working_directory': ?workingDirectory,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsImagebuilderContainerRecipe>`.
  RefTo<AwsImagebuilderContainerRecipe> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `container_type` attribute.
  TfRef<String> get containerType =>
      TfRef.attribute<String>(this, 'container_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dockerfile_template_data` attribute.
  TfRef<String> get dockerfileTemplateData =>
      TfRef.attribute<String>(this, 'dockerfile_template_data');

  /// Reference to `dockerfile_template_uri` attribute.
  TfRef<String> get dockerfileTemplateUri =>
      TfRef.attribute<String>(this, 'dockerfile_template_uri');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `parent_image` attribute.
  TfRef<String> get parentImage =>
      TfRef.attribute<String>(this, 'parent_image');

  /// Reference to `platform_override` attribute.
  TfRef<String> get platformOverride =>
      TfRef.attribute<String>(this, 'platform_override');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `working_directory` attribute.
  TfRef<String> get workingDirectory =>
      TfRef.attribute<String>(this, 'working_directory');
}
