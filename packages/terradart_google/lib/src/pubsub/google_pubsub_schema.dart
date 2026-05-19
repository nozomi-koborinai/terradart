// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_schema`.
const Set<String> _googlePubsubSchemaSensitive = <String>{};

// ===========================================================================
// Enums (sourced from schema "Possible values" prose)
// ===========================================================================

/// `type` -- the payload shape this schema validates. Schema default
/// `TYPE_UNSPECIFIED` (no validation); pick [protocolBuffer] or [avro]
/// to enable publisher-side validation of message payloads.
enum PubsubSchemaType {
  /// Default. No payload validation is performed. Equivalent to omitting
  /// `type` in HCL.
  typeUnspecified('TYPE_UNSPECIFIED'),

  /// `definition` holds a Protobuf source string with a single
  /// `message {...}` definition.
  protocolBuffer('PROTOCOL_BUFFER'),

  /// `definition` holds an Avro JSON schema string.
  avro('AVRO');

  const PubsubSchemaType(this.terraformValue);
  final String terraformValue;
}

/// Factory wrapper for `google_pubsub_schema` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A Pub/Sub schema declares the shape of messages a topic publishes.
/// Schemas are independent of topics -- a topic opts into a schema via
/// its `schema_settings` block (see [GooglePubsubTopic.schemaSettings]),
/// and the same schema can back any number of topics.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_pubsub_schema.`).
/// - `name`: schema ID -- the final component of the schema's resource
///   name. Pass `TfArg.literal('orders-v1')` or `TfArg.ref(...)`.
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
///
/// Composition pattern: extends `Resource<$GooglePubsubSchema>` for
/// runtime behavior. `argMap` stores `TfArg<dynamic>?` entries directly.
/// Synth's JSON-encoding pass walks them and calls `arg.toTfJson()` to
/// encode at write time.
final class GooglePubsubSchema extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_pubsub_schema';

  GooglePubsubSchema({
    required super.localName,
    required TfArg<String> name,
    TfArg<PubsubSchemaType>? type,
    TfArg<String>? definition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           if (type != null) 'type': type,
           if (definition != null) 'definition': definition,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googlePubsubSchemaSensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `schema.nameRef` -> `${google_pubsub_schema.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/schemas/{name}`). Topics' `schema_settings.schema`
  /// expects this full-path form -- pass `TfArg.ref(schema.id)`.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
