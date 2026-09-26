// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_snapshot_ids`.
const Set<String> _awsEbsSnapshotIdsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ebs_snapshot_ids` (derived from provider schema).
@immutable
final class DataEbsSnapshotIdsFilter {
  const DataEbsSnapshotIdsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ebs_snapshot_ids`.
final class DataAwsEbsSnapshotIds extends Data {
  static const String tfType = 'aws_ebs_snapshot_ids';

  DataAwsEbsSnapshotIds({
    required super.localName,
    TfArg<List<String>>? owners,
    TfArg<String>? region,
    TfArg<List<String>>? restorableByUserIds,
    List<DataEbsSnapshotIdsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (owners != null) 'owners': owners,
           if (region != null) 'region': region,
           if (restorableByUserIds != null)
             'restorable_by_user_ids': restorableByUserIds,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsSnapshotIdsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
