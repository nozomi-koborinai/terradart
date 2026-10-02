// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_instance_group_manager.dart'
    show GoogleComputeRegionInstanceGroupManager;

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

  final List<ComputeRegionPerInstanceConfigDisk>? disk;

  final List<ComputeRegionPerInstanceConfigExternalIp>? externalIp;

  final List<ComputeRegionPerInstanceConfigInternalIp>? internalIp;

  @internal
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
final class ComputeRegionPerInstanceConfigDisk {
  const ComputeRegionPerInstanceConfigDisk({
    this.deleteRule,
    required this.deviceName,
    this.mode,
    required this.source,
  });

  final ComputeRegionPerInstanceConfigDeleteRule? deleteRule;

  final TfArg<String> deviceName;

  final ComputeRegionPerInstanceConfigMode? mode;

  final TfArg<String> source;

  @internal
  Map<String, Object?> encode() => {
    'delete_rule': ?deleteRule?.toTfJson(),
    'device_name': deviceName.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// `delete_rule` — derived from the provider schema description.
extension type const ComputeRegionPerInstanceConfigDeleteRule._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionPerInstanceConfigDeleteRule.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionPerInstanceConfigDeleteRule.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionPerInstanceConfigDeleteRule.arg(TfArg<String> arg)
    : this._(arg);

  static const never = ComputeRegionPerInstanceConfigDeleteRule._(
    TfArgLiteral('NEVER'),
  );
  static const onPermanentInstanceDeletion =
      ComputeRegionPerInstanceConfigDeleteRule._(
        TfArgLiteral('ON_PERMANENT_INSTANCE_DELETION'),
      );

  static const List<ComputeRegionPerInstanceConfigDeleteRule> values = [
    never,
    onPermanentInstanceDeletion,
  ];
}

/// `mode` — derived from the provider schema description.
extension type const ComputeRegionPerInstanceConfigMode._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionPerInstanceConfigMode.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionPerInstanceConfigMode.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionPerInstanceConfigMode.arg(TfArg<String> arg) : this._(arg);

  static const readOnly = ComputeRegionPerInstanceConfigMode._(
    TfArgLiteral('READ_ONLY'),
  );
  static const readWrite = ComputeRegionPerInstanceConfigMode._(
    TfArgLiteral('READ_WRITE'),
  );

  static const List<ComputeRegionPerInstanceConfigMode> values = [
    readOnly,
    readWrite,
  ];
}

/// Typed helper for the `preserved_state.external_ip` block of
/// `google_compute_region_per_instance_config` (derived from provider schema).
@immutable
final class ComputeRegionPerInstanceConfigExternalIp {
  const ComputeRegionPerInstanceConfigExternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  final ComputeRegionPerInstanceConfigAutoDelete? autoDelete;

  final TfArg<String> interfaceName;

  final ComputeRegionPerInstanceConfigIpAddress? ipAddress;

  @internal
  Map<String, Object?> encode() => {
    'auto_delete': ?autoDelete?.toTfJson(),
    'interface_name': interfaceName.toTfJson(),
    'ip_address': ?ipAddress?.encode(),
  };
}

/// `auto_delete` — derived from the provider schema description.
extension type const ComputeRegionPerInstanceConfigAutoDelete._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionPerInstanceConfigAutoDelete.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionPerInstanceConfigAutoDelete.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionPerInstanceConfigAutoDelete.arg(TfArg<String> arg)
    : this._(arg);

  static const never = ComputeRegionPerInstanceConfigAutoDelete._(
    TfArgLiteral('NEVER'),
  );
  static const onPermanentInstanceDeletion =
      ComputeRegionPerInstanceConfigAutoDelete._(
        TfArgLiteral('ON_PERMANENT_INSTANCE_DELETION'),
      );

  static const List<ComputeRegionPerInstanceConfigAutoDelete> values = [
    never,
    onPermanentInstanceDeletion,
  ];
}

/// Typed helper for the `preserved_state.external_ip.ip_address` block of
/// `google_compute_region_per_instance_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionPerInstanceConfigIpAddress {
  const ComputeRegionPerInstanceConfigIpAddress({this.address});

  final TfArg<String>? address;

  @internal
  Map<String, Object?> encode() => {'address': ?address?.toTfJson()};
}

/// Typed helper for the `preserved_state.internal_ip` block of
/// `google_compute_region_per_instance_config` (derived from provider schema).
@immutable
final class ComputeRegionPerInstanceConfigInternalIp {
  const ComputeRegionPerInstanceConfigInternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  final ComputeRegionPerInstanceConfigAutoDelete? autoDelete;

  final TfArg<String> interfaceName;

  final ComputeRegionPerInstanceConfigIpAddress? ipAddress;

  @internal
  Map<String, Object?> encode() => {
    'auto_delete': ?autoDelete?.toTfJson(),
    'interface_name': interfaceName.toTfJson(),
    'ip_address': ?ipAddress?.encode(),
  };
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

  GoogleComputeRegionPerInstanceConfig(
    super.localName, {
    required RefTo<GoogleComputeRegionInstanceGroupManager>
    regionInstanceGroupManager,
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
           'region_instance_group_manager': regionInstanceGroupManager.encodeAs(
             'name',
           ),
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `minimal_action` attribute.
  TfRef<String> get minimalAction =>
      TfRef.attribute<String>(this, 'minimal_action');

  /// Reference to `most_disruptive_allowed_action` attribute.
  TfRef<String> get mostDisruptiveAllowedAction =>
      TfRef.attribute<String>(this, 'most_disruptive_allowed_action');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `region_instance_group_manager` attribute.
  TfRef<String> get regionInstanceGroupManager =>
      TfRef.attribute<String>(this, 'region_instance_group_manager');

  /// Reference to `remove_instance_on_destroy` attribute.
  TfRef<bool> get removeInstanceOnDestroy =>
      TfRef.attribute<bool>(this, 'remove_instance_on_destroy');

  /// Reference to `remove_instance_state_on_destroy` attribute.
  TfRef<bool> get removeInstanceStateOnDestroy =>
      TfRef.attribute<bool>(this, 'remove_instance_state_on_destroy');
}
