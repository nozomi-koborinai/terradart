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

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_rds_snapshots`.
final class DataAwsRdsSnapshots extends Data {
  static const String tfType = 'aws_rds_snapshots';

  DataAwsRdsSnapshots(
    super.localName, {
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
           'db_instance_identifier': ?dbInstanceIdentifier,
           'db_snapshot_identifier': ?dbSnapshotIdentifier,
           'include_public': ?includePublic,
           'include_shared': ?includeShared,
           'region': ?region,
           'snapshot_type': ?snapshotType,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsSnapshotsSensitive;

  /// Reference to `snapshots` attribute.
  TfRef<List<Map<String, Object?>>> get snapshots =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'snapshots');

  /// Reference to `db_instance_identifier` attribute.
  TfRef<String> get dbInstanceIdentifier =>
      TfRef.attribute<String>(this, 'db_instance_identifier');

  /// Reference to `db_snapshot_identifier` attribute.
  TfRef<String> get dbSnapshotIdentifier =>
      TfRef.attribute<String>(this, 'db_snapshot_identifier');

  /// Reference to `include_public` attribute.
  TfRef<bool> get includePublic =>
      TfRef.attribute<bool>(this, 'include_public');

  /// Reference to `include_shared` attribute.
  TfRef<bool> get includeShared =>
      TfRef.attribute<bool>(this, 'include_shared');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `snapshot_type` attribute.
  TfRef<String> get snapshotType =>
      TfRef.attribute<String>(this, 'snapshot_type');
}
