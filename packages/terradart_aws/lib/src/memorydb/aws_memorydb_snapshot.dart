// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_memorydb_snapshot`.
const Set<String> _awsMemorydbSnapshotSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_memorydb_snapshot`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class MemorydbSnapshotName {
  const MemorydbSnapshotName();

  /// Sets `name`.
  const factory MemorydbSnapshotName.name(TfArg<String> name) =
      MemorydbSnapshotNameChoice;

  /// Sets `name_prefix`.
  const factory MemorydbSnapshotName.namePrefix(TfArg<String> namePrefix) =
      MemorydbSnapshotNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MemorydbSnapshotName.name] choice: sets `name`.
final class MemorydbSnapshotNameChoice extends MemorydbSnapshotName {
  const MemorydbSnapshotNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [MemorydbSnapshotName.namePrefix] choice: sets `name_prefix`.
final class MemorydbSnapshotNamePrefix extends MemorydbSnapshotName {
  const MemorydbSnapshotNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_memorydb_snapshot`.
final class AwsMemorydbSnapshot extends Resource {
  static const String tfType = 'aws_memorydb_snapshot';

  AwsMemorydbSnapshot({
    required super.localName,
    required TfArg<String> clusterName,
    RefTo<AwsKmsKey>? kmsKeyArn,
    MemorydbSnapshotName? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn.encodeAs('arn'),
           ...?name?.argMap,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbSnapshotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMemorydbSnapshot>`.
  RefTo<AwsMemorydbSnapshot> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get clusterConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cluster_configuration',
      );

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}
