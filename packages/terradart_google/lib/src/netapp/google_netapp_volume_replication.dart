// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_volume_replication`.
const Set<String> _googleNetappVolumeReplicationSensitive = <String>{};

/// Netapp Volume Replication Replication enum for `replication_schedule`.
enum NetappVolumeReplicationReplicationSchedule implements TerraformEnum {
  every10Minutes('EVERY_10_MINUTES'),
  hourly('HOURLY'),
  daily('DAILY');

  const NetappVolumeReplicationReplicationSchedule(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_volume_parameters` block of
/// `google_netapp_volume_replication` (derived from provider schema).
@immutable
final class NetappVolumeReplicationDestinationVolumeParameters {
  const NetappVolumeReplicationDestinationVolumeParameters({
    this.description,
    this.shareName,
    required this.storagePool,
    this.volumeId,
    this.tieringPolicy,
  });

  final TfArg<String>? description;

  final TfArg<String>? shareName;

  final TfArg<String> storagePool;

  final TfArg<String>? volumeId;

  final NetappVolumeReplicationDestinationVolumeParametersTieringPolicy?
  tieringPolicy;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (shareName != null) 'share_name': shareName!.toTfJson(),
    'storage_pool': storagePool.toTfJson(),
    if (volumeId != null) 'volume_id': volumeId!.toTfJson(),
    if (tieringPolicy != null) 'tiering_policy': tieringPolicy!.encode(),
  };
}

/// Typed helper for the `destination_volume_parameters.tiering_policy` block of
/// `google_netapp_volume_replication` (derived from provider schema).
@immutable
final class NetappVolumeReplicationDestinationVolumeParametersTieringPolicy {
  const NetappVolumeReplicationDestinationVolumeParametersTieringPolicy({
    this.coolingThresholdDays,
    this.tierAction,
  });

  final TfArg<num>? coolingThresholdDays;

  final TfArg<
    NetappVolumeReplicationDestinationVolumeParametersTieringPolicyTierAction
  >?
  tierAction;

  Map<String, Object?> encode() => {
    if (coolingThresholdDays != null)
      'cooling_threshold_days': coolingThresholdDays!.toTfJson(),
    if (tierAction != null) 'tier_action': tierAction!.toTfJson(),
  };
}

/// `tier_action` — derived from the provider schema description.
enum NetappVolumeReplicationDestinationVolumeParametersTieringPolicyTierAction
    implements TerraformEnum {
  enabled('ENABLED'),
  paused('PAUSED');

  const NetappVolumeReplicationDestinationVolumeParametersTieringPolicyTierAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_netapp_volume_replication`.
///
/// Volume replication creates an asynchronous mirror of a volume in a different
/// location. This capability lets you use the replicated volume for critical
/// application activity in case of a location-wide outage or disaster.
///
/// A new destination volume is created as part of the replication resource.
/// It's content is updated on a schedule with content of the source volume. It
/// can be used as a read-only copy while the mirror is enabled, or as an
/// independent read-write volume while the mirror is stopped. A destination
/// volume will also contain the snapshots of the source volume. Resuming a
/// mirror will overwrite all changes on the destination volume with the content
/// of the source volume. While is mirror is enabled, all configuration changes
/// done to source or destination volumes are automatically done to both. Please
/// note that the destination volume is not a resource managed by Terraform.
///
/// Reversing the replication direction is not supported through the provider.
///
/// NetApp Volumes **volume replication** (cross-zone / hybrid mirror).
///
/// **Cost / apply:** Inter Zone Replication Usage Iowa SKU `1432-4402-7168`
/// **$0.11/GiBy** and External Replication Usage `832F-38DB-A8C1`
/// **$0.11/GiBy** (service `FC86-5113-7C81`), plus destination volume
/// capacity on a never_apply [GoogleNetappStoragePool]. Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleNetappVolumeReplication extends Resource {
  static const String tfType = 'google_netapp_volume_replication';

  GoogleNetappVolumeReplication({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> volumeName,
    required TfArg<NetappVolumeReplicationReplicationSchedule>
    replicationSchedule,
    NetappVolumeReplicationDestinationVolumeParameters?
    destinationVolumeParameters,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? replicationEnabled,
    TfArg<bool>? waitForMirror,
    TfArg<bool>? forceStopping,
    TfArg<bool>? deleteDestinationVolume,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'volume_name': volumeName,
           'replication_schedule': replicationSchedule,
           if (destinationVolumeParameters != null)
             'destination_volume_parameters': TfArg.literal(
               destinationVolumeParameters.encode(),
             ),
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (replicationEnabled != null)
             'replication_enabled': replicationEnabled,
           if (waitForMirror != null) 'wait_for_mirror': waitForMirror,
           if (forceStopping != null) 'force_stopping': forceStopping,
           if (deleteDestinationVolume != null)
             'delete_destination_volume': deleteDestinationVolume,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappVolumeReplicationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `destination_volume` attribute.
  TfRef<String> get destinationVolume =>
      TfRef.attribute<String>(this, 'destination_volume');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `healthy` attribute.
  TfRef<bool> get healthy => TfRef.attribute<bool>(this, 'healthy');

  /// Reference to `hybrid_peering_details` attribute.
  TfRef<List<Map<String, Object?>>> get hybridPeeringDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'hybrid_peering_details',
      );

  /// Reference to `hybrid_replication_type` attribute.
  TfRef<String> get hybridReplicationType =>
      TfRef.attribute<String>(this, 'hybrid_replication_type');

  /// Reference to `hybrid_replication_user_commands` attribute.
  TfRef<List<Map<String, Object?>>> get hybridReplicationUserCommands =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'hybrid_replication_user_commands',
      );

  /// Reference to `mirror_state` attribute.
  TfRef<String> get mirrorState =>
      TfRef.attribute<String>(this, 'mirror_state');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `source_volume` attribute.
  TfRef<String> get sourceVolume =>
      TfRef.attribute<String>(this, 'source_volume');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_details` attribute.
  TfRef<String> get stateDetails =>
      TfRef.attribute<String>(this, 'state_details');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `transfer_stats` attribute.
  TfRef<List<Map<String, Object?>>> get transferStats =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'transfer_stats');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `destination_volume` attribute.
  TfRef<String> get destinationVolumeRef =>
      TfRef.attribute<String>(this, 'destination_volume');
}
