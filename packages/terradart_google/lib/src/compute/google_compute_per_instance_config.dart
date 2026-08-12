// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final List<ComputePerInstanceConfigPreservedStateDisk>? disk;

  final List<ComputePerInstanceConfigPreservedStateExternalIp>? externalIp;

  final List<ComputePerInstanceConfigPreservedStateInternalIp>? internalIp;

  Map<String, Object?> encode() => {
    if (metadata != null) 'metadata': metadata!.toTfJson(),
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
final class ComputePerInstanceConfigPreservedStateDisk {
  const ComputePerInstanceConfigPreservedStateDisk({
    this.deleteRule,
    required this.deviceName,
    this.mode,
    required this.source,
  });

  final TfArg<ComputePerInstanceConfigPreservedStateDiskDeleteRule>? deleteRule;

  final TfArg<String> deviceName;

  final TfArg<ComputePerInstanceConfigPreservedStateDiskMode>? mode;

  final TfArg<String> source;

  Map<String, Object?> encode() => {
    if (deleteRule != null) 'delete_rule': deleteRule!.toTfJson(),
    'device_name': deviceName.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// `delete_rule` — derived from the provider schema description.
enum ComputePerInstanceConfigPreservedStateDiskDeleteRule
    implements TerraformEnum {
  never('NEVER'),
  onPermanentInstanceDeletion('ON_PERMANENT_INSTANCE_DELETION');

  const ComputePerInstanceConfigPreservedStateDiskDeleteRule(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `mode` — derived from the provider schema description.
enum ComputePerInstanceConfigPreservedStateDiskMode implements TerraformEnum {
  readOnly('READ_ONLY'),
  readWrite('READ_WRITE');

  const ComputePerInstanceConfigPreservedStateDiskMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `preserved_state.external_ip` block of
/// `google_compute_per_instance_config` (derived from provider schema).
@immutable
final class ComputePerInstanceConfigPreservedStateExternalIp {
  const ComputePerInstanceConfigPreservedStateExternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  final TfArg<ComputePerInstanceConfigPreservedStateExternalIpAutoDelete>?
  autoDelete;

  final TfArg<String> interfaceName;

  final ComputePerInstanceConfigPreservedStateExternalIpIpAddress? ipAddress;

  Map<String, Object?> encode() => {
    if (autoDelete != null) 'auto_delete': autoDelete!.toTfJson(),
    'interface_name': interfaceName.toTfJson(),
    if (ipAddress != null) 'ip_address': ipAddress!.encode(),
  };
}

/// `auto_delete` — derived from the provider schema description.
enum ComputePerInstanceConfigPreservedStateExternalIpAutoDelete
    implements TerraformEnum {
  never('NEVER'),
  onPermanentInstanceDeletion('ON_PERMANENT_INSTANCE_DELETION');

  const ComputePerInstanceConfigPreservedStateExternalIpAutoDelete(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `preserved_state.external_ip.ip_address` block of
/// `google_compute_per_instance_config` (derived from provider schema).
@immutable
final class ComputePerInstanceConfigPreservedStateExternalIpIpAddress {
  const ComputePerInstanceConfigPreservedStateExternalIpIpAddress({
    this.address,
  });

  final TfArg<String>? address;

  Map<String, Object?> encode() => {
    if (address != null) 'address': address!.toTfJson(),
  };
}

/// Typed helper for the `preserved_state.internal_ip` block of
/// `google_compute_per_instance_config` (derived from provider schema).
@immutable
final class ComputePerInstanceConfigPreservedStateInternalIp {
  const ComputePerInstanceConfigPreservedStateInternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  final TfArg<ComputePerInstanceConfigPreservedStateInternalIpAutoDelete>?
  autoDelete;

  final TfArg<String> interfaceName;

  final ComputePerInstanceConfigPreservedStateInternalIpIpAddress? ipAddress;

  Map<String, Object?> encode() => {
    if (autoDelete != null) 'auto_delete': autoDelete!.toTfJson(),
    'interface_name': interfaceName.toTfJson(),
    if (ipAddress != null) 'ip_address': ipAddress!.encode(),
  };
}

/// `auto_delete` — derived from the provider schema description.
enum ComputePerInstanceConfigPreservedStateInternalIpAutoDelete
    implements TerraformEnum {
  never('NEVER'),
  onPermanentInstanceDeletion('ON_PERMANENT_INSTANCE_DELETION');

  const ComputePerInstanceConfigPreservedStateInternalIpAutoDelete(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `preserved_state.internal_ip.ip_address` block of
/// `google_compute_per_instance_config` (derived from provider schema).
@immutable
final class ComputePerInstanceConfigPreservedStateInternalIpIpAddress {
  const ComputePerInstanceConfigPreservedStateInternalIpIpAddress({
    this.address,
  });

  final TfArg<String>? address;

  Map<String, Object?> encode() => {
    if (address != null) 'address': address!.toTfJson(),
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
    required TfArg<String> instanceGroupManager,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_group_manager': instanceGroupManager,
           'name': name,
           if (zone != null) 'zone': zone,
           if (preservedState != null)
             'preserved_state': TfArg.literal(preservedState.encode()),
           if (minimalAction != null) 'minimal_action': minimalAction,
           if (mostDisruptiveAllowedAction != null)
             'most_disruptive_allowed_action': mostDisruptiveAllowedAction,
           if (removeInstanceOnDestroy != null)
             'remove_instance_on_destroy': removeInstanceOnDestroy,
           if (removeInstanceStateOnDestroy != null)
             'remove_instance_state_on_destroy': removeInstanceStateOnDestroy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputePerInstanceConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
