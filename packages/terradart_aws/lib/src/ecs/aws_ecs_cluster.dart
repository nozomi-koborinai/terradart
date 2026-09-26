// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final EcsClusterConfigurationExecuteCommandConfiguration?
  executeCommandConfiguration;

  final EcsClusterConfigurationManagedStorageConfiguration?
  managedStorageConfiguration;

  Map<String, Object?> encode() => {
    if (executeCommandConfiguration != null)
      'execute_command_configuration': executeCommandConfiguration!.encode(),
    if (managedStorageConfiguration != null)
      'managed_storage_configuration': managedStorageConfiguration!.encode(),
  };
}

/// Typed helper for the `configuration.execute_command_configuration` block of
/// `aws_ecs_cluster` (derived from provider schema).
@immutable
final class EcsClusterConfigurationExecuteCommandConfiguration {
  const EcsClusterConfigurationExecuteCommandConfiguration({
    this.kmsKeyId,
    this.logging,
    this.logConfiguration,
  });

  final TfArg<String>? kmsKeyId;

  final TfArg<String>? logging;

  final EcsClusterConfigurationExecuteCommandConfigurationLogConfiguration?
  logConfiguration;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (logging != null) 'logging': logging!.toTfJson(),
    if (logConfiguration != null)
      'log_configuration': logConfiguration!.encode(),
  };
}

/// Typed helper for the `configuration.execute_command_configuration.log_configuration` block of
/// `aws_ecs_cluster` (derived from provider schema).
@immutable
final class EcsClusterConfigurationExecuteCommandConfigurationLogConfiguration {
  const EcsClusterConfigurationExecuteCommandConfigurationLogConfiguration({
    this.cloudWatchEncryptionEnabled,
    this.cloudWatchLogGroupName,
    this.s3BucketEncryptionEnabled,
    this.s3BucketName,
    this.s3KeyPrefix,
  });

  final TfArg<bool>? cloudWatchEncryptionEnabled;

  final TfArg<String>? cloudWatchLogGroupName;

  final TfArg<bool>? s3BucketEncryptionEnabled;

  final TfArg<String>? s3BucketName;

  final TfArg<String>? s3KeyPrefix;

  Map<String, Object?> encode() => {
    if (cloudWatchEncryptionEnabled != null)
      'cloud_watch_encryption_enabled': cloudWatchEncryptionEnabled!.toTfJson(),
    if (cloudWatchLogGroupName != null)
      'cloud_watch_log_group_name': cloudWatchLogGroupName!.toTfJson(),
    if (s3BucketEncryptionEnabled != null)
      's3_bucket_encryption_enabled': s3BucketEncryptionEnabled!.toTfJson(),
    if (s3BucketName != null) 's3_bucket_name': s3BucketName!.toTfJson(),
    if (s3KeyPrefix != null) 's3_key_prefix': s3KeyPrefix!.toTfJson(),
  };
}

/// Typed helper for the `configuration.managed_storage_configuration` block of
/// `aws_ecs_cluster` (derived from provider schema).
@immutable
final class EcsClusterConfigurationManagedStorageConfiguration {
  const EcsClusterConfigurationManagedStorageConfiguration({
    this.fargateEphemeralStorageKmsKeyId,
    this.kmsKeyId,
  });

  final TfArg<String>? fargateEphemeralStorageKmsKeyId;

  final TfArg<String>? kmsKeyId;

  Map<String, Object?> encode() => {
    if (fargateEphemeralStorageKmsKeyId != null)
      'fargate_ephemeral_storage_kms_key_id': fargateEphemeralStorageKmsKeyId!
          .toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
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

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
