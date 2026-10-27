// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_custom_dataset`.
const Set<String> _azurermDataFactoryCustomDatasetSensitive = <String>{};

/// Typed helper for the `linked_service` block of
/// `azurerm_data_factory_custom_dataset` (derived from provider schema).
@immutable
final class DataFactoryCustomDatasetLinkedService {
  const DataFactoryCustomDatasetLinkedService({
    required this.name,
    this.parameters,
  });

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_custom_dataset`.
final class AzurermDataFactoryCustomDataset extends Resource {
  static const String tfType = 'azurerm_data_factory_custom_dataset';

  AzurermDataFactoryCustomDataset(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? folder,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? schemaJson,
    required TfArg<String> type,
    required TfArg<String> typePropertiesJson,
    required DataFactoryCustomDatasetLinkedService linkedService,
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
           'name': name,
           'parameters': ?parameters,
           'schema_json': ?schemaJson,
           'type': type,
           'type_properties_json': typePropertiesJson,
           'linked_service': TfArg.literal(linkedService.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDataFactoryCustomDatasetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryCustomDataset>`.
  RefTo<AzurermDataFactoryCustomDataset> get ref => RefTo.of(this);

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

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `schema_json` attribute.
  TfRef<String> get schemaJson => TfRef.attribute<String>(this, 'schema_json');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `type_properties_json` attribute.
  TfRef<String> get typePropertiesJson =>
      TfRef.attribute<String>(this, 'type_properties_json');
}
