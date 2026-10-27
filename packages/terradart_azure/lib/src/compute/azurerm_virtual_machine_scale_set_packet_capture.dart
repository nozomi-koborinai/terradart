// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_machine_scale_set_packet_capture`.
const Set<String> _azurermVirtualMachineScaleSetPacketCaptureSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `azurerm_virtual_machine_scale_set_packet_capture` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetPacketCaptureFilter {
  const VirtualMachineScaleSetPacketCaptureFilter({
    this.localIpAddress,
    this.localPort,
    required this.protocol,
    this.remoteIpAddress,
    this.remotePort,
  });

  final TfArg<String>? localIpAddress;

  final TfArg<String>? localPort;

  final VirtualMachineScaleSetPacketCaptureProtocol protocol;

  final TfArg<String>? remoteIpAddress;

  final TfArg<String>? remotePort;

  @internal
  Map<String, Object?> encode() => {
    'local_ip_address': ?localIpAddress?.toTfJson(),
    'local_port': ?localPort?.toTfJson(),
    'protocol': protocol.toTfJson(),
    'remote_ip_address': ?remoteIpAddress?.toTfJson(),
    'remote_port': ?remotePort?.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const VirtualMachineScaleSetPacketCaptureProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualMachineScaleSetPacketCaptureProtocol.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineScaleSetPacketCaptureProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineScaleSetPacketCaptureProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const any = VirtualMachineScaleSetPacketCaptureProtocol._(
    TfArgLiteral('Any'),
  );
  static const tcp = VirtualMachineScaleSetPacketCaptureProtocol._(
    TfArgLiteral('TCP'),
  );
  static const udp = VirtualMachineScaleSetPacketCaptureProtocol._(
    TfArgLiteral('UDP'),
  );

  static const List<VirtualMachineScaleSetPacketCaptureProtocol> values = [
    any,
    tcp,
    udp,
  ];
}

/// At most one of `exclude_instance_ids`, `include_instance_ids` on the `machine_scope` block of `azurerm_virtual_machine_scale_set_packet_capture`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludeInstanceIds(...)`.
sealed class VirtualMachineScaleSetPacketCaptureMachineScope {
  const VirtualMachineScaleSetPacketCaptureMachineScope();

  /// Sets `exclude_instance_ids`.
  const factory VirtualMachineScaleSetPacketCaptureMachineScope.excludeInstanceIds(
    TfArg<List<String>> excludeInstanceIds,
  ) = VirtualMachineScaleSetPacketCaptureMachineScopeExcludeInstanceIds;

  /// Sets `include_instance_ids`.
  const factory VirtualMachineScaleSetPacketCaptureMachineScope.includeInstanceIds(
    TfArg<List<String>> includeInstanceIds,
  ) = VirtualMachineScaleSetPacketCaptureMachineScopeIncludeInstanceIds;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VirtualMachineScaleSetPacketCaptureMachineScope.excludeInstanceIds] choice: sets `exclude_instance_ids`.
final class VirtualMachineScaleSetPacketCaptureMachineScopeExcludeInstanceIds
    extends VirtualMachineScaleSetPacketCaptureMachineScope {
  const VirtualMachineScaleSetPacketCaptureMachineScopeExcludeInstanceIds(
    this.excludeInstanceIds,
  );

  final TfArg<List<String>> excludeInstanceIds;

  @internal
  @override
  String get blockKey => 'exclude_instance_ids';

  @internal
  @override
  Map<String, Object?> encode() => {
    'exclude_instance_ids': excludeInstanceIds.toTfJson(),
  };
}

/// The [VirtualMachineScaleSetPacketCaptureMachineScope.includeInstanceIds] choice: sets `include_instance_ids`.
final class VirtualMachineScaleSetPacketCaptureMachineScopeIncludeInstanceIds
    extends VirtualMachineScaleSetPacketCaptureMachineScope {
  const VirtualMachineScaleSetPacketCaptureMachineScopeIncludeInstanceIds(
    this.includeInstanceIds,
  );

  final TfArg<List<String>> includeInstanceIds;

  @internal
  @override
  String get blockKey => 'include_instance_ids';

  @internal
  @override
  Map<String, Object?> encode() => {
    'include_instance_ids': includeInstanceIds.toTfJson(),
  };
}

/// Typed helper for the `storage_location` block of
/// `azurerm_virtual_machine_scale_set_packet_capture` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetPacketCaptureStorageLocation {
  const VirtualMachineScaleSetPacketCaptureStorageLocation({
    this.filePath,
    this.storageAccountId,
  });

  final TfArg<String>? filePath;

  final TfArg<String>? storageAccountId;

  @internal
  Map<String, Object?> encode() => {
    'file_path': ?filePath?.toTfJson(),
    'storage_account_id': ?storageAccountId?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_virtual_machine_scale_set_packet_capture`.
final class AzurermVirtualMachineScaleSetPacketCapture extends Resource {
  static const String tfType =
      'azurerm_virtual_machine_scale_set_packet_capture';

  AzurermVirtualMachineScaleSetPacketCapture(
    super.localName, {
    TfArg<num>? maximumBytesPerPacket,
    TfArg<num>? maximumBytesPerSession,
    TfArg<num>? maximumCaptureDurationInSeconds,
    required TfArg<String> name,
    required TfArg<String> networkWatcherId,
    required TfArg<String> virtualMachineScaleSetId,
    List<VirtualMachineScaleSetPacketCaptureFilter>? filter,
    VirtualMachineScaleSetPacketCaptureMachineScope? machineScope,
    required VirtualMachineScaleSetPacketCaptureStorageLocation storageLocation,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'maximum_bytes_per_packet': ?maximumBytesPerPacket,
           'maximum_bytes_per_session': ?maximumBytesPerSession,
           'maximum_capture_duration_in_seconds':
               ?maximumCaptureDurationInSeconds,
           'name': name,
           'network_watcher_id': networkWatcherId,
           'virtual_machine_scale_set_id': virtualMachineScaleSetId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
           if (machineScope != null)
             'machine_scope': TfArg.literal(machineScope.encode()),
           'storage_location': TfArg.literal(storageLocation.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualMachineScaleSetPacketCaptureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachineScaleSetPacketCapture>`.
  RefTo<AzurermVirtualMachineScaleSetPacketCapture> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `maximum_bytes_per_packet` attribute.
  TfRef<num> get maximumBytesPerPacket =>
      TfRef.attribute<num>(this, 'maximum_bytes_per_packet');

  /// Reference to `maximum_bytes_per_session` attribute.
  TfRef<num> get maximumBytesPerSession =>
      TfRef.attribute<num>(this, 'maximum_bytes_per_session');

  /// Reference to `maximum_capture_duration_in_seconds` attribute.
  TfRef<num> get maximumCaptureDurationInSeconds =>
      TfRef.attribute<num>(this, 'maximum_capture_duration_in_seconds');

  /// Reference to `network_watcher_id` attribute.
  TfRef<String> get networkWatcherId =>
      TfRef.attribute<String>(this, 'network_watcher_id');

  /// Reference to `virtual_machine_scale_set_id` attribute.
  TfRef<String> get virtualMachineScaleSetId =>
      TfRef.attribute<String>(this, 'virtual_machine_scale_set_id');
}
