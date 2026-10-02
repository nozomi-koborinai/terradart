// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_m2_environment`.
const Set<String> _awsM2EnvironmentSensitive = <String>{};

/// M2 Environment Engine enum for `engine_type`.
extension type const M2EnvironmentEngineType._(TfArg<String> _)
    implements TfArg<String> {
  M2EnvironmentEngineType.variable(String name) : this._(TfArg.variable(name));
  M2EnvironmentEngineType.expression(String template)
    : this._(TfArg.expression(template));
  const M2EnvironmentEngineType.arg(TfArg<String> arg) : this._(arg);

  static const microfocus = M2EnvironmentEngineType._(
    TfArgLiteral('microfocus'),
  );
  static const bluage = M2EnvironmentEngineType._(TfArgLiteral('bluage'));

  static const List<M2EnvironmentEngineType> values = [microfocus, bluage];
}

/// Typed helper for the `high_availability_config` block of
/// `aws_m2_environment` (derived from provider schema).
@immutable
final class M2EnvironmentHighAvailabilityConfig {
  const M2EnvironmentHighAvailabilityConfig({required this.desiredCapacity});

  final TfArg<num> desiredCapacity;

  @internal
  Map<String, Object?> encode() => {
    'desired_capacity': desiredCapacity.toTfJson(),
  };
}

/// Exactly one of `efs`, `fsx` on the `storage_configuration` block of `aws_m2_environment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.efs(...)`.
sealed class M2EnvironmentStorageConfiguration {
  const M2EnvironmentStorageConfiguration();

  /// Sets `efs`.
  const factory M2EnvironmentStorageConfiguration.efs(
    List<M2EnvironmentEfs> efs,
  ) = M2EnvironmentStorageConfigurationEfs;

  /// Sets `fsx`.
  const factory M2EnvironmentStorageConfiguration.fsx(
    List<M2EnvironmentFsx> fsx,
  ) = M2EnvironmentStorageConfigurationFsx;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [M2EnvironmentStorageConfiguration.efs] choice: sets `efs`.
final class M2EnvironmentStorageConfigurationEfs
    extends M2EnvironmentStorageConfiguration {
  const M2EnvironmentStorageConfigurationEfs(this.efs);

  final List<M2EnvironmentEfs> efs;

  @internal
  @override
  String get blockKey => 'efs';

  @internal
  @override
  Map<String, Object?> encode() => {
    'efs': [for (final e in efs) e.encode()],
  };
}

/// The [M2EnvironmentStorageConfiguration.fsx] choice: sets `fsx`.
final class M2EnvironmentStorageConfigurationFsx
    extends M2EnvironmentStorageConfiguration {
  const M2EnvironmentStorageConfigurationFsx(this.fsx);

  final List<M2EnvironmentFsx> fsx;

  @internal
  @override
  String get blockKey => 'fsx';

  @internal
  @override
  Map<String, Object?> encode() => {
    'fsx': [for (final e in fsx) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.efs` block of
/// `aws_m2_environment` (derived from provider schema).
@immutable
final class M2EnvironmentEfs {
  const M2EnvironmentEfs({
    required this.fileSystemId,
    required this.mountPoint,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String> mountPoint;

  @internal
  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    'mount_point': mountPoint.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.fsx` block of
/// `aws_m2_environment` (derived from provider schema).
@immutable
final class M2EnvironmentFsx {
  const M2EnvironmentFsx({
    required this.fileSystemId,
    required this.mountPoint,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String> mountPoint;

  @internal
  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    'mount_point': mountPoint.toTfJson(),
  };
}

/// Factory wrapper for `aws_m2_environment`.
final class AwsM2Environment extends Resource {
  static const String tfType = 'aws_m2_environment';

  AwsM2Environment(
    super.localName, {
    TfArg<bool>? applyChangesDuringMaintenanceWindow,
    TfArg<String>? description,
    required M2EnvironmentEngineType engineType,
    TfArg<String>? engineVersion,
    TfArg<bool>? forceUpdate,
    required TfArg<String> instanceType,
    RefTo<AwsKmsKey>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    TfArg<List<RefTo<AwsSubnet>>>? subnetIds,
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
           'apply_changes_during_maintenance_window':
               ?applyChangesDuringMaintenanceWindow,
           'description': ?description,
           'engine_type': engineType,
           'engine_version': ?engineVersion,
           'force_update': ?forceUpdate,
           'instance_type': instanceType,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': name,
           'preferred_maintenance_window': ?preferredMaintenanceWindow,
           'publicly_accessible': ?publiclyAccessible,
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'subnet_ids': ?subnetIds?.encodeAs('id'),
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsM2Environment>`.
  RefTo<AwsM2Environment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `apply_changes_during_maintenance_window` attribute.
  TfRef<bool> get applyChangesDuringMaintenanceWindow =>
      TfRef.attribute<bool>(this, 'apply_changes_during_maintenance_window');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `engine_type` attribute.
  TfRef<String> get engineType => TfRef.attribute<String>(this, 'engine_type');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `force_update` attribute.
  TfRef<bool> get forceUpdate => TfRef.attribute<bool>(this, 'force_update');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `preferred_maintenance_window` attribute.
  TfRef<String> get preferredMaintenanceWindow =>
      TfRef.attribute<String>(this, 'preferred_maintenance_window');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
