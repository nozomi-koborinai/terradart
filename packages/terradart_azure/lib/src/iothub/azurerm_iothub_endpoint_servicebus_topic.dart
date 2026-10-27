// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_endpoint_servicebus_topic`.
const Set<String> _azurermIothubEndpointServicebusTopicSensitive = <String>{
  'connection_string',
};

/// Exactly one of `connection_string`, `endpoint_uri` on `azurerm_iothub_endpoint_servicebus_topic`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.connectionString(...)`.
sealed class IothubEndpointServicebusTopicConnectionStringOrEndpointUri {
  const IothubEndpointServicebusTopicConnectionStringOrEndpointUri();

  /// Sets `connection_string`.
  const factory IothubEndpointServicebusTopicConnectionStringOrEndpointUri.connectionString(
    Sensitive<String> connectionString,
  ) = IothubEndpointServicebusTopicConnectionStringOrEndpointUriConnectionString;

  /// Sets `endpoint_uri`.
  const factory IothubEndpointServicebusTopicConnectionStringOrEndpointUri.endpointUri(
    TfArg<String> endpointUri,
  ) = IothubEndpointServicebusTopicConnectionStringOrEndpointUriChoice;

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

/// The [IothubEndpointServicebusTopicConnectionStringOrEndpointUri.connectionString] choice: sets `connection_string`.
final class IothubEndpointServicebusTopicConnectionStringOrEndpointUriConnectionString
    extends IothubEndpointServicebusTopicConnectionStringOrEndpointUri {
  const IothubEndpointServicebusTopicConnectionStringOrEndpointUriConnectionString(
    this.connectionString,
  );

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

/// The [IothubEndpointServicebusTopicConnectionStringOrEndpointUri.endpointUri] choice: sets `endpoint_uri`.
final class IothubEndpointServicebusTopicConnectionStringOrEndpointUriChoice
    extends IothubEndpointServicebusTopicConnectionStringOrEndpointUri {
  const IothubEndpointServicebusTopicConnectionStringOrEndpointUriChoice(
    this.endpointUri,
  );

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

/// Factory wrapper for `azurerm_iothub_endpoint_servicebus_topic`.
final class AzurermIothubEndpointServicebusTopic extends Resource {
  static const String tfType = 'azurerm_iothub_endpoint_servicebus_topic';

  AzurermIothubEndpointServicebusTopic(
    super.localName, {
    TfArg<String>? authenticationType,
    required IothubEndpointServicebusTopicConnectionStringOrEndpointUri
    connectionStringOrEndpointUri,
    TfArg<String>? entityPath,
    TfArg<String>? identityId,
    required TfArg<String> iothubId,
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
           ...connectionStringOrEndpointUri.argMap,
           'entity_path': ?entityPath,
           'identity_id': ?identityId,
           'iothub_id': iothubId,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subscription_id': ?subscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermIothubEndpointServicebusTopicSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubEndpointServicebusTopic>`.
  RefTo<AzurermIothubEndpointServicebusTopic> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `endpoint_uri` attribute.
  TfRef<String> get endpointUri =>
      TfRef.attribute<String>(this, 'endpoint_uri');

  /// Reference to `entity_path` attribute.
  TfRef<String> get entityPath => TfRef.attribute<String>(this, 'entity_path');

  /// Reference to `identity_id` attribute.
  TfRef<String> get identityId => TfRef.attribute<String>(this, 'identity_id');

  /// Reference to `iothub_id` attribute.
  TfRef<String> get iothubId => TfRef.attribute<String>(this, 'iothub_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
