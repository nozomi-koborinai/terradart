// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigtable/google_bigtable_instance.dart' show GoogleBigtableInstance;
import '../bigtable/google_bigtable_table.dart' show GoogleBigtableTable;

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
/// - [instance]: parent instance — pass `instance.name`.
/// - [table]: parent table — pass `table.name`.
/// - [protoSchema]: [BigtableSchemaBundleProtoSchema] with base64 descriptors.
///
/// Example:
/// ```dart
/// GoogleBigtableSchemaBundle(
///   'events_proto',
///   schemaBundleId: TfArg.literal('events-proto'),
///   instance: instance.ref,
///   table: table.ref,
///   protoSchema: BigtableSchemaBundleProtoSchema(
///     protoDescriptors: TfArg.literal('<base64-encoded FileDescriptorSet>'),
///   ),
/// );
/// ```
final class GoogleBigtableSchemaBundle extends Resource {
  static const String tfType = 'google_bigtable_schema_bundle';

  GoogleBigtableSchemaBundle(
    super.localName, {
    required TfArg<String> schemaBundleId,
    RefTo<GoogleBigtableInstance>? instance,
    RefTo<GoogleBigtableTable>? table,
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
           'instance': ?instance?.encodeAs('name'),
           'table': ?table?.encodeAs('name'),
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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `ignore_warnings` attribute.
  TfRef<bool> get ignoreWarnings =>
      TfRef.attribute<bool>(this, 'ignore_warnings');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `schema_bundle_id` attribute.
  TfRef<String> get schemaBundleId =>
      TfRef.attribute<String>(this, 'schema_bundle_id');

  /// Reference to `table` attribute.
  TfRef<String> get table => TfRef.attribute<String>(this, 'table');
}
