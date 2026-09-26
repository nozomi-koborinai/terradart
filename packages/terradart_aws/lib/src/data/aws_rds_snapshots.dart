// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_snapshots`.
const Set<String> _awsRdsSnapshotsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_rds_snapshots` (derived from provider schema).
@immutable
final class DataRdsSnapshotsFilter {
  const DataRdsSnapshotsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_rds_snapshots`.
final class DataAwsRdsSnapshots extends Data {
  static const String tfType = 'aws_rds_snapshots';

  DataAwsRdsSnapshots({
    required super.localName,
    TfArg<String>? dbInstanceIdentifier,
    TfArg<String>? dbSnapshotIdentifier,
    TfArg<bool>? includePublic,
    TfArg<bool>? includeShared,
    TfArg<String>? region,
    TfArg<String>? snapshotType,
    List<DataRdsSnapshotsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dbInstanceIdentifier != null)
             'db_instance_identifier': dbInstanceIdentifier,
           if (dbSnapshotIdentifier != null)
             'db_snapshot_identifier': dbSnapshotIdentifier,
           if (includePublic != null) 'include_public': includePublic,
           if (includeShared != null) 'include_shared': includeShared,
           if (region != null) 'region': region,
           if (snapshotType != null) 'snapshot_type': snapshotType,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsSnapshotsSensitive;

  /// Reference to `snapshots` attribute.
  TfRef<List<Map<String, Object?>>> get snapshots =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'snapshots');
}
