// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_drs_replication_configuration_template`.
const Set<String> _awsDrsReplicationConfigurationTemplateSensitive = <String>{};

/// Drs Replication Configuration Template Data Plane enum for `data_plane_routing`.
extension type const DrsReplicationConfigurationTemplateDataPlaneRouting._(
  TfArg<String> _
) implements TfArg<String> {
  DrsReplicationConfigurationTemplateDataPlaneRouting.variable(String name)
    : this._(TfArg.variable(name));
  DrsReplicationConfigurationTemplateDataPlaneRouting.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DrsReplicationConfigurationTemplateDataPlaneRouting.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const privateIp =
      DrsReplicationConfigurationTemplateDataPlaneRouting._(
        TfArgLiteral('PRIVATE_IP'),
      );
  static const publicIp = DrsReplicationConfigurationTemplateDataPlaneRouting._(
    TfArgLiteral('PUBLIC_IP'),
  );

  static const List<DrsReplicationConfigurationTemplateDataPlaneRouting>
  values = [privateIp, publicIp];
}

/// Drs Replication Configuration Template Default Large Staging Disk enum for `default_large_staging_disk_type`.
extension type const DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType._(
  TfArg<String> _
) implements TfArg<String> {
  DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const gp2 =
      DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType._(
        TfArgLiteral('GP2'),
      );
  static const gp3 =
      DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType._(
        TfArgLiteral('GP3'),
      );
  static const st1 =
      DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType._(
        TfArgLiteral('ST1'),
      );
  static const auto =
      DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType._(
        TfArgLiteral('AUTO'),
      );

  static const List<
    DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType
  >
  values = [gp2, gp3, st1, auto];
}

/// Drs Replication Configuration Template Ebs enum for `ebs_encryption`.
extension type const DrsReplicationConfigurationTemplateEbsEncryption._(
  TfArg<String> _
) implements TfArg<String> {
  DrsReplicationConfigurationTemplateEbsEncryption.variable(String name)
    : this._(TfArg.variable(name));
  DrsReplicationConfigurationTemplateEbsEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const DrsReplicationConfigurationTemplateEbsEncryption.arg(TfArg<String> arg)
    : this._(arg);

  static const defaultCase = DrsReplicationConfigurationTemplateEbsEncryption._(
    TfArgLiteral('DEFAULT'),
  );
  static const custom = DrsReplicationConfigurationTemplateEbsEncryption._(
    TfArgLiteral('CUSTOM'),
  );
  static const none = DrsReplicationConfigurationTemplateEbsEncryption._(
    TfArgLiteral('NONE'),
  );

  static const List<DrsReplicationConfigurationTemplateEbsEncryption> values = [
    defaultCase,
    custom,
    none,
  ];
}

/// Typed helper for the `pit_policy` block of
/// `aws_drs_replication_configuration_template` (derived from provider schema).
@immutable
final class DrsReplicationConfigurationTemplatePitPolicy {
  const DrsReplicationConfigurationTemplatePitPolicy({
    this.enabled,
    required this.interval,
    required this.retentionDuration,
    this.ruleId,
    required this.units,
  });

  final TfArg<bool>? enabled;

  final TfArg<num> interval;

  final TfArg<num> retentionDuration;

  final TfArg<num>? ruleId;

  final DrsReplicationConfigurationTemplateUnits units;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'interval': interval.toTfJson(),
    'retention_duration': retentionDuration.toTfJson(),
    'rule_id': ?ruleId?.toTfJson(),
    'units': units.toTfJson(),
  };
}

/// `units` — derived from the provider schema description.
extension type const DrsReplicationConfigurationTemplateUnits._(TfArg<String> _)
    implements TfArg<String> {
  DrsReplicationConfigurationTemplateUnits.variable(String name)
    : this._(TfArg.variable(name));
  DrsReplicationConfigurationTemplateUnits.expression(String template)
    : this._(TfArg.expression(template));
  const DrsReplicationConfigurationTemplateUnits.arg(TfArg<String> arg)
    : this._(arg);

  static const minute = DrsReplicationConfigurationTemplateUnits._(
    TfArgLiteral('MINUTE'),
  );
  static const hour = DrsReplicationConfigurationTemplateUnits._(
    TfArgLiteral('HOUR'),
  );
  static const day = DrsReplicationConfigurationTemplateUnits._(
    TfArgLiteral('DAY'),
  );

  static const List<DrsReplicationConfigurationTemplateUnits> values = [
    minute,
    hour,
    day,
  ];
}

/// Factory wrapper for `aws_drs_replication_configuration_template`.
final class AwsDrsReplicationConfigurationTemplate extends Resource {
  static const String tfType = 'aws_drs_replication_configuration_template';

  AwsDrsReplicationConfigurationTemplate(
    super.localName, {
    required TfArg<bool> associateDefaultSecurityGroup,
    TfArg<bool>? autoReplicateNewDisks,
    required TfArg<num> bandwidthThrottling,
    required TfArg<bool> createPublicIp,
    required DrsReplicationConfigurationTemplateDataPlaneRouting
    dataPlaneRouting,
    required DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType
    defaultLargeStagingDiskType,
    required DrsReplicationConfigurationTemplateEbsEncryption ebsEncryption,
    TfArg<String>? ebsEncryptionKeyArn,
    TfArg<String>? region,
    required TfArg<String> replicationServerInstanceType,
    required TfArg<List<String>> replicationServersSecurityGroupsIds,
    required TfArg<String> stagingAreaSubnetId,
    required TfArg<Map<String, String>> stagingAreaTags,
    TfArg<Map<String, String>>? tags,
    required TfArg<bool> useDedicatedReplicationServer,
    List<DrsReplicationConfigurationTemplatePitPolicy>? pitPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'associate_default_security_group': associateDefaultSecurityGroup,
           'auto_replicate_new_disks': ?autoReplicateNewDisks,
           'bandwidth_throttling': bandwidthThrottling,
           'create_public_ip': createPublicIp,
           'data_plane_routing': dataPlaneRouting,
           'default_large_staging_disk_type': defaultLargeStagingDiskType,
           'ebs_encryption': ebsEncryption,
           'ebs_encryption_key_arn': ?ebsEncryptionKeyArn,
           'region': ?region,
           'replication_server_instance_type': replicationServerInstanceType,
           'replication_servers_security_groups_ids':
               replicationServersSecurityGroupsIds,
           'staging_area_subnet_id': stagingAreaSubnetId,
           'staging_area_tags': stagingAreaTags,
           'tags': ?tags,
           'use_dedicated_replication_server': useDedicatedReplicationServer,
           if (pitPolicy != null)
             'pit_policy': TfArg.literal([
               for (final e in pitPolicy) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDrsReplicationConfigurationTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDrsReplicationConfigurationTemplate>`.
  RefTo<AwsDrsReplicationConfigurationTemplate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `associate_default_security_group` attribute.
  TfRef<bool> get associateDefaultSecurityGroup =>
      TfRef.attribute<bool>(this, 'associate_default_security_group');

  /// Reference to `auto_replicate_new_disks` attribute.
  TfRef<bool> get autoReplicateNewDisks =>
      TfRef.attribute<bool>(this, 'auto_replicate_new_disks');

  /// Reference to `bandwidth_throttling` attribute.
  TfRef<num> get bandwidthThrottling =>
      TfRef.attribute<num>(this, 'bandwidth_throttling');

  /// Reference to `create_public_ip` attribute.
  TfRef<bool> get createPublicIp =>
      TfRef.attribute<bool>(this, 'create_public_ip');

  /// Reference to `data_plane_routing` attribute.
  TfRef<String> get dataPlaneRouting =>
      TfRef.attribute<String>(this, 'data_plane_routing');

  /// Reference to `default_large_staging_disk_type` attribute.
  TfRef<String> get defaultLargeStagingDiskType =>
      TfRef.attribute<String>(this, 'default_large_staging_disk_type');

  /// Reference to `ebs_encryption` attribute.
  TfRef<String> get ebsEncryption =>
      TfRef.attribute<String>(this, 'ebs_encryption');

  /// Reference to `ebs_encryption_key_arn` attribute.
  TfRef<String> get ebsEncryptionKeyArn =>
      TfRef.attribute<String>(this, 'ebs_encryption_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replication_server_instance_type` attribute.
  TfRef<String> get replicationServerInstanceType =>
      TfRef.attribute<String>(this, 'replication_server_instance_type');

  /// Reference to `replication_servers_security_groups_ids` attribute.
  TfRef<List<String>> get replicationServersSecurityGroupsIds =>
      TfRef.attribute<List<String>>(
        this,
        'replication_servers_security_groups_ids',
      );

  /// Reference to `staging_area_subnet_id` attribute.
  TfRef<String> get stagingAreaSubnetId =>
      TfRef.attribute<String>(this, 'staging_area_subnet_id');

  /// Reference to `staging_area_tags` attribute.
  TfRef<Map<String, String>> get stagingAreaTags =>
      TfRef.attribute<Map<String, String>>(this, 'staging_area_tags');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `use_dedicated_replication_server` attribute.
  TfRef<bool> get useDedicatedReplicationServer =>
      TfRef.attribute<bool>(this, 'use_dedicated_replication_server');
}
