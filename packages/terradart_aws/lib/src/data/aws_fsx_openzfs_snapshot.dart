// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../fsx/aws_fsx_openzfs_snapshot.dart';

/// Sensitive field paths for `aws_fsx_openzfs_snapshot`.
const Set<String> _awsFsxOpenzfsSnapshotSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_fsx_openzfs_snapshot` (derived from provider schema).
@immutable
final class DataFsxOpenzfsSnapshotFilter {
  const DataFsxOpenzfsSnapshotFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_openzfs_snapshot`.
final class DataAwsFsxOpenzfsSnapshot extends Data {
  static const String tfType = 'aws_fsx_openzfs_snapshot';

  DataAwsFsxOpenzfsSnapshot({
    required super.localName,
    TfArg<bool>? mostRecent,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<List<String>>? snapshotIds,
    TfArg<Map<String, String>>? tags,
    List<DataFsxOpenzfsSnapshotFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'most_recent': ?mostRecent,
           'name': ?name,
           'region': ?region,
           'snapshot_ids': ?snapshotIds,
           'tags': ?tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxOpenzfsSnapshotSensitive;

  /// A reference to the `aws_fsx_openzfs_snapshot` this data source reads, for
  /// arguments typed `RefTo<AwsFsxOpenzfsSnapshot>`.
  RefTo<AwsFsxOpenzfsSnapshot> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `snapshot_id` attribute.
  TfRef<String> get snapshotId => TfRef.attribute<String>(this, 'snapshot_id');

  /// Reference to `volume_id` attribute.
  TfRef<String> get volumeId => TfRef.attribute<String>(this, 'volume_id');

  /// Reference to `most_recent` attribute.
  TfRef<bool> get mostRecentRef => TfRef.attribute<bool>(this, 'most_recent');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `snapshot_ids` attribute.
  TfRef<List<String>> get snapshotIdsRef =>
      TfRef.attribute<List<String>>(this, 'snapshot_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
