// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../stack_hci/azurerm_stack_hci_cluster.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stack_hci_cluster`.
const Set<String> _azurermStackHciClusterSensitive = <String>{};

/// Factory wrapper for `azurerm_stack_hci_cluster`.
final class DataAzurermStackHciCluster extends Data {
  static const String tfType = 'azurerm_stack_hci_cluster';

  DataAzurermStackHciCluster(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStackHciClusterSensitive;

  /// A reference to the `azurerm_stack_hci_cluster` this data source reads, for
  /// arguments typed `RefTo<AzurermStackHciCluster>`.
  RefTo<AzurermStackHciCluster> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automanage_configuration_id` attribute.
  TfRef<String> get automanageConfigurationId =>
      TfRef.attribute<String>(this, 'automanage_configuration_id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `cloud_id` attribute.
  TfRef<String> get cloudId => TfRef.attribute<String>(this, 'cloud_id');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_provider_object_id` attribute.
  TfRef<String> get resourceProviderObjectId =>
      TfRef.attribute<String>(this, 'resource_provider_object_id');

  /// Reference to `service_endpoint` attribute.
  TfRef<String> get serviceEndpoint =>
      TfRef.attribute<String>(this, 'service_endpoint');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
