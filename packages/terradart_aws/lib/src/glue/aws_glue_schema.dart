// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_schema`.
const Set<String> _awsGlueSchemaSensitive = <String>{};

/// Factory wrapper for `aws_glue_schema`.
final class AwsGlueSchema extends Resource {
  static const String tfType = 'aws_glue_schema';

  AwsGlueSchema({
    required super.localName,
    required TfArg<String> compatibility,
    required TfArg<String> dataFormat,
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
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           if (registryArn != null) 'registry_arn': registryArn,
           'schema_definition': schemaDefinition,
           'schema_name': schemaName,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueSchemaSensitive;

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
}
