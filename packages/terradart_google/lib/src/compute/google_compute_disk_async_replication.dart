// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_disk_async_replication`.
const Set<String> _googleComputeDiskAsyncReplicationSensitive = <String>{};

/// Typed helper for the `secondary_disk` block of
/// `google_compute_disk_async_replication` (derived from provider schema).
@immutable
final class ComputeDiskAsyncReplicationSecondaryDisk {
  const ComputeDiskAsyncReplicationSecondaryDisk({required this.disk});

  final TfArg<String> disk;

  Map<String, Object?> encode() => {'disk': disk.toTfJson()};
}

/// Factory wrapper for `google_compute_disk_async_replication`.
///
/// Starts asynchronous replication between a primary zonal/regional disk
/// and a secondary disk in another region. Both disks must already exist;
/// this resource only manages the replication relationship.
///
/// Required:
/// - [primaryDisk]: self-link or id of the primary disk.
/// - [secondaryDisk]: nested block with the secondary disk self-link
///   (`disk`) and optional `customer_encryption_key`.
final class GoogleComputeDiskAsyncReplication extends Resource {
  static const String tfType = 'google_compute_disk_async_replication';

  GoogleComputeDiskAsyncReplication({
    required super.localName,
    required TfArg<String> primaryDisk,
    required ComputeDiskAsyncReplicationSecondaryDisk secondaryDisk,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'primary_disk': primaryDisk,
           'secondary_disk': TfArg.literal(secondaryDisk.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeDiskAsyncReplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeDiskAsyncReplication>`.
  RefTo<GoogleComputeDiskAsyncReplication> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `primary_disk` attribute.
  TfRef<String> get primaryDiskRef =>
      TfRef.attribute<String>(this, 'primary_disk');
}
