// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_schema`.
const Set<String> _googlePubsubSchemaSensitive = <String>{};

/// Pubsub Schema enum for `type`.
extension type const PubsubSchemaType._(TfArg<String> _)
    implements TfArg<String> {
  PubsubSchemaType.variable(String name) : this._(TfArg.variable(name));
  PubsubSchemaType.expression(String template)
    : this._(TfArg.expression(template));
  const PubsubSchemaType.arg(TfArg<String> arg) : this._(arg);

  static const typeUnspecified = PubsubSchemaType._(
    TfArgLiteral('TYPE_UNSPECIFIED'),
  );
  static const protocolBuffer = PubsubSchemaType._(
    TfArgLiteral('PROTOCOL_BUFFER'),
  );
  static const avro = PubsubSchemaType._(TfArgLiteral('AVRO'));

  static const List<PubsubSchemaType> values = [
    typeUnspecified,
    protocolBuffer,
    avro,
  ];
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
///   'orders_v1',
///   name: TfArg.literal('orders-v1'),
///   type: PubsubSchemaType.avro,
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

  GooglePubsubSchema(
    super.localName, {
    required TfArg<String> name,
    PubsubSchemaType? type,
    TfArg<String>? definition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'type': ?type,
           'definition': ?definition,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubSchemaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePubsubSchema>`.
  RefTo<GooglePubsubSchema> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `definition` attribute.
  TfRef<String> get definition => TfRef.attribute<String>(this, 'definition');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
