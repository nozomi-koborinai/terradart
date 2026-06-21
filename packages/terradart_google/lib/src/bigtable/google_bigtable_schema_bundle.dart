// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigtable_schema_bundle`.
const Set<String> _googleBigtableSchemaBundleSensitive = <String>{};

/// `proto_schema` block on `google_bigtable_schema_bundle`.
class BigtableSchemaBundleProtoSchema {
  const BigtableSchemaBundleProtoSchema({required this.protoDescriptors});

  /// Base64-encoded `google.protobuf.FileDescriptorSet` bytes.
  final TfArg<String> protoDescriptors;

  Map<String, Object?> toArgMap() => {
    'proto_descriptors': protoDescriptors.toTfJson(),
  };
}

/// Factory wrapper for `google_bigtable_schema_bundle`.
///
/// A schema bundle object that can be referenced in SQL queries.
///
/// Protobuf schema bundle attached to a Bigtable table.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [schemaBundleId]: bundle ID within the instance.
/// - [instance]: parent instance — pass `TfArg.ref(instance.nameRef)`.
/// - [table]: parent table — pass `TfArg.ref(table.nameRef)`.
/// - [protoSchema]: [BigtableSchemaBundleProtoSchema] with base64 descriptors.
///
/// Example:
/// ```dart
/// GoogleBigtableSchemaBundle(
///   localName: 'events_proto',
///   schemaBundleId: TfArg.literal('events-proto'),
///   instance: TfArg.ref(instance.nameRef),
///   table: TfArg.ref(table.nameRef),
///   protoSchema: BigtableSchemaBundleProtoSchema(
///     protoDescriptors: TfArg.literal('<base64-encoded FileDescriptorSet>'),
///   ),
/// );
/// ```
final class GoogleBigtableSchemaBundle extends Resource {
  static const String tfType = 'google_bigtable_schema_bundle';

  GoogleBigtableSchemaBundle({
    required super.localName,
    required TfArg<String> schemaBundleId,
    TfArg<String>? instance,
    TfArg<String>? table,
    required BigtableSchemaBundleProtoSchema protoSchema,
    TfArg<bool>? ignoreWarnings,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'schema_bundle_id': schemaBundleId,
           if (instance != null) 'instance': instance,
           if (table != null) 'table': table,
           'proto_schema': TfArg.literal([protoSchema.toArgMap()]),
           if (ignoreWarnings != null) 'ignore_warnings': ignoreWarnings,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableSchemaBundleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
