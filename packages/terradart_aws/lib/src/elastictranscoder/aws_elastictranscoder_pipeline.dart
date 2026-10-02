// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_elastictranscoder_pipeline`.
const Set<String> _awsElastictranscoderPipelineSensitive = <String>{};

/// Typed helper for the `content_config` block of
/// `aws_elastictranscoder_pipeline` (derived from provider schema).
@immutable
final class ElastictranscoderPipelineContentConfig {
  const ElastictranscoderPipelineContentConfig({
    this.bucket,
    this.storageClass,
  });

  final RefTo<AwsS3Bucket>? bucket;

  final ElastictranscoderPipelineStorageClass? storageClass;

  @internal
  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('id').toTfJson(),
    'storage_class': ?storageClass?.toTfJson(),
  };
}

/// `storage_class` — derived from the provider schema description.
extension type const ElastictranscoderPipelineStorageClass._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPipelineStorageClass.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPipelineStorageClass.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPipelineStorageClass.arg(TfArg<String> arg)
    : this._(arg);

  static const standard = ElastictranscoderPipelineStorageClass._(
    TfArgLiteral('Standard'),
  );
  static const reducedredundancy = ElastictranscoderPipelineStorageClass._(
    TfArgLiteral('ReducedRedundancy'),
  );

  static const List<ElastictranscoderPipelineStorageClass> values = [
    standard,
    reducedredundancy,
  ];
}

/// Typed helper for the `content_config_permissions` block of
/// `aws_elastictranscoder_pipeline` (derived from provider schema).
@immutable
final class ElastictranscoderPipelineContentConfigPermissions {
  const ElastictranscoderPipelineContentConfigPermissions({
    this.access,
    this.grantee,
    this.granteeType,
  });

  final List<ElastictranscoderPipelineAccess>? access;

  final TfArg<String>? grantee;

  final ElastictranscoderPipelineGranteeType? granteeType;

  @internal
  Map<String, Object?> encode() => {
    if (access != null) 'access': [for (final e in access!) e.toTfJson()],
    'grantee': ?grantee?.toTfJson(),
    'grantee_type': ?granteeType?.toTfJson(),
  };
}

/// `access` — derived from the provider schema description.
extension type const ElastictranscoderPipelineAccess._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPipelineAccess.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPipelineAccess.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPipelineAccess.arg(TfArg<String> arg) : this._(arg);

  static const read = ElastictranscoderPipelineAccess._(TfArgLiteral('Read'));
  static const readacp = ElastictranscoderPipelineAccess._(
    TfArgLiteral('ReadAcp'),
  );
  static const writeacp = ElastictranscoderPipelineAccess._(
    TfArgLiteral('WriteAcp'),
  );
  static const fullcontrol = ElastictranscoderPipelineAccess._(
    TfArgLiteral('FullControl'),
  );

  static const List<ElastictranscoderPipelineAccess> values = [
    read,
    readacp,
    writeacp,
    fullcontrol,
  ];
}

/// `grantee_type` — derived from the provider schema description.
extension type const ElastictranscoderPipelineGranteeType._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPipelineGranteeType.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPipelineGranteeType.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPipelineGranteeType.arg(TfArg<String> arg)
    : this._(arg);

  static const canonical = ElastictranscoderPipelineGranteeType._(
    TfArgLiteral('Canonical'),
  );
  static const email = ElastictranscoderPipelineGranteeType._(
    TfArgLiteral('Email'),
  );
  static const group = ElastictranscoderPipelineGranteeType._(
    TfArgLiteral('Group'),
  );

  static const List<ElastictranscoderPipelineGranteeType> values = [
    canonical,
    email,
    group,
  ];
}

/// Typed helper for the `notifications` block of
/// `aws_elastictranscoder_pipeline` (derived from provider schema).
@immutable
final class ElastictranscoderPipelineNotifications {
  const ElastictranscoderPipelineNotifications({
    this.completed,
    this.error,
    this.progressing,
    this.warning,
  });

  final TfArg<String>? completed;

  final TfArg<String>? error;

  final TfArg<String>? progressing;

  final TfArg<String>? warning;

  @internal
  Map<String, Object?> encode() => {
    'completed': ?completed?.toTfJson(),
    'error': ?error?.toTfJson(),
    'progressing': ?progressing?.toTfJson(),
    'warning': ?warning?.toTfJson(),
  };
}

/// Typed helper for the `thumbnail_config` block of
/// `aws_elastictranscoder_pipeline` (derived from provider schema).
@immutable
final class ElastictranscoderPipelineThumbnailConfig {
  const ElastictranscoderPipelineThumbnailConfig({
    this.bucket,
    this.storageClass,
  });

  final RefTo<AwsS3Bucket>? bucket;

  final ElastictranscoderPipelineStorageClass? storageClass;

  @internal
  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('id').toTfJson(),
    'storage_class': ?storageClass?.toTfJson(),
  };
}

/// Typed helper for the `thumbnail_config_permissions` block of
/// `aws_elastictranscoder_pipeline` (derived from provider schema).
@immutable
final class ElastictranscoderPipelineThumbnailConfigPermissions {
  const ElastictranscoderPipelineThumbnailConfigPermissions({
    this.access,
    this.grantee,
    this.granteeType,
  });

  final List<ElastictranscoderPipelineAccess>? access;

  final TfArg<String>? grantee;

  final ElastictranscoderPipelineGranteeType? granteeType;

  @internal
  Map<String, Object?> encode() => {
    if (access != null) 'access': [for (final e in access!) e.toTfJson()],
    'grantee': ?grantee?.toTfJson(),
    'grantee_type': ?granteeType?.toTfJson(),
  };
}

/// Factory wrapper for `aws_elastictranscoder_pipeline`.
final class AwsElastictranscoderPipeline extends Resource {
  static const String tfType = 'aws_elastictranscoder_pipeline';

  AwsElastictranscoderPipeline(
    super.localName, {
    TfArg<String>? awsKmsKeyArn,
    required TfArg<String> inputBucket,
    TfArg<String>? name,
    TfArg<String>? outputBucket,
    TfArg<String>? region,
    required RefTo<AwsIamRole> role,
    ElastictranscoderPipelineContentConfig? contentConfig,
    List<ElastictranscoderPipelineContentConfigPermissions>?
    contentConfigPermissions,
    ElastictranscoderPipelineNotifications? notifications,
    ElastictranscoderPipelineThumbnailConfig? thumbnailConfig,
    List<ElastictranscoderPipelineThumbnailConfigPermissions>?
    thumbnailConfigPermissions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_kms_key_arn': ?awsKmsKeyArn,
           'input_bucket': inputBucket,
           'name': ?name,
           'output_bucket': ?outputBucket,
           'region': ?region,
           'role': role.encodeAs('arn'),
           if (contentConfig != null)
             'content_config': TfArg.literal(contentConfig.encode()),
           if (contentConfigPermissions != null)
             'content_config_permissions': TfArg.literal([
               for (final e in contentConfigPermissions) e.encode(),
             ]),
           if (notifications != null)
             'notifications': TfArg.literal(notifications.encode()),
           if (thumbnailConfig != null)
             'thumbnail_config': TfArg.literal(thumbnailConfig.encode()),
           if (thumbnailConfigPermissions != null)
             'thumbnail_config_permissions': TfArg.literal([
               for (final e in thumbnailConfigPermissions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElastictranscoderPipelineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElastictranscoderPipeline>`.
  RefTo<AwsElastictranscoderPipeline> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_kms_key_arn` attribute.
  TfRef<String> get awsKmsKeyArn =>
      TfRef.attribute<String>(this, 'aws_kms_key_arn');

  /// Reference to `input_bucket` attribute.
  TfRef<String> get inputBucket =>
      TfRef.attribute<String>(this, 'input_bucket');

  /// Reference to `output_bucket` attribute.
  TfRef<String> get outputBucket =>
      TfRef.attribute<String>(this, 'output_bucket');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
