// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_per_instance_config`.
const Set<String> _googleComputeRegionPerInstanceConfigSensitive = <String>{};

/// Typed helper for the `preserved_state` block of
/// `google_compute_region_per_instance_config` (derived from provider schema).
@immutable
final class ComputeRegionPerInstanceConfigPreservedState {
  const ComputeRegionPerInstanceConfigPreservedState({
    this.metadata,
    this.disk,
    this.externalIp,
    this.internalIp,
  });

  final TfArg<Map<String, String>>? metadata;

  final List<ComputeRegionPerInstanceConfigPreservedStateDisk>? disk;

  final List<ComputeRegionPerInstanceConfigPreservedStateExternalIp>?
  externalIp;

  final List<ComputeRegionPerInstanceConfigPreservedStateInternalIp>?
  internalIp;

  Map<String, Object?> encode() => {
    'metadata': ?metadata?.toTfJson(),
    if (disk != null) 'disk': [for (final e in disk!) e.encode()],
    if (externalIp != null)
      'external_ip': [for (final e in externalIp!) e.encode()],
    if (internalIp != null)
      'internal_ip': [for (final e in internalIp!) e.encode()],
  };
}

/// Typed helper for the `preserved_state.disk` block of
/// `google_compute_region_per_instance_config` (derived from provider schema).
@immutable
final class ComputeRegionPerInstanceConfigPreservedStateDisk {
  const ComputeRegionPerInstanceConfigPreservedStateDisk({
    this.deleteRule,
    required this.deviceName,
    this.mode,
    required this.source,
  });

  final TfArg<ComputeRegionPerInstanceConfigPreservedStateDiskDeleteRule>?
  deleteRule;

  final TfArg<String> deviceName;

  final TfArg<ComputeRegionPerInstanceConfigPreservedStateDiskMode>? mode;

  final TfArg<String> source;

  Map<String, Object?> encode() => {
    'delete_rule': ?deleteRule?.toTfJson(),
    'device_name': deviceName.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// `delete_rule` — derived from the provider schema description.
enum ComputeRegionPerInstanceConfigPreservedStateDiskDeleteRule
    implements TerraformEnum {
  never('NEVER'),
  onPermanentInstanceDeletion('ON_PERMANENT_INSTANCE_DELETION');

  const ComputeRegionPerInstanceConfigPreservedStateDiskDeleteRule(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `mode` — derived from the provider schema description.
enum ComputeRegionPerInstanceConfigPreservedStateDiskMode
    implements TerraformEnum {
  readOnly('READ_ONLY'),
  readWrite('READ_WRITE');

  const ComputeRegionPerInstanceConfigPreservedStateDiskMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `preserved_state.external_ip` block of
/// `google_compute_region_per_instance_config` (derived from provider schema).
@immutable
final class ComputeRegionPerInstanceConfigPreservedStateExternalIp {
  const ComputeRegionPerInstanceConfigPreservedStateExternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  final TfArg<ComputeRegionPerInstanceConfigPreservedStateExternalIpAutoDelete>?
  autoDelete;

  final TfArg<String> interfaceName;

  final ComputeRegionPerInstanceConfigPreservedStateExternalIpIpAddress?
  ipAddress;

  Map<String, Object?> encode() => {
    'auto_delete': ?autoDelete?.toTfJson(),
    'interface_name': interfaceName.toTfJson(),
    'ip_address': ?ipAddress?.encode(),
  };
}

/// `auto_delete` — derived from the provider schema description.
enum ComputeRegionPerInstanceConfigPreservedStateExternalIpAutoDelete
    implements TerraformEnum {
  never('NEVER'),
  onPermanentInstanceDeletion('ON_PERMANENT_INSTANCE_DELETION');

  const ComputeRegionPerInstanceConfigPreservedStateExternalIpAutoDelete(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `preserved_state.external_ip.ip_address` block of
/// `google_compute_region_per_instance_config` (derived from provider schema).
@immutable
final class ComputeRegionPerInstanceConfigPreservedStateExternalIpIpAddress {
  const ComputeRegionPerInstanceConfigPreservedStateExternalIpIpAddress({
    this.address,
  });

  final TfArg<String>? address;

  Map<String, Object?> encode() => {'address': ?address?.toTfJson()};
}

/// Typed helper for the `preserved_state.internal_ip` block of
/// `google_compute_region_per_instance_config` (derived from provider schema).
@immutable
final class ComputeRegionPerInstanceConfigPreservedStateInternalIp {
  const ComputeRegionPerInstanceConfigPreservedStateInternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  final TfArg<ComputeRegionPerInstanceConfigPreservedStateInternalIpAutoDelete>?
  autoDelete;

  final TfArg<String> interfaceName;

  final ComputeRegionPerInstanceConfigPreservedStateInternalIpIpAddress?
  ipAddress;

  Map<String, Object?> encode() => {
    'auto_delete': ?autoDelete?.toTfJson(),
    'interface_name': interfaceName.toTfJson(),
    'ip_address': ?ipAddress?.encode(),
  };
}

/// `auto_delete` — derived from the provider schema description.
enum ComputeRegionPerInstanceConfigPreservedStateInternalIpAutoDelete
    implements TerraformEnum {
  never('NEVER'),
  onPermanentInstanceDeletion('ON_PERMANENT_INSTANCE_DELETION');

  const ComputeRegionPerInstanceConfigPreservedStateInternalIpAutoDelete(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `preserved_state.internal_ip.ip_address` block of
/// `google_compute_region_per_instance_config` (derived from provider schema).
@immutable
final class ComputeRegionPerInstanceConfigPreservedStateInternalIpIpAddress {
  const ComputeRegionPerInstanceConfigPreservedStateInternalIpIpAddress({
    this.address,
  });

  final TfArg<String>? address;

  Map<String, Object?> encode() => {'address': ?address?.toTfJson()};
}

/// Factory wrapper for `google_compute_region_per_instance_config`.
///
/// A config defined for a single managed instance that belongs to an instance
/// group manager. It preserves the instance name across instance group manager
/// operations and can define stateful disks or metadata that are unique to the
/// instance. This resource works with regional instance group managers.
///
/// Stateful per-instance config on a regional
/// [GoogleComputeRegionInstanceGroupManager]. Regional sibling of
/// [GoogleComputePerInstanceConfig].
final class GoogleComputeRegionPerInstanceConfig extends Resource {
  static const String tfType = 'google_compute_region_per_instance_config';

  GoogleComputeRegionPerInstanceConfig({
    required super.localName,
    required TfArg<String> regionInstanceGroupManager,
    required TfArg<String> name,
    TfArg<String>? region,
    ComputeRegionPerInstanceConfigPreservedState? preservedState,
    TfArg<String>? minimalAction,
    TfArg<String>? mostDisruptiveAllowedAction,
    TfArg<bool>? removeInstanceOnDestroy,
    TfArg<bool>? removeInstanceStateOnDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region_instance_group_manager': regionInstanceGroupManager,
           'name': name,
           'region': ?region,
           if (preservedState != null)
             'preserved_state': TfArg.literal(preservedState.encode()),
           'minimal_action': ?minimalAction,
           'most_disruptive_allowed_action': ?mostDisruptiveAllowedAction,
           'remove_instance_on_destroy': ?removeInstanceOnDestroy,
           'remove_instance_state_on_destroy': ?removeInstanceStateOnDestroy,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionPerInstanceConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionPerInstanceConfig>`.
  RefTo<GoogleComputeRegionPerInstanceConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `minimal_action` attribute.
  TfRef<String> get minimalActionRef =>
      TfRef.attribute<String>(this, 'minimal_action');

  /// Reference to `most_disruptive_allowed_action` attribute.
  TfRef<String> get mostDisruptiveAllowedActionRef =>
      TfRef.attribute<String>(this, 'most_disruptive_allowed_action');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `region_instance_group_manager` attribute.
  TfRef<String> get regionInstanceGroupManagerRef =>
      TfRef.attribute<String>(this, 'region_instance_group_manager');

  /// Reference to `remove_instance_on_destroy` attribute.
  TfRef<bool> get removeInstanceOnDestroyRef =>
      TfRef.attribute<bool>(this, 'remove_instance_on_destroy');

  /// Reference to `remove_instance_state_on_destroy` attribute.
  TfRef<bool> get removeInstanceStateOnDestroyRef =>
      TfRef.attribute<bool>(this, 'remove_instance_state_on_destroy');
}
