// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_disk_async_replication`.
const Set<String> _googleComputeDiskAsyncReplicationSensitive = <String>{};

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
    required TfArg<Map<String, dynamic>> secondaryDisk,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'primary_disk': primaryDisk,
           'secondary_disk': secondaryDisk,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeDiskAsyncReplicationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
