// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_data_factory_trigger_blob_event`.
const Set<String> _azurermDataFactoryTriggerBlobEventSensitive = <String>{};

/// Data Factory Trigger Blob Event enum for `events`.
extension type const DataFactoryTriggerBlobEventEvents._(TfArg<String> _)
    implements TfArg<String> {
  DataFactoryTriggerBlobEventEvents.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryTriggerBlobEventEvents.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryTriggerBlobEventEvents.arg(TfArg<String> arg) : this._(arg);

  static const microsoftStorageBlobcreated =
      DataFactoryTriggerBlobEventEvents._(
        TfArgLiteral('Microsoft.Storage.BlobCreated'),
      );
  static const microsoftStorageBlobdeleted =
      DataFactoryTriggerBlobEventEvents._(
        TfArgLiteral('Microsoft.Storage.BlobDeleted'),
      );

  static const List<DataFactoryTriggerBlobEventEvents> values = [
    microsoftStorageBlobcreated,
    microsoftStorageBlobdeleted,
  ];
}

/// Typed helper for the `pipeline` block of
/// `azurerm_data_factory_trigger_blob_event` (derived from provider schema).
@immutable
final class DataFactoryTriggerBlobEventPipeline {
  const DataFactoryTriggerBlobEventPipeline({
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

/// Factory wrapper for `azurerm_data_factory_trigger_blob_event`.
final class AzurermDataFactoryTriggerBlobEvent extends Resource {
  static const String tfType = 'azurerm_data_factory_trigger_blob_event';

  AzurermDataFactoryTriggerBlobEvent(
    super.localName, {
    TfArg<bool>? activated,
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    TfArg<String>? blobPathBeginsWith,
    TfArg<String>? blobPathEndsWith,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    required EnumList<DataFactoryTriggerBlobEventEvents> events,
    TfArg<bool>? ignoreEmptyBlobs,
    required TfArg<String> name,
    required RefTo<AzurermStorageAccount> storageAccountId,
    required List<DataFactoryTriggerBlobEventPipeline> pipeline,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'activated': ?activated,
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'blob_path_begins_with': ?blobPathBeginsWith,
           'blob_path_ends_with': ?blobPathEndsWith,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'events': events,
           'ignore_empty_blobs': ?ignoreEmptyBlobs,
           'name': name,
           'storage_account_id': storageAccountId.encodeAs('id'),
           'pipeline': TfArg.literal([for (final e in pipeline) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryTriggerBlobEventSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryTriggerBlobEvent>`.
  RefTo<AzurermDataFactoryTriggerBlobEvent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated` attribute.
  TfRef<bool> get activated => TfRef.attribute<bool>(this, 'activated');

  /// Reference to `additional_properties` attribute.
  TfRef<Map<String, String>> get additionalProperties =>
      TfRef.attribute<Map<String, String>>(this, 'additional_properties');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `blob_path_begins_with` attribute.
  TfRef<String> get blobPathBeginsWith =>
      TfRef.attribute<String>(this, 'blob_path_begins_with');

  /// Reference to `blob_path_ends_with` attribute.
  TfRef<String> get blobPathEndsWith =>
      TfRef.attribute<String>(this, 'blob_path_ends_with');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `events` attribute.
  TfRef<List<String>> get events =>
      TfRef.attribute<List<String>>(this, 'events');

  /// Reference to `ignore_empty_blobs` attribute.
  TfRef<bool> get ignoreEmptyBlobs =>
      TfRef.attribute<bool>(this, 'ignore_empty_blobs');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
