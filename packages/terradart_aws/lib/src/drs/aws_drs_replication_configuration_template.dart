// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_drs_replication_configuration_template`.
const Set<String> _awsDrsReplicationConfigurationTemplateSensitive = <String>{};

/// Drs Replication Configuration Template Data Plane enum for `data_plane_routing`.
enum DrsReplicationConfigurationTemplateDataPlaneRouting
    implements TerraformEnum {
  privateIp('PRIVATE_IP'),
  publicIp('PUBLIC_IP');

  const DrsReplicationConfigurationTemplateDataPlaneRouting(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Drs Replication Configuration Template Default Large Staging Disk enum for `default_large_staging_disk_type`.
enum DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType
    implements TerraformEnum {
  gp2('GP2'),
  gp3('GP3'),
  st1('ST1'),
  auto('AUTO');

  const DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Drs Replication Configuration Template Ebs enum for `ebs_encryption`.
enum DrsReplicationConfigurationTemplateEbsEncryption implements TerraformEnum {
  defaultCase('DEFAULT'),
  custom('CUSTOM'),
  none('NONE');

  const DrsReplicationConfigurationTemplateEbsEncryption(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<DrsReplicationConfigurationTemplateUnits> units;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'interval': interval.toTfJson(),
    'retention_duration': retentionDuration.toTfJson(),
    'rule_id': ?ruleId?.toTfJson(),
    'units': units.toTfJson(),
  };
}

/// `units` — derived from the provider schema description.
enum DrsReplicationConfigurationTemplateUnits implements TerraformEnum {
  minute('MINUTE'),
  hour('HOUR'),
  day('DAY');

  const DrsReplicationConfigurationTemplateUnits(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_drs_replication_configuration_template`.
final class AwsDrsReplicationConfigurationTemplate extends Resource {
  static const String tfType = 'aws_drs_replication_configuration_template';

  AwsDrsReplicationConfigurationTemplate({
    required super.localName,
    required TfArg<bool> associateDefaultSecurityGroup,
    TfArg<bool>? autoReplicateNewDisks,
    required TfArg<num> bandwidthThrottling,
    required TfArg<bool> createPublicIp,
    required TfArg<DrsReplicationConfigurationTemplateDataPlaneRouting>
    dataPlaneRouting,
    required TfArg<
      DrsReplicationConfigurationTemplateDefaultLargeStagingDiskType
    >
    defaultLargeStagingDiskType,
    required TfArg<DrsReplicationConfigurationTemplateEbsEncryption>
    ebsEncryption,
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
  TfRef<bool> get associateDefaultSecurityGroupRef =>
      TfRef.attribute<bool>(this, 'associate_default_security_group');

  /// Reference to `auto_replicate_new_disks` attribute.
  TfRef<bool> get autoReplicateNewDisksRef =>
      TfRef.attribute<bool>(this, 'auto_replicate_new_disks');

  /// Reference to `bandwidth_throttling` attribute.
  TfRef<num> get bandwidthThrottlingRef =>
      TfRef.attribute<num>(this, 'bandwidth_throttling');

  /// Reference to `create_public_ip` attribute.
  TfRef<bool> get createPublicIpRef =>
      TfRef.attribute<bool>(this, 'create_public_ip');

  /// Reference to `data_plane_routing` attribute.
  TfRef<String> get dataPlaneRoutingRef =>
      TfRef.attribute<String>(this, 'data_plane_routing');

  /// Reference to `default_large_staging_disk_type` attribute.
  TfRef<String> get defaultLargeStagingDiskTypeRef =>
      TfRef.attribute<String>(this, 'default_large_staging_disk_type');

  /// Reference to `ebs_encryption` attribute.
  TfRef<String> get ebsEncryptionRef =>
      TfRef.attribute<String>(this, 'ebs_encryption');

  /// Reference to `ebs_encryption_key_arn` attribute.
  TfRef<String> get ebsEncryptionKeyArnRef =>
      TfRef.attribute<String>(this, 'ebs_encryption_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `replication_server_instance_type` attribute.
  TfRef<String> get replicationServerInstanceTypeRef =>
      TfRef.attribute<String>(this, 'replication_server_instance_type');

  /// Reference to `replication_servers_security_groups_ids` attribute.
  TfRef<List<String>> get replicationServersSecurityGroupsIdsRef =>
      TfRef.attribute<List<String>>(
        this,
        'replication_servers_security_groups_ids',
      );

  /// Reference to `staging_area_subnet_id` attribute.
  TfRef<String> get stagingAreaSubnetIdRef =>
      TfRef.attribute<String>(this, 'staging_area_subnet_id');

  /// Reference to `staging_area_tags` attribute.
  TfRef<Map<String, String>> get stagingAreaTagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'staging_area_tags');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `use_dedicated_replication_server` attribute.
  TfRef<bool> get useDedicatedReplicationServerRef =>
      TfRef.attribute<bool>(this, 'use_dedicated_replication_server');
}
