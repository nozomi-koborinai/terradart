// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_image_version`.
const Set<String> _awsSagemakerImageVersionSensitive = <String>{};

/// Sagemaker Image Version Job enum for `job_type`.
enum SagemakerImageVersionJobType implements TerraformEnum {
  training('TRAINING'),
  inference('INFERENCE'),
  notebookKernel('NOTEBOOK_KERNEL');

  const SagemakerImageVersionJobType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Sagemaker Image Version enum for `processor`.
enum SagemakerImageVersionProcessor implements TerraformEnum {
  cpu('CPU'),
  gpu('GPU');

  const SagemakerImageVersionProcessor(this.terraformValue);
  @override
  final String terraformValue;
}

/// Sagemaker Image Version Vendor enum for `vendor_guidance`.
enum SagemakerImageVersionVendorGuidance implements TerraformEnum {
  notProvided('NOT_PROVIDED'),
  stable('STABLE'),
  toBeArchived('TO_BE_ARCHIVED'),
  archived('ARCHIVED');

  const SagemakerImageVersionVendorGuidance(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sagemaker_image_version`.
final class AwsSagemakerImageVersion extends Resource {
  static const String tfType = 'aws_sagemaker_image_version';

  AwsSagemakerImageVersion({
    required super.localName,
    TfArg<List<String>>? aliases,
    required TfArg<String> baseImage,
    TfArg<bool>? horovod,
    required TfArg<String> imageName,
    TfArg<SagemakerImageVersionJobType>? jobType,
    TfArg<String>? mlFramework,
    TfArg<SagemakerImageVersionProcessor>? processor,
    TfArg<String>? programmingLang,
    TfArg<String>? region,
    TfArg<String>? releaseNotes,
    TfArg<SagemakerImageVersionVendorGuidance>? vendorGuidance,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (aliases != null) 'aliases': aliases,
           'base_image': baseImage,
           if (horovod != null) 'horovod': horovod,
           'image_name': imageName,
           if (jobType != null) 'job_type': jobType,
           if (mlFramework != null) 'ml_framework': mlFramework,
           if (processor != null) 'processor': processor,
           if (programmingLang != null) 'programming_lang': programmingLang,
           if (region != null) 'region': region,
           if (releaseNotes != null) 'release_notes': releaseNotes,
           if (vendorGuidance != null) 'vendor_guidance': vendorGuidance,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerImageVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerImageVersion>`.
  RefTo<AwsSagemakerImageVersion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `container_image` attribute.
  TfRef<String> get containerImage =>
      TfRef.attribute<String>(this, 'container_image');

  /// Reference to `image_arn` attribute.
  TfRef<String> get imageArn => TfRef.attribute<String>(this, 'image_arn');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
