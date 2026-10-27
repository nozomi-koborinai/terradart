// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_api_schema`.
const Set<String> _azurermApiManagementApiSchemaSensitive = <String>{};

/// Exactly one of `components`, `definitions`, `value` on `azurerm_api_management_api_schema`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.components(...)`.
sealed class ApiManagementApiSchemaComponentsOrDefinitionsOrValue {
  const ApiManagementApiSchemaComponentsOrDefinitionsOrValue();

  /// Sets `components`.
  const factory ApiManagementApiSchemaComponentsOrDefinitionsOrValue.components(
    TfArg<String> components,
  ) = ApiManagementApiSchemaComponentsOrDefinitionsOrValueComponents;

  /// Sets `definitions`.
  const factory ApiManagementApiSchemaComponentsOrDefinitionsOrValue.definitions(
    TfArg<String> definitions,
  ) = ApiManagementApiSchemaComponentsOrDefinitionsOrValueDefinitions;

  /// Sets `value`.
  const factory ApiManagementApiSchemaComponentsOrDefinitionsOrValue.value(
    TfArg<String> value,
  ) = ApiManagementApiSchemaComponentsOrDefinitionsOrValueChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ApiManagementApiSchemaComponentsOrDefinitionsOrValue.components] choice: sets `components`.
final class ApiManagementApiSchemaComponentsOrDefinitionsOrValueComponents
    extends ApiManagementApiSchemaComponentsOrDefinitionsOrValue {
  const ApiManagementApiSchemaComponentsOrDefinitionsOrValueComponents(
    this.components,
  );

  final TfArg<String> components;

  @internal
  @override
  String get blockKey => 'components';

  @internal
  @override
  Map<String, Object?> encode() => {'components': components.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'components': components};
}

/// The [ApiManagementApiSchemaComponentsOrDefinitionsOrValue.definitions] choice: sets `definitions`.
final class ApiManagementApiSchemaComponentsOrDefinitionsOrValueDefinitions
    extends ApiManagementApiSchemaComponentsOrDefinitionsOrValue {
  const ApiManagementApiSchemaComponentsOrDefinitionsOrValueDefinitions(
    this.definitions,
  );

  final TfArg<String> definitions;

  @internal
  @override
  String get blockKey => 'definitions';

  @internal
  @override
  Map<String, Object?> encode() => {'definitions': definitions.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'definitions': definitions};
}

/// The [ApiManagementApiSchemaComponentsOrDefinitionsOrValue.value] choice: sets `value`.
final class ApiManagementApiSchemaComponentsOrDefinitionsOrValueChoice
    extends ApiManagementApiSchemaComponentsOrDefinitionsOrValue {
  const ApiManagementApiSchemaComponentsOrDefinitionsOrValueChoice(this.value);

  final TfArg<String> value;

  @internal
  @override
  String get blockKey => 'value';

  @internal
  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'value': value};
}

/// Factory wrapper for `azurerm_api_management_api_schema`.
final class AzurermApiManagementApiSchema extends Resource {
  static const String tfType = 'azurerm_api_management_api_schema';

  AzurermApiManagementApiSchema(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> apiName,
    required ApiManagementApiSchemaComponentsOrDefinitionsOrValue
    componentsOrDefinitionsOrValue,
    required TfArg<String> contentType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> schemaId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'api_name': apiName,
           ...componentsOrDefinitionsOrValue.argMap,
           'content_type': contentType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'schema_id': schemaId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementApiSchemaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementApiSchema>`.
  RefTo<AzurermApiManagementApiSchema> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `api_name` attribute.
  TfRef<String> get apiName => TfRef.attribute<String>(this, 'api_name');

  /// Reference to `components` attribute.
  TfRef<String> get components => TfRef.attribute<String>(this, 'components');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `definitions` attribute.
  TfRef<String> get definitions => TfRef.attribute<String>(this, 'definitions');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `schema_id` attribute.
  TfRef<String> get schemaId => TfRef.attribute<String>(this, 'schema_id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
