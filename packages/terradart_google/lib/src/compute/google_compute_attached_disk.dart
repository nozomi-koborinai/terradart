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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disk': disk,
           'instance': instance,
           'device_name': ?deviceName,
           'mode': ?mode,
           'interface': ?interface,
           'deletion_policy': ?deletionPolicy,
           'zone': ?zone,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeAttachedDiskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeAttachedDisk>`.
  RefTo<GoogleComputeAttachedDisk> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `device_name` attribute.
  TfRef<String> get deviceNameRef =>
      TfRef.attribute<String>(this, 'device_name');

  /// Reference to `disk` attribute.
  TfRef<String> get diskRef => TfRef.attribute<String>(this, 'disk');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `interface` attribute.
  TfRef<String> get interfaceRef => TfRef.attribute<String>(this, 'interface');

  /// Reference to `mode` attribute.
  TfRef<String> get modeRef => TfRef.attribute<String>(this, 'mode');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');
}
