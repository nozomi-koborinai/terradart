// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<List<Object?>> values;

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
           if (mostRecent != null) 'most_recent': mostRecent,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (snapshotIds != null) 'snapshot_ids': snapshotIds,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxOpenzfsSnapshotSensitive;

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
}
