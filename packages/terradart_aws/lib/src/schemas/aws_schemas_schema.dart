// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_schemas_schema`.
const Set<String> _awsSchemasSchemaSensitive = <String>{};

/// Schemas Schema enum for `type`.
enum SchemasSchemaType implements TerraformEnum {
  openapi3('OpenApi3'),
  jsonschemadraft4('JSONSchemaDraft4');

  const SchemasSchemaType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_schemas_schema`.
final class AwsSchemasSchema extends Resource {
  static const String tfType = 'aws_schemas_schema';

  AwsSchemasSchema(
    super.localName, {
    required TfArg<String> content,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> registryName,
    TfArg<Map<String, String>>? tags,
    required TfArg<SchemasSchemaType> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content': content,
           'description': ?description,
           'name': name,
           'region': ?region,
           'registry_name': registryName,
           'tags': ?tags,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSchemasSchemaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSchemasSchema>`.
  RefTo<AwsSchemasSchema> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `version_created_date` attribute.
  TfRef<String> get versionCreatedDate =>
      TfRef.attribute<String>(this, 'version_created_date');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `registry_name` attribute.
  TfRef<String> get registryName =>
      TfRef.attribute<String>(this, 'registry_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
