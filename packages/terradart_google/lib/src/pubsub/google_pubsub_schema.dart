// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_schema`.
const Set<String> _googlePubsubSchemaSensitive = <String>{};

/// Pubsub Schema enum for `type`.
enum PubsubSchemaType implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  protocolBuffer('PROTOCOL_BUFFER'),
  avro('AVRO');

  const PubsubSchemaType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_pubsub_schema`.
///
/// A schema is a format that messages must follow, creating a contract between
/// publisher and subscriber that Pub/Sub will enforce.
///
/// Two payload shapes are supported via [type]:
/// - [PubsubSchemaType.protocolBuffer] -- [definition] holds a `.proto`
///   source string (a single `message {...}` definition).
/// - [PubsubSchemaType.avro] -- [definition] holds an Avro JSON schema
///   string (`{"type":"record","name":...,"fields":[...]}`).
///
/// The schema also exposes [PubsubSchemaType.typeUnspecified] for
/// completeness (Terraform's default when [type] is omitted) -- in
/// practice prefer one of the typed variants so that the publisher API
/// can validate messages.
///
/// Schemas are versioned: changing [definition] commits a new revision
/// (up to 20 per schema). Topics that reference the schema can pin to a
/// revision range via [GooglePubsubTopic.schemaSettings]; otherwise the
/// latest revision is used.
///
/// Example (Avro schema for an order event):
/// ```dart
/// final orderSchema = GooglePubsubSchema(
///   localName: 'orders_v1',
///   name: TfArg.literal('orders-v1'),
///   type: TfArg.literal(PubsubSchemaType.avro),
///   definition: TfArg.literal(
///     '{"type":"record","name":"Order","fields":['
///     '{"name":"order_id","type":"string"},'
///     '{"name":"total_cents","type":"long"}'
///     ']}',
///   ),
/// );
/// ```
final class GooglePubsubSchema extends Resource {
  static const String tfType = 'google_pubsub_schema';

  GooglePubsubSchema({
    required super.localName,
    required TfArg<String> name,
    TfArg<PubsubSchemaType>? type,
    TfArg<String>? definition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (type != null) 'type': type,
           if (definition != null) 'definition': definition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubSchemaSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');
}
