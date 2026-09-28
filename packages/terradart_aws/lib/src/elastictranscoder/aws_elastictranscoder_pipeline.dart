// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? bucket;

  final TfArg<ElastictranscoderPipelineContentConfigStorageClass>? storageClass;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.toTfJson(),
    if (storageClass != null) 'storage_class': storageClass!.toTfJson(),
  };
}

/// `storage_class` — derived from the provider schema description.
enum ElastictranscoderPipelineContentConfigStorageClass
    implements TerraformEnum {
  standard('Standard'),
  reducedredundancy('ReducedRedundancy');

  const ElastictranscoderPipelineContentConfigStorageClass(this.terraformValue);
  @override
  final String terraformValue;
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

  final List<TfArg<ElastictranscoderPipelineContentConfigPermissionsAccess>>?
  access;

  final TfArg<String>? grantee;

  final TfArg<ElastictranscoderPipelineContentConfigPermissionsGranteeType>?
  granteeType;

  Map<String, Object?> encode() => {
    if (access != null) 'access': [for (final e in access!) e.toTfJson()],
    if (grantee != null) 'grantee': grantee!.toTfJson(),
    if (granteeType != null) 'grantee_type': granteeType!.toTfJson(),
  };
}

/// `access` — derived from the provider schema description.
enum ElastictranscoderPipelineContentConfigPermissionsAccess
    implements TerraformEnum {
  read('Read'),
  readacp('ReadAcp'),
  writeacp('WriteAcp'),
  fullcontrol('FullControl');

  const ElastictranscoderPipelineContentConfigPermissionsAccess(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grantee_type` — derived from the provider schema description.
enum ElastictranscoderPipelineContentConfigPermissionsGranteeType
    implements TerraformEnum {
  canonical('Canonical'),
  email('Email'),
  group('Group');

  const ElastictranscoderPipelineContentConfigPermissionsGranteeType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  Map<String, Object?> encode() => {
    if (completed != null) 'completed': completed!.toTfJson(),
    if (error != null) 'error': error!.toTfJson(),
    if (progressing != null) 'progressing': progressing!.toTfJson(),
    if (warning != null) 'warning': warning!.toTfJson(),
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

  final TfArg<String>? bucket;

  final TfArg<ElastictranscoderPipelineThumbnailConfigStorageClass>?
  storageClass;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.toTfJson(),
    if (storageClass != null) 'storage_class': storageClass!.toTfJson(),
  };
}

/// `storage_class` — derived from the provider schema description.
enum ElastictranscoderPipelineThumbnailConfigStorageClass
    implements TerraformEnum {
  standard('Standard'),
  reducedredundancy('ReducedRedundancy');

  const ElastictranscoderPipelineThumbnailConfigStorageClass(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final List<TfArg<ElastictranscoderPipelineThumbnailConfigPermissionsAccess>>?
  access;

  final TfArg<String>? grantee;

  final TfArg<ElastictranscoderPipelineThumbnailConfigPermissionsGranteeType>?
  granteeType;

  Map<String, Object?> encode() => {
    if (access != null) 'access': [for (final e in access!) e.toTfJson()],
    if (grantee != null) 'grantee': grantee!.toTfJson(),
    if (granteeType != null) 'grantee_type': granteeType!.toTfJson(),
  };
}

/// `access` — derived from the provider schema description.
enum ElastictranscoderPipelineThumbnailConfigPermissionsAccess
    implements TerraformEnum {
  read('Read'),
  readacp('ReadAcp'),
  writeacp('WriteAcp'),
  fullcontrol('FullControl');

  const ElastictranscoderPipelineThumbnailConfigPermissionsAccess(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grantee_type` — derived from the provider schema description.
enum ElastictranscoderPipelineThumbnailConfigPermissionsGranteeType
    implements TerraformEnum {
  canonical('Canonical'),
  email('Email'),
  group('Group');

  const ElastictranscoderPipelineThumbnailConfigPermissionsGranteeType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_elastictranscoder_pipeline`.
final class AwsElastictranscoderPipeline extends Resource {
  static const String tfType = 'aws_elastictranscoder_pipeline';

  AwsElastictranscoderPipeline({
    required super.localName,
    TfArg<String>? awsKmsKeyArn,
    required TfArg<String> inputBucket,
    TfArg<String>? name,
    TfArg<String>? outputBucket,
    TfArg<String>? region,
    required TfArg<String> role,
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
           if (awsKmsKeyArn != null) 'aws_kms_key_arn': awsKmsKeyArn,
           'input_bucket': inputBucket,
           if (name != null) 'name': name,
           if (outputBucket != null) 'output_bucket': outputBucket,
           if (region != null) 'region': region,
           'role': role,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
