// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_endpoint_storage_container`.
const Set<String> _azurermIothubEndpointStorageContainerSensitive = <String>{
  'connection_string',
};

/// Exactly one of `connection_string`, `endpoint_uri` on `azurerm_iothub_endpoint_storage_container`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.connectionString(...)`.
sealed class IothubEndpointStorageContainerConnection {
  const IothubEndpointStorageContainerConnection();

  /// Sets `connection_string`.
  const factory IothubEndpointStorageContainerConnection.connectionString(
    Sensitive<String> connectionString,
  ) = IothubEndpointStorageContainerConnectionString;

  /// Sets `endpoint_uri`.
  const factory IothubEndpointStorageContainerConnection.endpointUri(
    TfArg<String> endpointUri,
  ) = IothubEndpointStorageContainerConnectionEndpointUri;

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

/// The [IothubEndpointStorageContainerConnection.connectionString] choice: sets `connection_string`.
final class IothubEndpointStorageContainerConnectionString
    extends IothubEndpointStorageContainerConnection {
  const IothubEndpointStorageContainerConnectionString(this.connectionString);

  final Sensitive<String> connectionString;

  @internal
  @override
  String get blockKey => 'connection_string';

  @internal
  @override
  Map<String, Object?> encode() => {
    'connection_string': connectionString.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'connection_string': connectionString,
  };
}

/// The [IothubEndpointStorageContainerConnection.endpointUri] choice: sets `endpoint_uri`.
final class IothubEndpointStorageContainerConnectionEndpointUri
    extends IothubEndpointStorageContainerConnection {
  const IothubEndpointStorageContainerConnectionEndpointUri(this.endpointUri);

  final TfArg<String> endpointUri;

  @internal
  @override
  String get blockKey => 'endpoint_uri';

  @internal
  @override
  Map<String, Object?> encode() => {'endpoint_uri': endpointUri.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'endpoint_uri': endpointUri};
}

/// Factory wrapper for `azurerm_iothub_endpoint_storage_container`.
final class AzurermIothubEndpointStorageContainer extends Resource {
  static const String tfType = 'azurerm_iothub_endpoint_storage_container';

  AzurermIothubEndpointStorageContainer(
    super.localName, {
    TfArg<String>? authenticationType,
    TfArg<num>? batchFrequencyInSeconds,
    required IothubEndpointStorageContainerConnection connection,
    required TfArg<String> containerName,
    TfArg<String>? encoding,
    TfArg<String>? fileNameFormat,
    TfArg<String>? identityId,
    required TfArg<String> iothubId,
    TfArg<num>? maxChunkSizeInBytes,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? subscriptionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_type': ?authenticationType,
           'batch_frequency_in_seconds': ?batchFrequencyInSeconds,
           ...connection.argMap,
           'container_name': containerName,
           'encoding': ?encoding,
           'file_name_format': ?fileNameFormat,
           'identity_id': ?identityId,
           'iothub_id': iothubId,
           'max_chunk_size_in_bytes': ?maxChunkSizeInBytes,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subscription_id': ?subscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermIothubEndpointStorageContainerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubEndpointStorageContainer>`.
  RefTo<AzurermIothubEndpointStorageContainer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `batch_frequency_in_seconds` attribute.
  TfRef<num> get batchFrequencyInSeconds =>
      TfRef.attribute<num>(this, 'batch_frequency_in_seconds');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `container_name` attribute.
  TfRef<String> get containerName =>
      TfRef.attribute<String>(this, 'container_name');

  /// Reference to `encoding` attribute.
  TfRef<String> get encoding => TfRef.attribute<String>(this, 'encoding');

  /// Reference to `endpoint_uri` attribute.
  TfRef<String> get endpointUri =>
      TfRef.attribute<String>(this, 'endpoint_uri');

  /// Reference to `file_name_format` attribute.
  TfRef<String> get fileNameFormat =>
      TfRef.attribute<String>(this, 'file_name_format');

  /// Reference to `identity_id` attribute.
  TfRef<String> get identityId => TfRef.attribute<String>(this, 'identity_id');

  /// Reference to `iothub_id` attribute.
  TfRef<String> get iothubId => TfRef.attribute<String>(this, 'iothub_id');

  /// Reference to `max_chunk_size_in_bytes` attribute.
  TfRef<num> get maxChunkSizeInBytes =>
      TfRef.attribute<num>(this, 'max_chunk_size_in_bytes');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
