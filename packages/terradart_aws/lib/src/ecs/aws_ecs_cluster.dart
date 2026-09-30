// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_ecs_cluster`.
const Set<String> _awsEcsClusterSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_ecs_cluster` (derived from provider schema).
@immutable
final class EcsClusterConfiguration {
  const EcsClusterConfiguration({
    this.executeCommandConfiguration,
    this.managedStorageConfiguration,
  });

  final EcsClusterExecuteCommandConfiguration? executeCommandConfiguration;

  final EcsClusterManagedStorageConfiguration? managedStorageConfiguration;

  Map<String, Object?> encode() => {
    'execute_command_configuration': ?executeCommandConfiguration?.encode(),
    'managed_storage_configuration': ?managedStorageConfiguration?.encode(),
  };
}

/// Typed helper for the `configuration.execute_command_configuration` block of
/// `aws_ecs_cluster` (derived from provider schema).
@immutable
final class EcsClusterExecuteCommandConfiguration {
  const EcsClusterExecuteCommandConfiguration({
    this.kmsKeyId,
    this.logging,
    this.logConfiguration,
  });

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<EcsClusterLogging>? logging;

  final EcsClusterLogConfiguration? logConfiguration;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'logging': ?logging?.toTfJson(),
    'log_configuration': ?logConfiguration?.encode(),
  };
}

/// `logging` — derived from the provider schema description.
enum EcsClusterLogging implements TerraformEnum {
  none('NONE'),
  defaultCase('DEFAULT'),
  overrideCase('OVERRIDE');

  const EcsClusterLogging(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration.execute_command_configuration.log_configuration` block of
/// `aws_ecs_cluster` (derived from provider schema).
@immutable
final class EcsClusterLogConfiguration {
  const EcsClusterLogConfiguration({
    this.cloudWatchEncryptionEnabled,
    this.cloudWatchLogGroupName,
    this.s3BucketEncryptionEnabled,
    this.s3BucketName,
    this.s3KeyPrefix,
  });

  final TfArg<bool>? cloudWatchEncryptionEnabled;

  final TfArg<String>? cloudWatchLogGroupName;

  final TfArg<bool>? s3BucketEncryptionEnabled;

  final RefTo<AwsS3Bucket>? s3BucketName;

  final TfArg<String>? s3KeyPrefix;

  Map<String, Object?> encode() => {
    'cloud_watch_encryption_enabled': ?cloudWatchEncryptionEnabled?.toTfJson(),
    'cloud_watch_log_group_name': ?cloudWatchLogGroupName?.toTfJson(),
    's3_bucket_encryption_enabled': ?s3BucketEncryptionEnabled?.toTfJson(),
    's3_bucket_name': ?s3BucketName?.encodeAs('id').toTfJson(),
    's3_key_prefix': ?s3KeyPrefix?.toTfJson(),
  };
}

/// Typed helper for the `configuration.managed_storage_configuration` block of
/// `aws_ecs_cluster` (derived from provider schema).
@immutable
final class EcsClusterManagedStorageConfiguration {
  const EcsClusterManagedStorageConfiguration({
    this.fargateEphemeralStorageKmsKeyId,
    this.kmsKeyId,
  });

  final TfArg<String>? fargateEphemeralStorageKmsKeyId;

  final RefTo<AwsKmsKey>? kmsKeyId;

  Map<String, Object?> encode() => {
    'fargate_ephemeral_storage_kms_key_id': ?fargateEphemeralStorageKmsKeyId
        ?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `service_connect_defaults` block of
/// `aws_ecs_cluster` (derived from provider schema).
@immutable
final class EcsClusterServiceConnectDefaults {
  const EcsClusterServiceConnectDefaults({required this.namespace});

  final TfArg<String> namespace;

  Map<String, Object?> encode() => {'namespace': namespace.toTfJson()};
}

/// Typed helper for the `setting` block of
/// `aws_ecs_cluster` (derived from provider schema).
@immutable
final class EcsClusterSetting {
  const EcsClusterSetting({required this.name, required this.value});

  final TfArg<EcsClusterSettingName> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
enum EcsClusterSettingName implements TerraformEnum {
  containerinsights('containerInsights');

  const EcsClusterSettingName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ecs_cluster`.
final class AwsEcsCluster extends Resource {
  static const String tfType = 'aws_ecs_cluster';

  AwsEcsCluster({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    EcsClusterConfiguration? configuration,
    EcsClusterServiceConnectDefaults? serviceConnectDefaults,
    List<EcsClusterSetting>? setting,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
           if (serviceConnectDefaults != null)
             'service_connect_defaults': TfArg.literal(
               serviceConnectDefaults.encode(),
             ),
           if (setting != null)
             'setting': TfArg.literal([for (final e in setting) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcsCluster>`.
  RefTo<AwsEcsCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
