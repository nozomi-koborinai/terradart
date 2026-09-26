// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_m2_environment`.
const Set<String> _awsM2EnvironmentSensitive = <String>{};

/// Typed helper for the `high_availability_config` block of
/// `aws_m2_environment` (derived from provider schema).
@immutable
final class M2EnvironmentHighAvailabilityConfig {
  const M2EnvironmentHighAvailabilityConfig({required this.desiredCapacity});

  final TfArg<num> desiredCapacity;

  Map<String, Object?> encode() => {
    'desired_capacity': desiredCapacity.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration` block of
/// `aws_m2_environment` (derived from provider schema).
@immutable
final class M2EnvironmentStorageConfiguration {
  const M2EnvironmentStorageConfiguration({this.efs, this.fsx});

  final List<M2EnvironmentStorageConfigurationEfs>? efs;

  final List<M2EnvironmentStorageConfigurationFsx>? fsx;

  Map<String, Object?> encode() => {
    if (efs != null) 'efs': [for (final e in efs!) e.encode()],
    if (fsx != null) 'fsx': [for (final e in fsx!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.efs` block of
/// `aws_m2_environment` (derived from provider schema).
@immutable
final class M2EnvironmentStorageConfigurationEfs {
  const M2EnvironmentStorageConfigurationEfs({
    required this.fileSystemId,
    required this.mountPoint,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String> mountPoint;

  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    'mount_point': mountPoint.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.fsx` block of
/// `aws_m2_environment` (derived from provider schema).
@immutable
final class M2EnvironmentStorageConfigurationFsx {
  const M2EnvironmentStorageConfigurationFsx({
    required this.fileSystemId,
    required this.mountPoint,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String> mountPoint;

  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    'mount_point': mountPoint.toTfJson(),
  };
}

/// Factory wrapper for `aws_m2_environment`.
final class AwsM2Environment extends Resource {
  static const String tfType = 'aws_m2_environment';

  AwsM2Environment({
    required super.localName,
    TfArg<bool>? applyChangesDuringMaintenanceWindow,
    TfArg<String>? description,
    required TfArg<String> engineType,
    TfArg<String>? engineVersion,
    TfArg<bool>? forceUpdate,
    required TfArg<String> instanceType,
    TfArg<String>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    TfArg<List<String>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    List<M2EnvironmentHighAvailabilityConfig>? highAvailabilityConfig,
    List<M2EnvironmentStorageConfiguration>? storageConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applyChangesDuringMaintenanceWindow != null)
             'apply_changes_during_maintenance_window':
                 applyChangesDuringMaintenanceWindow,
           if (description != null) 'description': description,
           'engine_type': engineType,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (forceUpdate != null) 'force_update': forceUpdate,
           'instance_type': instanceType,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (subnetIds != null) 'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           if (highAvailabilityConfig != null)
             'high_availability_config': TfArg.literal([
               for (final e in highAvailabilityConfig) e.encode(),
             ]),
           if (storageConfiguration != null)
             'storage_configuration': TfArg.literal([
               for (final e in storageConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsM2EnvironmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `load_balancer_arn` attribute.
  TfRef<String> get loadBalancerArn =>
      TfRef.attribute<String>(this, 'load_balancer_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
