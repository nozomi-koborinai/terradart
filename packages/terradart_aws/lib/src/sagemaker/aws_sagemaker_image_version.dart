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
           'aliases': ?aliases,
           'base_image': baseImage,
           'horovod': ?horovod,
           'image_name': imageName,
           'job_type': ?jobType,
           'ml_framework': ?mlFramework,
           'processor': ?processor,
           'programming_lang': ?programmingLang,
           'region': ?region,
           'release_notes': ?releaseNotes,
           'vendor_guidance': ?vendorGuidance,
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

  /// Reference to `aliases` attribute.
  TfRef<List<String>> get aliasesRef =>
      TfRef.attribute<List<String>>(this, 'aliases');

  /// Reference to `base_image` attribute.
  TfRef<String> get baseImageRef => TfRef.attribute<String>(this, 'base_image');

  /// Reference to `horovod` attribute.
  TfRef<bool> get horovodRef => TfRef.attribute<bool>(this, 'horovod');

  /// Reference to `image_name` attribute.
  TfRef<String> get imageNameRef => TfRef.attribute<String>(this, 'image_name');

  /// Reference to `job_type` attribute.
  TfRef<String> get jobTypeRef => TfRef.attribute<String>(this, 'job_type');

  /// Reference to `ml_framework` attribute.
  TfRef<String> get mlFrameworkRef =>
      TfRef.attribute<String>(this, 'ml_framework');

  /// Reference to `processor` attribute.
  TfRef<String> get processorRef => TfRef.attribute<String>(this, 'processor');

  /// Reference to `programming_lang` attribute.
  TfRef<String> get programmingLangRef =>
      TfRef.attribute<String>(this, 'programming_lang');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `release_notes` attribute.
  TfRef<String> get releaseNotesRef =>
      TfRef.attribute<String>(this, 'release_notes');

  /// Reference to `vendor_guidance` attribute.
  TfRef<String> get vendorGuidanceRef =>
      TfRef.attribute<String>(this, 'vendor_guidance');
}
