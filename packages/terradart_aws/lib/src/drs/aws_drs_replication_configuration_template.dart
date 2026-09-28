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

  final TfArg<DrsReplicationConfigurationTemplatePitPolicyUnits> units;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'interval': interval.toTfJson(),
    'retention_duration': retentionDuration.toTfJson(),
    if (ruleId != null) 'rule_id': ruleId!.toTfJson(),
    'units': units.toTfJson(),
  };
}

/// `units` — derived from the provider schema description.
enum DrsReplicationConfigurationTemplatePitPolicyUnits
    implements TerraformEnum {
  minute('MINUTE'),
  hour('HOUR'),
  day('DAY');

  const DrsReplicationConfigurationTemplatePitPolicyUnits(this.terraformValue);
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
           if (autoReplicateNewDisks != null)
             'auto_replicate_new_disks': autoReplicateNewDisks,
           'bandwidth_throttling': bandwidthThrottling,
           'create_public_ip': createPublicIp,
           'data_plane_routing': dataPlaneRouting,
           'default_large_staging_disk_type': defaultLargeStagingDiskType,
           'ebs_encryption': ebsEncryption,
           if (ebsEncryptionKeyArn != null)
             'ebs_encryption_key_arn': ebsEncryptionKeyArn,
           if (region != null) 'region': region,
           'replication_server_instance_type': replicationServerInstanceType,
           'replication_servers_security_groups_ids':
               replicationServersSecurityGroupsIds,
           'staging_area_subnet_id': stagingAreaSubnetId,
           'staging_area_tags': stagingAreaTags,
           if (tags != null) 'tags': tags,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
