// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_app`.
const Set<String> _awsSagemakerAppSensitive = <String>{};

/// Sagemaker App enum for `app_type`.
extension type const SagemakerAppType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAppType.variable(String name) : this._(TfArg.variable(name));
  SagemakerAppType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAppType.arg(TfArg<String> arg) : this._(arg);

  static const jupyterserver = SagemakerAppType._(
    TfArgLiteral('JupyterServer'),
  );
  static const kernelgateway = SagemakerAppType._(
    TfArgLiteral('KernelGateway'),
  );
  static const detailedprofiler = SagemakerAppType._(
    TfArgLiteral('DetailedProfiler'),
  );
  static const tensorboard = SagemakerAppType._(TfArgLiteral('TensorBoard'));
  static const codeeditor = SagemakerAppType._(TfArgLiteral('CodeEditor'));
  static const jupyterlab = SagemakerAppType._(TfArgLiteral('JupyterLab'));
  static const rstudioserverpro = SagemakerAppType._(
    TfArgLiteral('RStudioServerPro'),
  );
  static const rsessiongateway = SagemakerAppType._(
    TfArgLiteral('RSessionGateway'),
  );
  static const canvas = SagemakerAppType._(TfArgLiteral('Canvas'));

  static const List<SagemakerAppType> values = [
    jupyterserver,
    kernelgateway,
    detailedprofiler,
    tensorboard,
    codeeditor,
    jupyterlab,
    rstudioserverpro,
    rsessiongateway,
    canvas,
  ];
}

/// Exactly one of `space_name`, `user_profile_name` on `aws_sagemaker_app`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.spaceName(...)`.
sealed class SagemakerAppOwner {
  const SagemakerAppOwner();

  /// Sets `space_name`.
  const factory SagemakerAppOwner.spaceName(TfArg<String> spaceName) =
      SagemakerAppOwnerSpaceName;

  /// Sets `user_profile_name`.
  const factory SagemakerAppOwner.userProfileName(
    TfArg<String> userProfileName,
  ) = SagemakerAppOwnerUserProfileName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SagemakerAppOwner.spaceName] choice: sets `space_name`.
final class SagemakerAppOwnerSpaceName extends SagemakerAppOwner {
  const SagemakerAppOwnerSpaceName(this.spaceName);

  final TfArg<String> spaceName;

  @internal
  @override
  String get blockKey => 'space_name';

  @internal
  @override
  Map<String, Object?> encode() => {'space_name': spaceName.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'space_name': spaceName};
}

/// The [SagemakerAppOwner.userProfileName] choice: sets `user_profile_name`.
final class SagemakerAppOwnerUserProfileName extends SagemakerAppOwner {
  const SagemakerAppOwnerUserProfileName(this.userProfileName);

  final TfArg<String> userProfileName;

  @internal
  @override
  String get blockKey => 'user_profile_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'user_profile_name': userProfileName.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'user_profile_name': userProfileName,
  };
}

/// Typed helper for the `resource_spec` block of
/// `aws_sagemaker_app` (derived from provider schema).
@immutable
final class SagemakerAppResourceSpec {
  const SagemakerAppResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final SagemakerAppInstanceType? instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  @internal
  Map<String, Object?> encode() => {
    'instance_type': ?instanceType?.toTfJson(),
    'lifecycle_config_arn': ?lifecycleConfigArn?.toTfJson(),
    'sagemaker_image_arn': ?sagemakerImageArn?.toTfJson(),
    'sagemaker_image_version_alias': ?sagemakerImageVersionAlias?.toTfJson(),
    'sagemaker_image_version_arn': ?sagemakerImageVersionArn?.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
extension type const SagemakerAppInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAppInstanceType.variable(String name) : this._(TfArg.variable(name));
  SagemakerAppInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAppInstanceType.arg(TfArg<String> arg) : this._(arg);

  static const system = SagemakerAppInstanceType._(TfArgLiteral('system'));
  static const mlT3Micro = SagemakerAppInstanceType._(
    TfArgLiteral('ml.t3.micro'),
  );
  static const mlT3Small = SagemakerAppInstanceType._(
    TfArgLiteral('ml.t3.small'),
  );
  static const mlT3Medium = SagemakerAppInstanceType._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerAppInstanceType._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.t3.2xlarge'),
  );
  static const mlM5Large = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5.8xlarge'),
  );
  static const mlM5p12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5.16xlarge'),
  );
  static const mlM5p24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlM5dLarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5d.large'),
  );
  static const mlM5dXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5d.xlarge'),
  );
  static const mlM5d2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5d.2xlarge'),
  );
  static const mlM5d4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5d.4xlarge'),
  );
  static const mlM5d8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5d.8xlarge'),
  );
  static const mlM5d12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5d.12xlarge'),
  );
  static const mlM5d16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5d.16xlarge'),
  );
  static const mlM5d24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m5d.24xlarge'),
  );
  static const mlC5Large = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c5.large'),
  );
  static const mlC5Xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c5.12xlarge'),
  );
  static const mlC5p18xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5p24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c5.24xlarge'),
  );
  static const mlP3p2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlP3dn24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.p3dn.24xlarge'),
  );
  static const mlG4dnXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlR5Large = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r5.8xlarge'),
  );
  static const mlR5p12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r5.16xlarge'),
  );
  static const mlR5p24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlG5Xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlG6Xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlGeospatialInteractive = SagemakerAppInstanceType._(
    TfArgLiteral('ml.geospatial.interactive'),
  );
  static const mlP4d24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlP4de24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.p4de.24xlarge'),
  );
  static const mlTrn1p2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.trn1.2xlarge'),
  );
  static const mlTrn1p32xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.trn1.32xlarge'),
  );
  static const mlTrn1n32xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.trn1n.32xlarge'),
  );
  static const mlP5p48xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP5en48xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.p5en.48xlarge'),
  );
  static const mlP6B200p48xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.p6-b200.48xlarge'),
  );
  static const mlM6iLarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlM7iLarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC6iLarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6i.large'),
  );
  static const mlC6iXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlC7iLarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR6iLarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6i.large'),
  );
  static const mlR6iXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6i.xlarge'),
  );
  static const mlR6i2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6i.2xlarge'),
  );
  static const mlR6i4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6i.4xlarge'),
  );
  static const mlR6i8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6i.8xlarge'),
  );
  static const mlR6i12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6i.12xlarge'),
  );
  static const mlR6i16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6i.16xlarge'),
  );
  static const mlR6i24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6i.24xlarge'),
  );
  static const mlR6i32xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6i.32xlarge'),
  );
  static const mlR7iLarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlM6idLarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6id.large'),
  );
  static const mlM6idXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6id.xlarge'),
  );
  static const mlM6id2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6id.2xlarge'),
  );
  static const mlM6id4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6id.4xlarge'),
  );
  static const mlM6id8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6id.8xlarge'),
  );
  static const mlM6id12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6id.12xlarge'),
  );
  static const mlM6id16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6id.16xlarge'),
  );
  static const mlM6id24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6id.24xlarge'),
  );
  static const mlM6id32xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.m6id.32xlarge'),
  );
  static const mlC6idLarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6id.large'),
  );
  static const mlC6idXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6id.xlarge'),
  );
  static const mlC6id2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6id.2xlarge'),
  );
  static const mlC6id4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6id.4xlarge'),
  );
  static const mlC6id8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6id.8xlarge'),
  );
  static const mlC6id12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6id.12xlarge'),
  );
  static const mlC6id16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6id.16xlarge'),
  );
  static const mlC6id24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6id.24xlarge'),
  );
  static const mlC6id32xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.c6id.32xlarge'),
  );
  static const mlR6idLarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6id.large'),
  );
  static const mlR6idXlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6id.xlarge'),
  );
  static const mlR6id2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6id.2xlarge'),
  );
  static const mlR6id4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6id.4xlarge'),
  );
  static const mlR6id8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6id.8xlarge'),
  );
  static const mlR6id12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6id.12xlarge'),
  );
  static const mlR6id16xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6id.16xlarge'),
  );
  static const mlR6id24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6id.24xlarge'),
  );
  static const mlR6id32xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.r6id.32xlarge'),
  );
  static const mlP5p4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.p5.4xlarge'),
  );
  static const mlG7p2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7.48xlarge'),
  );
  static const mlG7e2xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerAppInstanceType._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );

  static const List<SagemakerAppInstanceType> values = [
    system,
    mlT3Micro,
    mlT3Small,
    mlT3Medium,
    mlT3Large,
    mlT3Xlarge,
    mlT3p2xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p8xlarge,
    mlM5p12xlarge,
    mlM5p16xlarge,
    mlM5p24xlarge,
    mlM5dLarge,
    mlM5dXlarge,
    mlM5d2xlarge,
    mlM5d4xlarge,
    mlM5d8xlarge,
    mlM5d12xlarge,
    mlM5d16xlarge,
    mlM5d24xlarge,
    mlC5Large,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p12xlarge,
    mlC5p18xlarge,
    mlC5p24xlarge,
    mlP3p2xlarge,
    mlP3p8xlarge,
    mlP3p16xlarge,
    mlP3dn24xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p8xlarge,
    mlR5p12xlarge,
    mlR5p16xlarge,
    mlR5p24xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p16xlarge,
    mlG5p12xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p12xlarge,
    mlG6p16xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e12xlarge,
    mlG6e16xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlGeospatialInteractive,
    mlP4d24xlarge,
    mlP4de24xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlTrn1n32xlarge,
    mlP5p48xlarge,
    mlP5en48xlarge,
    mlP6B200p48xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlM7iLarge,
    mlM7iXlarge,
    mlM7i2xlarge,
    mlM7i4xlarge,
    mlM7i8xlarge,
    mlM7i12xlarge,
    mlM7i16xlarge,
    mlM7i24xlarge,
    mlM7i48xlarge,
    mlC6iLarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i4xlarge,
    mlC6i8xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlC7iLarge,
    mlC7iXlarge,
    mlC7i2xlarge,
    mlC7i4xlarge,
    mlC7i8xlarge,
    mlC7i12xlarge,
    mlC7i16xlarge,
    mlC7i24xlarge,
    mlC7i48xlarge,
    mlR6iLarge,
    mlR6iXlarge,
    mlR6i2xlarge,
    mlR6i4xlarge,
    mlR6i8xlarge,
    mlR6i12xlarge,
    mlR6i16xlarge,
    mlR6i24xlarge,
    mlR6i32xlarge,
    mlR7iLarge,
    mlR7iXlarge,
    mlR7i2xlarge,
    mlR7i4xlarge,
    mlR7i8xlarge,
    mlR7i12xlarge,
    mlR7i16xlarge,
    mlR7i24xlarge,
    mlR7i48xlarge,
    mlM6idLarge,
    mlM6idXlarge,
    mlM6id2xlarge,
    mlM6id4xlarge,
    mlM6id8xlarge,
    mlM6id12xlarge,
    mlM6id16xlarge,
    mlM6id24xlarge,
    mlM6id32xlarge,
    mlC6idLarge,
    mlC6idXlarge,
    mlC6id2xlarge,
    mlC6id4xlarge,
    mlC6id8xlarge,
    mlC6id12xlarge,
    mlC6id16xlarge,
    mlC6id24xlarge,
    mlC6id32xlarge,
    mlR6idLarge,
    mlR6idXlarge,
    mlR6id2xlarge,
    mlR6id4xlarge,
    mlR6id8xlarge,
    mlR6id12xlarge,
    mlR6id16xlarge,
    mlR6id24xlarge,
    mlR6id32xlarge,
    mlP5p4xlarge,
    mlG7p2xlarge,
    mlG7p4xlarge,
    mlG7p8xlarge,
    mlG7p12xlarge,
    mlG7p24xlarge,
    mlG7p48xlarge,
    mlG7e2xlarge,
    mlG7e4xlarge,
    mlG7e8xlarge,
    mlG7e12xlarge,
    mlG7e24xlarge,
    mlG7e48xlarge,
  ];
}

/// Factory wrapper for `aws_sagemaker_app`.
final class AwsSagemakerApp extends Resource {
  static const String tfType = 'aws_sagemaker_app';

  AwsSagemakerApp(
    super.localName, {
    required TfArg<String> appName,
    required SagemakerAppType appType,
    required TfArg<String> domainId,
    TfArg<String>? region,
    required SagemakerAppOwner owner,
    TfArg<Map<String, String>>? tags,
    SagemakerAppResourceSpec? resourceSpec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_name': appName,
           'app_type': appType,
           'domain_id': domainId,
           'region': ?region,
           ...owner.argMap,
           'tags': ?tags,
           if (resourceSpec != null)
             'resource_spec': TfArg.literal(resourceSpec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerApp>`.
  RefTo<AwsSagemakerApp> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `app_name` attribute.
  TfRef<String> get appName => TfRef.attribute<String>(this, 'app_name');

  /// Reference to `app_type` attribute.
  TfRef<String> get appType => TfRef.attribute<String>(this, 'app_type');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `space_name` attribute.
  TfRef<String> get spaceName => TfRef.attribute<String>(this, 'space_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_profile_name` attribute.
  TfRef<String> get userProfileName =>
      TfRef.attribute<String>(this, 'user_profile_name');
}
