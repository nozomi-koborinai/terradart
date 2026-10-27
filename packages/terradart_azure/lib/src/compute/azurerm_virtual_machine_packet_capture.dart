// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_machine_packet_capture`.
const Set<String> _azurermVirtualMachinePacketCaptureSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `azurerm_virtual_machine_packet_capture` (derived from provider schema).
@immutable
final class VirtualMachinePacketCaptureFilter {
  const VirtualMachinePacketCaptureFilter({
    this.localIpAddress,
    this.localPort,
    required this.protocol,
    this.remoteIpAddress,
    this.remotePort,
  });

  final TfArg<String>? localIpAddress;

  final TfArg<String>? localPort;

  final VirtualMachinePacketCaptureProtocol protocol;

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
extension type const VirtualMachinePacketCaptureProtocol._(TfArg<String> _)
    implements TfArg<String> {
  VirtualMachinePacketCaptureProtocol.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachinePacketCaptureProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachinePacketCaptureProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const any = VirtualMachinePacketCaptureProtocol._(TfArgLiteral('Any'));
  static const tcp = VirtualMachinePacketCaptureProtocol._(TfArgLiteral('TCP'));
  static const udp = VirtualMachinePacketCaptureProtocol._(TfArgLiteral('UDP'));

  static const List<VirtualMachinePacketCaptureProtocol> values = [
    any,
    tcp,
    udp,
  ];
}

/// Typed helper for the `storage_location` block of
/// `azurerm_virtual_machine_packet_capture` (derived from provider schema).
@immutable
final class VirtualMachinePacketCaptureStorageLocation {
  const VirtualMachinePacketCaptureStorageLocation({
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

/// Factory wrapper for `azurerm_virtual_machine_packet_capture`.
final class AzurermVirtualMachinePacketCapture extends Resource {
  static const String tfType = 'azurerm_virtual_machine_packet_capture';

  AzurermVirtualMachinePacketCapture(
    super.localName, {
    TfArg<num>? maximumBytesPerPacket,
    TfArg<num>? maximumBytesPerSession,
    TfArg<num>? maximumCaptureDurationInSeconds,
    required TfArg<String> name,
    required TfArg<String> networkWatcherId,
    required TfArg<String> virtualMachineId,
    List<VirtualMachinePacketCaptureFilter>? filter,
    required VirtualMachinePacketCaptureStorageLocation storageLocation,
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
           'virtual_machine_id': virtualMachineId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
           'storage_location': TfArg.literal(storageLocation.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualMachinePacketCaptureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachinePacketCapture>`.
  RefTo<AzurermVirtualMachinePacketCapture> get ref => RefTo.of(this);

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

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');
}
