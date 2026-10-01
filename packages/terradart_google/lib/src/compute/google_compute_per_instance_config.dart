// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instance_group_manager.dart'
    show GoogleComputeInstanceGroupManager;

/// Sensitive field paths for `google_compute_per_instance_config`.
const Set<String> _googleComputePerInstanceConfigSensitive = <String>{};

/// Typed helper for the `preserved_state` block of
/// `google_compute_per_instance_config` (derived from provider schema).
@immutable
final class ComputePerInstanceConfigPreservedState {
  const ComputePerInstanceConfigPreservedState({
    this.metadata,
    this.disk,
    this.externalIp,
    this.internalIp,
  });

  final TfArg<Map<String, String>>? metadata;

  final List<ComputePerInstanceConfigDisk>? disk;

  final List<ComputePerInstanceConfigExternalIp>? externalIp;

  final List<ComputePerInstanceConfigInternalIp>? internalIp;

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
/// `google_compute_per_instance_config` (derived from provider schema).
@immutable
final class ComputePerInstanceConfigDisk {
  const ComputePerInstanceConfigDisk({
    this.deleteRule,
    required this.deviceName,
    this.mode,
    required this.source,
  });

  final TfArg<ComputePerInstanceConfigDeleteRule>? deleteRule;

  final TfArg<String> deviceName;

  final TfArg<ComputePerInstanceConfigMode>? mode;

  final TfArg<String> source;

  Map<String, Object?> encode() => {
    'delete_rule': ?deleteRule?.toTfJson(),
    'device_name': deviceName.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// `delete_rule` — derived from the provider schema description.
enum ComputePerInstanceConfigDeleteRule implements TerraformEnum {
  never('NEVER'),
  onPermanentInstanceDeletion('ON_PERMANENT_INSTANCE_DELETION');

  const ComputePerInstanceConfigDeleteRule(this.terraformValue);
  @override
  final String terraformValue;
}

/// `mode` — derived from the provider schema description.
enum ComputePerInstanceConfigMode implements TerraformEnum {
  readOnly('READ_ONLY'),
  readWrite('READ_WRITE');

  const ComputePerInstanceConfigMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `preserved_state.external_ip` block of
/// `google_compute_per_instance_config` (derived from provider schema).
@immutable
final class ComputePerInstanceConfigExternalIp {
  const ComputePerInstanceConfigExternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  final TfArg<ComputePerInstanceConfigAutoDelete>? autoDelete;

  final TfArg<String> interfaceName;

  final ComputePerInstanceConfigIpAddress? ipAddress;

  Map<String, Object?> encode() => {
    'auto_delete': ?autoDelete?.toTfJson(),
    'interface_name': interfaceName.toTfJson(),
    'ip_address': ?ipAddress?.encode(),
  };
}

/// `auto_delete` — derived from the provider schema description.
enum ComputePerInstanceConfigAutoDelete implements TerraformEnum {
  never('NEVER'),
  onPermanentInstanceDeletion('ON_PERMANENT_INSTANCE_DELETION');

  const ComputePerInstanceConfigAutoDelete(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `preserved_state.external_ip.ip_address` block of
/// `google_compute_per_instance_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputePerInstanceConfigIpAddress {
  const ComputePerInstanceConfigIpAddress({this.address});

  final TfArg<String>? address;

  Map<String, Object?> encode() => {'address': ?address?.toTfJson()};
}

/// Typed helper for the `preserved_state.internal_ip` block of
/// `google_compute_per_instance_config` (derived from provider schema).
@immutable
final class ComputePerInstanceConfigInternalIp {
  const ComputePerInstanceConfigInternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  final TfArg<ComputePerInstanceConfigAutoDelete>? autoDelete;

  final TfArg<String> interfaceName;

  final ComputePerInstanceConfigIpAddress? ipAddress;

  Map<String, Object?> encode() => {
    'auto_delete': ?autoDelete?.toTfJson(),
    'interface_name': interfaceName.toTfJson(),
    'ip_address': ?ipAddress?.encode(),
  };
}

/// Factory wrapper for `google_compute_per_instance_config`.
///
/// A config defined for a single managed instance that belongs to an instance
/// group manager. It preserves the instance name across instance group manager
/// operations and can define stateful disks or metadata that are unique to the
/// instance.
///
/// Stateful per-instance config on a zonal
/// [GoogleComputeInstanceGroupManager]. Names one MIG member and optionally
/// preserves disks / IPs / metadata across recreation. For many members at
/// once prefer [GoogleComputeBulkPerInstanceConfig].
final class GoogleComputePerInstanceConfig extends Resource {
  static const String tfType = 'google_compute_per_instance_config';

  GoogleComputePerInstanceConfig({
    required super.localName,
    required RefTo<GoogleComputeInstanceGroupManager> instanceGroupManager,
    required TfArg<String> name,
    TfArg<String>? zone,
    ComputePerInstanceConfigPreservedState? preservedState,
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
           'instance_group_manager': instanceGroupManager.encodeAs('name'),
           'name': name,
           'zone': ?zone,
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
  Set<String> get sensitiveFields => _googleComputePerInstanceConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputePerInstanceConfig>`.
  RefTo<GoogleComputePerInstanceConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `instance_group_manager` attribute.
  TfRef<String> get instanceGroupManager =>
      TfRef.attribute<String>(this, 'instance_group_manager');

  /// Reference to `minimal_action` attribute.
  TfRef<String> get minimalAction =>
      TfRef.attribute<String>(this, 'minimal_action');

  /// Reference to `most_disruptive_allowed_action` attribute.
  TfRef<String> get mostDisruptiveAllowedAction =>
      TfRef.attribute<String>(this, 'most_disruptive_allowed_action');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `remove_instance_on_destroy` attribute.
  TfRef<bool> get removeInstanceOnDestroy =>
      TfRef.attribute<bool>(this, 'remove_instance_on_destroy');

  /// Reference to `remove_instance_state_on_destroy` attribute.
  TfRef<bool> get removeInstanceStateOnDestroy =>
      TfRef.attribute<bool>(this, 'remove_instance_state_on_destroy');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
