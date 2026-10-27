// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_relay_hybrid_connection`.
const Set<String> _azurermRelayHybridConnectionSensitive = <String>{};

/// Factory wrapper for `azurerm_relay_hybrid_connection`.
final class AzurermRelayHybridConnection extends Resource {
  static const String tfType = 'azurerm_relay_hybrid_connection';

  AzurermRelayHybridConnection(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> relayNamespaceName,
    TfArg<bool>? requiresClientAuthorization,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? userMetadata,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'relay_namespace_name': relayNamespaceName,
           'requires_client_authorization': ?requiresClientAuthorization,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'user_metadata': ?userMetadata,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRelayHybridConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRelayHybridConnection>`.
  RefTo<AzurermRelayHybridConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `relay_namespace_name` attribute.
  TfRef<String> get relayNamespaceName =>
      TfRef.attribute<String>(this, 'relay_namespace_name');

  /// Reference to `requires_client_authorization` attribute.
  TfRef<bool> get requiresClientAuthorization =>
      TfRef.attribute<bool>(this, 'requires_client_authorization');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `user_metadata` attribute.
  TfRef<String> get userMetadata =>
      TfRef.attribute<String>(this, 'user_metadata');
}
