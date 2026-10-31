// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_attached_disk`.
const Set<String> _googleComputeAttachedDiskSensitive = <String>{};

/// Compute Attached Disk enum for `interface`.
extension type const ComputeAttachedDiskInterface._(TfArg<String> _)
    implements TfArg<String> {
  ComputeAttachedDiskInterface.variable(String name)
    : this._(TfArg.variable(name));
  ComputeAttachedDiskInterface.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeAttachedDiskInterface.arg(TfArg<String> arg) : this._(arg);

  static const nvme = ComputeAttachedDiskInterface._(TfArgLiteral('NVME'));
  static const scsi = ComputeAttachedDiskInterface._(TfArgLiteral('SCSI'));

  static const List<ComputeAttachedDiskInterface> values = [nvme, scsi];
}

/// Compute Attached Disk enum for `mode`.
extension type const ComputeAttachedDiskMode._(TfArg<String> _)
    implements TfArg<String> {
  ComputeAttachedDiskMode.variable(String name) : this._(TfArg.variable(name));
  ComputeAttachedDiskMode.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeAttachedDiskMode.arg(TfArg<String> arg) : this._(arg);

  static const readOnly = ComputeAttachedDiskMode._(TfArgLiteral('READ_ONLY'));
  static const readWrite = ComputeAttachedDiskMode._(
    TfArgLiteral('READ_WRITE'),
  );

  static const List<ComputeAttachedDiskMode> values = [readOnly, readWrite];
}

/// Factory wrapper for `google_compute_attached_disk`.
final class GoogleComputeAttachedDisk extends Resource {
  static const String tfType = 'google_compute_attached_disk';

  GoogleComputeAttachedDisk(
    super.localName, {
    required TfArg<String> disk,
    required TfArg<String> instance,
    TfArg<String>? deviceName,
    ComputeAttachedDiskMode? mode,
    ComputeAttachedDiskInterface? interface,
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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `device_name` attribute.
  TfRef<String> get deviceName => TfRef.attribute<String>(this, 'device_name');

  /// Reference to `disk` attribute.
  TfRef<String> get disk => TfRef.attribute<String>(this, 'disk');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `interface` attribute.
  TfRef<String> get interface => TfRef.attribute<String>(this, 'interface');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
