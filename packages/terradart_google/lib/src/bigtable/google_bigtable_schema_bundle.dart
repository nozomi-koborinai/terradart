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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'schema_bundle_id': schemaBundleId,
           'instance': ?instance,
           'table': ?table,
           'proto_schema': TfArg.literal([protoSchema.toArgMap()]),
           'ignore_warnings': ?ignoreWarnings,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableSchemaBundleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableSchemaBundle>`.
  RefTo<GoogleBigtableSchemaBundle> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `ignore_warnings` attribute.
  TfRef<bool> get ignoreWarningsRef =>
      TfRef.attribute<bool>(this, 'ignore_warnings');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `schema_bundle_id` attribute.
  TfRef<String> get schemaBundleIdRef =>
      TfRef.attribute<String>(this, 'schema_bundle_id');

  /// Reference to `table` attribute.
  TfRef<String> get tableRef => TfRef.attribute<String>(this, 'table');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
