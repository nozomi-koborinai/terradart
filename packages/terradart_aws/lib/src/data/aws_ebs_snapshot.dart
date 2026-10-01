// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_ebs_snapshot.dart';

/// Sensitive field paths for `aws_ebs_snapshot`.
const Set<String> _awsEbsSnapshotSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ebs_snapshot` (derived from provider schema).
@immutable
final class DataEbsSnapshotFilter {
  const DataEbsSnapshotFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ebs_snapshot`.
final class DataAwsEbsSnapshot extends Data {
  static const String tfType = 'aws_ebs_snapshot';

  DataAwsEbsSnapshot(
    super.localName, {
    TfArg<bool>? mostRecent,
    TfArg<List<String>>? owners,
    TfArg<String>? region,
    TfArg<List<String>>? restorableByUserIds,
    TfArg<List<String>>? snapshotIds,
    TfArg<Map<String, String>>? tags,
    List<DataEbsSnapshotFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'most_recent': ?mostRecent,
           'owners': ?owners,
           'region': ?region,
           'restorable_by_user_ids': ?restorableByUserIds,
           'snapshot_ids': ?snapshotIds,
           'tags': ?tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsSnapshotSensitive;

  /// A reference to the `aws_ebs_snapshot` this data source reads, for
  /// arguments typed `RefTo<AwsEbsSnapshot>`.
  RefTo<AwsEbsSnapshot> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `data_encryption_key_id` attribute.
  TfRef<String> get dataEncryptionKeyId =>
      TfRef.attribute<String>(this, 'data_encryption_key_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `owner_alias` attribute.
  TfRef<String> get ownerAlias => TfRef.attribute<String>(this, 'owner_alias');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `snapshot_id` attribute.
  TfRef<String> get snapshotId => TfRef.attribute<String>(this, 'snapshot_id');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `storage_tier` attribute.
  TfRef<String> get storageTier =>
      TfRef.attribute<String>(this, 'storage_tier');

  /// Reference to `volume_id` attribute.
  TfRef<String> get volumeId => TfRef.attribute<String>(this, 'volume_id');

  /// Reference to `volume_size` attribute.
  TfRef<num> get volumeSize => TfRef.attribute<num>(this, 'volume_size');

  /// Reference to `most_recent` attribute.
  TfRef<bool> get mostRecent => TfRef.attribute<bool>(this, 'most_recent');

  /// Reference to `owners` attribute.
  TfRef<List<String>> get owners =>
      TfRef.attribute<List<String>>(this, 'owners');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `restorable_by_user_ids` attribute.
  TfRef<List<String>> get restorableByUserIds =>
      TfRef.attribute<List<String>>(this, 'restorable_by_user_ids');

  /// Reference to `snapshot_ids` attribute.
  TfRef<List<String>> get snapshotIds =>
      TfRef.attribute<List<String>>(this, 'snapshot_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
