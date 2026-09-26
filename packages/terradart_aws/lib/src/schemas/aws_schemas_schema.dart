// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_schemas_schema`.
const Set<String> _awsSchemasSchemaSensitive = <String>{};

/// Factory wrapper for `aws_schemas_schema`.
final class AwsSchemasSchema extends Resource {
  static const String tfType = 'aws_schemas_schema';

  AwsSchemasSchema({
    required super.localName,
    required TfArg<String> content,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> registryName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content': content,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           'registry_name': registryName,
           if (tags != null) 'tags': tags,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSchemasSchemaSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
