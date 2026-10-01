// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_schema`.
const Set<String> _awsGlueSchemaSensitive = <String>{};

/// Glue Schema enum for `compatibility`.
extension type const GlueSchemaCompatibility._(TfArg<String> _)
    implements TfArg<String> {
  GlueSchemaCompatibility.variable(String name) : this._(TfArg.variable(name));
  GlueSchemaCompatibility.expression(String template)
    : this._(TfArg.expression(template));
  const GlueSchemaCompatibility.arg(TfArg<String> arg) : this._(arg);

  static const none = GlueSchemaCompatibility._(TfArgLiteral('NONE'));
  static const disabled = GlueSchemaCompatibility._(TfArgLiteral('DISABLED'));
  static const backward = GlueSchemaCompatibility._(TfArgLiteral('BACKWARD'));
  static const backwardAll = GlueSchemaCompatibility._(
    TfArgLiteral('BACKWARD_ALL'),
  );
  static const forward = GlueSchemaCompatibility._(TfArgLiteral('FORWARD'));
  static const forwardAll = GlueSchemaCompatibility._(
    TfArgLiteral('FORWARD_ALL'),
  );
  static const full = GlueSchemaCompatibility._(TfArgLiteral('FULL'));
  static const fullAll = GlueSchemaCompatibility._(TfArgLiteral('FULL_ALL'));

  static const List<GlueSchemaCompatibility> values = [
    none,
    disabled,
    backward,
    backwardAll,
    forward,
    forwardAll,
    full,
    fullAll,
  ];
}

/// Glue Schema Data enum for `data_format`.
extension type const GlueSchemaDataFormat._(TfArg<String> _)
    implements TfArg<String> {
  GlueSchemaDataFormat.variable(String name) : this._(TfArg.variable(name));
  GlueSchemaDataFormat.expression(String template)
    : this._(TfArg.expression(template));
  const GlueSchemaDataFormat.arg(TfArg<String> arg) : this._(arg);

  static const avro = GlueSchemaDataFormat._(TfArgLiteral('AVRO'));
  static const json = GlueSchemaDataFormat._(TfArgLiteral('JSON'));
  static const protobuf = GlueSchemaDataFormat._(TfArgLiteral('PROTOBUF'));

  static const List<GlueSchemaDataFormat> values = [avro, json, protobuf];
}

/// Factory wrapper for `aws_glue_schema`.
final class AwsGlueSchema extends Resource {
  static const String tfType = 'aws_glue_schema';

  AwsGlueSchema(
    super.localName, {
    required GlueSchemaCompatibility compatibility,
    required GlueSchemaDataFormat dataFormat,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<String>? registryArn,
    required TfArg<String> schemaDefinition,
    required TfArg<String> schemaName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'compatibility': compatibility,
           'data_format': dataFormat,
           'description': ?description,
           'region': ?region,
           'registry_arn': ?registryArn,
           'schema_definition': schemaDefinition,
           'schema_name': schemaName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueSchemaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueSchema>`.
  RefTo<AwsGlueSchema> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `latest_schema_version` attribute.
  TfRef<num> get latestSchemaVersion =>
      TfRef.attribute<num>(this, 'latest_schema_version');

  /// Reference to `next_schema_version` attribute.
  TfRef<num> get nextSchemaVersion =>
      TfRef.attribute<num>(this, 'next_schema_version');

  /// Reference to `registry_name` attribute.
  TfRef<String> get registryName =>
      TfRef.attribute<String>(this, 'registry_name');

  /// Reference to `schema_checkpoint` attribute.
  TfRef<num> get schemaCheckpoint =>
      TfRef.attribute<num>(this, 'schema_checkpoint');

  /// Reference to `compatibility` attribute.
  TfRef<String> get compatibility =>
      TfRef.attribute<String>(this, 'compatibility');

  /// Reference to `data_format` attribute.
  TfRef<String> get dataFormat => TfRef.attribute<String>(this, 'data_format');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `registry_arn` attribute.
  TfRef<String> get registryArn =>
      TfRef.attribute<String>(this, 'registry_arn');

  /// Reference to `schema_definition` attribute.
  TfRef<String> get schemaDefinition =>
      TfRef.attribute<String>(this, 'schema_definition');

  /// Reference to `schema_name` attribute.
  TfRef<String> get schemaName => TfRef.attribute<String>(this, 'schema_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
