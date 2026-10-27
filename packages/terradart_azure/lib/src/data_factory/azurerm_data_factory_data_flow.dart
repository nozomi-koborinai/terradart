// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_data_flow`.
const Set<String> _azurermDataFactoryDataFlowSensitive = <String>{};

/// Typed helper for the `sink` block of
/// `azurerm_data_factory_data_flow` (derived from provider schema).
@immutable
final class DataFactoryDataFlowSink {
  const DataFactoryDataFlowSink({
    this.description,
    required this.name,
    this.dataset,
    this.flowlet,
    this.linkedService,
    this.rejectedLinkedService,
    this.schemaLinkedService,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final DataFactoryDataFlowDataset? dataset;

  final DataFactoryDataFlowFlowlet? flowlet;

  final DataFactoryDataFlowLinkedService? linkedService;

  final DataFactoryDataFlowRejectedLinkedService? rejectedLinkedService;

  final DataFactoryDataFlowSchemaLinkedService? schemaLinkedService;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'dataset': ?dataset?.encode(),
    'flowlet': ?flowlet?.encode(),
    'linked_service': ?linkedService?.encode(),
    'rejected_linked_service': ?rejectedLinkedService?.encode(),
    'schema_linked_service': ?schemaLinkedService?.encode(),
  };
}

/// Typed helper for the `sink.dataset` block of
/// `azurerm_data_factory_data_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataFactoryDataFlowDataset {
  const DataFactoryDataFlowDataset({required this.name, this.parameters});

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Typed helper for the `sink.flowlet` block of
/// `azurerm_data_factory_data_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataFactoryDataFlowFlowlet {
  const DataFactoryDataFlowFlowlet({
    this.datasetParameters,
    required this.name,
    this.parameters,
  });

  final TfArg<String>? datasetParameters;

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'dataset_parameters': ?datasetParameters?.toTfJson(),
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Typed helper for the `sink.linked_service` block of
/// `azurerm_data_factory_data_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataFactoryDataFlowLinkedService {
  const DataFactoryDataFlowLinkedService({required this.name, this.parameters});

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Typed helper for the `sink.rejected_linked_service` block of
/// `azurerm_data_factory_data_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataFactoryDataFlowRejectedLinkedService {
  const DataFactoryDataFlowRejectedLinkedService({
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

/// Typed helper for the `sink.schema_linked_service` block of
/// `azurerm_data_factory_data_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataFactoryDataFlowSchemaLinkedService {
  const DataFactoryDataFlowSchemaLinkedService({
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

/// Typed helper for the `source` block of
/// `azurerm_data_factory_data_flow` (derived from provider schema).
@immutable
final class DataFactoryDataFlowSource {
  const DataFactoryDataFlowSource({
    this.description,
    required this.name,
    this.dataset,
    this.flowlet,
    this.linkedService,
    this.rejectedLinkedService,
    this.schemaLinkedService,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final DataFactoryDataFlowDataset? dataset;

  final DataFactoryDataFlowFlowlet? flowlet;

  final DataFactoryDataFlowLinkedService? linkedService;

  final DataFactoryDataFlowRejectedLinkedService? rejectedLinkedService;

  final DataFactoryDataFlowSchemaLinkedService? schemaLinkedService;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'dataset': ?dataset?.encode(),
    'flowlet': ?flowlet?.encode(),
    'linked_service': ?linkedService?.encode(),
    'rejected_linked_service': ?rejectedLinkedService?.encode(),
    'schema_linked_service': ?schemaLinkedService?.encode(),
  };
}

/// Typed helper for the `transformation` block of
/// `azurerm_data_factory_data_flow` (derived from provider schema).
@immutable
final class DataFactoryDataFlowTransformation {
  const DataFactoryDataFlowTransformation({
    this.description,
    required this.name,
    this.dataset,
    this.flowlet,
    this.linkedService,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final DataFactoryDataFlowDataset? dataset;

  final DataFactoryDataFlowFlowlet? flowlet;

  final DataFactoryDataFlowLinkedService? linkedService;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'dataset': ?dataset?.encode(),
    'flowlet': ?flowlet?.encode(),
    'linked_service': ?linkedService?.encode(),
  };
}

/// Factory wrapper for `azurerm_data_factory_data_flow`.
final class AzurermDataFactoryDataFlow extends Resource {
  static const String tfType = 'azurerm_data_factory_data_flow';

  AzurermDataFactoryDataFlow(
    super.localName, {
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? folder,
    required TfArg<String> name,
    TfArg<String>? script,
    TfArg<List<String>>? scriptLines,
    required List<DataFactoryDataFlowSink> sink,
    required List<DataFactoryDataFlowSource> source,
    List<DataFactoryDataFlowTransformation>? transformation,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'folder': ?folder,
           'name': name,
           'script': ?script,
           'script_lines': ?scriptLines,
           'sink': TfArg.literal([for (final e in sink) e.encode()]),
           'source': TfArg.literal([for (final e in source) e.encode()]),
           if (transformation != null)
             'transformation': TfArg.literal([
               for (final e in transformation) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDataFactoryDataFlowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryDataFlow>`.
  RefTo<AzurermDataFactoryDataFlow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `script` attribute.
  TfRef<String> get script => TfRef.attribute<String>(this, 'script');

  /// Reference to `script_lines` attribute.
  TfRef<List<String>> get scriptLines =>
      TfRef.attribute<List<String>>(this, 'script_lines');
}
