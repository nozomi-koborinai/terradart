// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_global_schema`.
const Set<String> _azurermApiManagementGlobalSchemaSensitive = <String>{};

/// Api Management Global Schema enum for `type`.
extension type const ApiManagementGlobalSchemaType._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementGlobalSchemaType.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementGlobalSchemaType.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementGlobalSchemaType.arg(TfArg<String> arg) : this._(arg);

  static const json = ApiManagementGlobalSchemaType._(TfArgLiteral('json'));
  static const xml = ApiManagementGlobalSchemaType._(TfArgLiteral('xml'));

  static const List<ApiManagementGlobalSchemaType> values = [json, xml];
}

/// Factory wrapper for `azurerm_api_management_global_schema`.
final class AzurermApiManagementGlobalSchema extends Resource {
  static const String tfType = 'azurerm_api_management_global_schema';

  AzurermApiManagementGlobalSchema(
    super.localName, {
    required TfArg<String> apiManagementName,
    TfArg<String>? description,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> schemaId,
    required ApiManagementGlobalSchemaType type,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'description': ?description,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'schema_id': schemaId,
           'type': type,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementGlobalSchemaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementGlobalSchema>`.
  RefTo<AzurermApiManagementGlobalSchema> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `schema_id` attribute.
  TfRef<String> get schemaId => TfRef.attribute<String>(this, 'schema_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
