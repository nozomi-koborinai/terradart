// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_network_manager`.
const Set<String> _azurermNetworkManagerSensitive = <String>{};

/// Typed helper for the `scope` block of
/// `azurerm_network_manager` (derived from provider schema).
@immutable
final class NetworkManagerScope {
  const NetworkManagerScope({this.managementGroupIds, this.subscriptionIds});

  final TfArg<List<String>>? managementGroupIds;

  final TfArg<List<String>>? subscriptionIds;

  @internal
  Map<String, Object?> encode() => {
    'management_group_ids': ?managementGroupIds?.toTfJson(),
    'subscription_ids': ?subscriptionIds?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_network_manager`.
final class AzurermNetworkManager extends Resource {
  static const String tfType = 'azurerm_network_manager';

  AzurermNetworkManager(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<List<String>>? scopeAccesses,
    TfArg<Map<String, String>>? tags,
    required NetworkManagerScope scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scope_accesses': ?scopeAccesses,
           'tags': ?tags,
           'scope': TfArg.literal(scope.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkManagerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManager>`.
  RefTo<AzurermNetworkManager> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cross_tenant_scopes` attribute.
  TfRef<List<Map<String, Object?>>> get crossTenantScopes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cross_tenant_scopes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scope_accesses` attribute.
  TfRef<List<String>> get scopeAccesses =>
      TfRef.attribute<List<String>>(this, 'scope_accesses');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
