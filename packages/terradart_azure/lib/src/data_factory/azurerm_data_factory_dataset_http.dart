// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_dataset_http`.
const Set<String> _azurermDataFactoryDatasetHttpSensitive = <String>{};

/// Typed helper for the `schema_column` block of
/// `azurerm_data_factory_dataset_http` (derived from provider schema).
@immutable
final class DataFactoryDatasetHttpSchemaColumn {
  const DataFactoryDatasetHttpSchemaColumn({
    this.description,
    required this.name,
    this.type,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<String>? type;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_dataset_http`.
final class AzurermDataFactoryDatasetHttp extends Resource {
  static const String tfType = 'azurerm_data_factory_dataset_http';

  AzurermDataFactoryDatasetHttp(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? folder,
    required TfArg<String> linkedServiceName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? relativeUrl,
    TfArg<String>? requestBody,
    TfArg<String>? requestMethod,
    List<DataFactoryDatasetHttpSchemaColumn>? schemaColumn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'folder': ?folder,
           'linked_service_name': linkedServiceName,
           'name': name,
           'parameters': ?parameters,
           'relative_url': ?relativeUrl,
           'request_body': ?requestBody,
           'request_method': ?requestMethod,
           if (schemaColumn != null)
             'schema_column': TfArg.literal([
               for (final e in schemaColumn) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDataFactoryDatasetHttpSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryDatasetHttp>`.
  RefTo<AzurermDataFactoryDatasetHttp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_properties` attribute.
  TfRef<Map<String, String>> get additionalProperties =>
      TfRef.attribute<Map<String, String>>(this, 'additional_properties');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `linked_service_name` attribute.
  TfRef<String> get linkedServiceName =>
      TfRef.attribute<String>(this, 'linked_service_name');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `relative_url` attribute.
  TfRef<String> get relativeUrl =>
      TfRef.attribute<String>(this, 'relative_url');

  /// Reference to `request_body` attribute.
  TfRef<String> get requestBody =>
      TfRef.attribute<String>(this, 'request_body');

  /// Reference to `request_method` attribute.
  TfRef<String> get requestMethod =>
      TfRef.attribute<String>(this, 'request_method');
}
