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
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'name': name,
           if (columnFamily != null)
             'column_family': TfArg.literal(
               columnFamily.map((c) => c.toArgMap()).toList(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (changeStreamRetention != null)
             'change_stream_retention': changeStreamRetention,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableTableSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
