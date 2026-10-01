// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigtable/google_bigtable_instance.dart' show GoogleBigtableInstance;

/// Sensitive field paths for `google_bigtable_table`.
const Set<String> _googleBigtableTableSensitive = <String>{};

/// One `column_family` block on `google_bigtable_table`.
class BigtableTableColumnFamily {
  const BigtableTableColumnFamily({required this.family});

  final TfArg<String> family;

  Map<String, Object?> toArgMap() => {'family': family.toTfJson()};
}

/// Typed helper for the `automated_backup_policy` block of
/// `google_bigtable_table` (derived from provider schema).
@immutable
final class BigtableTableAutomatedBackupPolicy {
  const BigtableTableAutomatedBackupPolicy({
    this.frequency,
    this.locations,
    this.retentionPeriod,
  });

  final TfArg<String>? frequency;

  final TfArg<List<String>>? locations;

  final TfArg<String>? retentionPeriod;

  Map<String, Object?> encode() => {
    'frequency': ?frequency?.toTfJson(),
    'locations': ?locations?.toTfJson(),
    'retention_period': ?retentionPeriod?.toTfJson(),
  };
}

/// Factory wrapper for `google_bigtable_table`.
///
/// Cloud Bigtable table within an instance.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [instanceName]: parent instance ID — pass `instance.name`.
/// - [name]: table ID (1-50 chars, hyphens, underscores, letters).
/// - [columnFamily]: at least one [BigtableTableColumnFamily].
///
/// Example:
/// ```dart
/// GoogleBigtableTable(
///   localName: 'events',
///   instanceName: instance.ref,
///   name: TfArg.literal('events'),
///   columnFamily: [
///     BigtableTableColumnFamily(family: TfArg.literal('cf1')),
///   ],
/// );
/// ```
final class GoogleBigtableTable extends Resource {
  static const String tfType = 'google_bigtable_table';

  GoogleBigtableTable({
    required super.localName,
    required RefTo<GoogleBigtableInstance> instanceName,
    required TfArg<String> name,
    List<BigtableTableColumnFamily>? columnFamily,
    BigtableTableAutomatedBackupPolicy? automatedBackupPolicy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? deletionProtection,
    TfArg<String>? changeStreamRetention,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName.encodeAs('name'),
           'name': name,
           if (columnFamily != null)
             'column_family': TfArg.literal(
               columnFamily.map((c) => c.toArgMap()).toList(),
             ),
           if (automatedBackupPolicy != null)
             'automated_backup_policy': TfArg.literal(
               automatedBackupPolicy.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'change_stream_retention': ?changeStreamRetention,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableTableSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableTable>`.
  RefTo<GoogleBigtableTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `change_stream_retention` attribute.
  TfRef<String> get changeStreamRetention =>
      TfRef.attribute<String>(this, 'change_stream_retention');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<String> get deletionProtection =>
      TfRef.attribute<String>(this, 'deletion_protection');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceName =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `row_key_schema` attribute.
  TfRef<String> get rowKeySchema =>
      TfRef.attribute<String>(this, 'row_key_schema');

  /// Reference to `split_keys` attribute.
  TfRef<List<String>> get splitKeys =>
      TfRef.attribute<List<String>>(this, 'split_keys');
}
