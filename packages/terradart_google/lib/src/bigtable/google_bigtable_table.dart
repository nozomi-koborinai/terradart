// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigtable_table`.
const Set<String> _googleBigtableTableSensitive = <String>{};

/// One `column_family` block on `google_bigtable_table`.
class BigtableTableColumnFamily {
  const BigtableTableColumnFamily({required this.family});

  final TfArg<String> family;

  Map<String, Object?> toArgMap() => {'family': family.toTfJson()};
}

/// Factory wrapper for `google_bigtable_table`.
///
/// Cloud Bigtable table within an instance.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [instanceName]: parent instance ID — pass `TfArg.ref(instance.nameRef)`.
/// - [name]: table ID (1-50 chars, hyphens, underscores, letters).
/// - [columnFamily]: at least one [BigtableTableColumnFamily].
///
/// Example:
/// ```dart
/// GoogleBigtableTable(
///   localName: 'events',
///   instanceName: TfArg.ref(instance.nameRef),
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
    required TfArg<String> instanceName,
    required TfArg<String> name,
    List<BigtableTableColumnFamily>? columnFamily,
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
           'instance_name': instanceName,
           'name': name,
           if (columnFamily != null)
             'column_family': TfArg.literal(
               columnFamily.map((c) => c.toArgMap()).toList(),
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `change_stream_retention` attribute.
  TfRef<String> get changeStreamRetentionRef =>
      TfRef.attribute<String>(this, 'change_stream_retention');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<String> get deletionProtectionRef =>
      TfRef.attribute<String>(this, 'deletion_protection');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceNameRef =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `row_key_schema` attribute.
  TfRef<String> get rowKeySchemaRef =>
      TfRef.attribute<String>(this, 'row_key_schema');

  /// Reference to `split_keys` attribute.
  TfRef<List<String>> get splitKeysRef =>
      TfRef.attribute<List<String>>(this, 'split_keys');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
