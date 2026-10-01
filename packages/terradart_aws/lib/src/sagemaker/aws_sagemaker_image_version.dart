// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_image_version`.
const Set<String> _awsSagemakerImageVersionSensitive = <String>{};

/// Sagemaker Image Version Job enum for `job_type`.
extension type const SagemakerImageVersionJobType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerImageVersionJobType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerImageVersionJobType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerImageVersionJobType.arg(TfArg<String> arg) : this._(arg);

  static const training = SagemakerImageVersionJobType._(
    TfArgLiteral('TRAINING'),
  );
  static const inference = SagemakerImageVersionJobType._(
    TfArgLiteral('INFERENCE'),
  );
  static const notebookKernel = SagemakerImageVersionJobType._(
    TfArgLiteral('NOTEBOOK_KERNEL'),
  );

  static const List<SagemakerImageVersionJobType> values = [
    training,
    inference,
    notebookKernel,
  ];
}

/// Sagemaker Image Version enum for `processor`.
extension type const SagemakerImageVersionProcessor._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerImageVersionProcessor.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerImageVersionProcessor.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerImageVersionProcessor.arg(TfArg<String> arg) : this._(arg);

  static const cpu = SagemakerImageVersionProcessor._(TfArgLiteral('CPU'));
  static const gpu = SagemakerImageVersionProcessor._(TfArgLiteral('GPU'));

  static const List<SagemakerImageVersionProcessor> values = [cpu, gpu];
}

/// Sagemaker Image Version Vendor enum for `vendor_guidance`.
extension type const SagemakerImageVersionVendorGuidance._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerImageVersionVendorGuidance.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerImageVersionVendorGuidance.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerImageVersionVendorGuidance.arg(TfArg<String> arg)
    : this._(arg);

  static const notProvided = SagemakerImageVersionVendorGuidance._(
    TfArgLiteral('NOT_PROVIDED'),
  );
  static const stable = SagemakerImageVersionVendorGuidance._(
    TfArgLiteral('STABLE'),
  );
  static const toBeArchived = SagemakerImageVersionVendorGuidance._(
    TfArgLiteral('TO_BE_ARCHIVED'),
  );
  static const archived = SagemakerImageVersionVendorGuidance._(
    TfArgLiteral('ARCHIVED'),
  );

  static const List<SagemakerImageVersionVendorGuidance> values = [
    notProvided,
    stable,
    toBeArchived,
    archived,
  ];
}

/// Factory wrapper for `aws_sagemaker_image_version`.
final class AwsSagemakerImageVersion extends Resource {
  static const String tfType = 'aws_sagemaker_image_version';

  AwsSagemakerImageVersion(
    super.localName, {
    TfArg<List<String>>? aliases,
    required TfArg<String> baseImage,
    TfArg<bool>? horovod,
    required TfArg<String> imageName,
    SagemakerImageVersionJobType? jobType,
    TfArg<String>? mlFramework,
    SagemakerImageVersionProcessor? processor,
    TfArg<String>? programmingLang,
    TfArg<String>? region,
    TfArg<String>? releaseNotes,
    SagemakerImageVersionVendorGuidance? vendorGuidance,
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
  TfRef<List<String>> get aliases =>
      TfRef.attribute<List<String>>(this, 'aliases');

  /// Reference to `base_image` attribute.
  TfRef<String> get baseImage => TfRef.attribute<String>(this, 'base_image');

  /// Reference to `horovod` attribute.
  TfRef<bool> get horovod => TfRef.attribute<bool>(this, 'horovod');

  /// Reference to `image_name` attribute.
  TfRef<String> get imageName => TfRef.attribute<String>(this, 'image_name');

  /// Reference to `job_type` attribute.
  TfRef<String> get jobType => TfRef.attribute<String>(this, 'job_type');

  /// Reference to `ml_framework` attribute.
  TfRef<String> get mlFramework =>
      TfRef.attribute<String>(this, 'ml_framework');

  /// Reference to `processor` attribute.
  TfRef<String> get processor => TfRef.attribute<String>(this, 'processor');

  /// Reference to `programming_lang` attribute.
  TfRef<String> get programmingLang =>
      TfRef.attribute<String>(this, 'programming_lang');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `release_notes` attribute.
  TfRef<String> get releaseNotes =>
      TfRef.attribute<String>(this, 'release_notes');

  /// Reference to `vendor_guidance` attribute.
  TfRef<String> get vendorGuidance =>
      TfRef.attribute<String>(this, 'vendor_guidance');
}
