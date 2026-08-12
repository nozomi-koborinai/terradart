// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_attached_disk`.
const Set<String> _googleComputeAttachedDiskSensitive = <String>{};

/// Factory wrapper for `google_compute_attached_disk`.
final class GoogleComputeAttachedDisk extends Resource {
  static const String tfType = 'google_compute_attached_disk';

  GoogleComputeAttachedDisk({
    required super.localName,
    required TfArg<String> disk,
    required TfArg<String> instance,
    TfArg<String>? deviceName,
    TfArg<String>? mode,
    TfArg<String>? interface,
    TfArg<String>? deletionPolicy,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disk': disk,
           'instance': instance,
           if (deviceName != null) 'device_name': deviceName,
           if (mode != null) 'mode': mode,
           if (interface != null) 'interface': interface,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (zone != null) 'zone': zone,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeAttachedDiskSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
