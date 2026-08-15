// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_serial_port`.
const Set<String> _googleComputeInstanceSerialPortSensitive = <String>{};

/// Factory wrapper for `google_compute_instance_serial_port`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeInstanceSerialPort extends Data {
  static const String tfType = 'google_compute_instance_serial_port';

  DataGoogleComputeInstanceSerialPort({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<num> port,
    TfArg<String>? project,
    TfArg<String>? zone,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'port': port,
           if (project != null) 'project': project,
           if (zone != null) 'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceSerialPortSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `contents` attribute.
  TfRef<String> get contents => TfRef.attribute<String>(this, 'contents');
}
