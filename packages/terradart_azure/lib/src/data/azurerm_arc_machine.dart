// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../arc/azurerm_arc_machine.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_arc_machine`.
const Set<String> _azurermArcMachineSensitive = <String>{};

/// Factory wrapper for `azurerm_arc_machine`.
final class DataAzurermArcMachine extends Data {
  static const String tfType = 'azurerm_arc_machine';

  DataAzurermArcMachine(
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
  Set<String> get sensitiveFields => _azurermArcMachineSensitive;

  /// A reference to the `azurerm_arc_machine` this data source reads, for
  /// arguments typed `RefTo<AzurermArcMachine>`.
  RefTo<AzurermArcMachine> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active_directory_fqdn` attribute.
  TfRef<String> get activeDirectoryFqdn =>
      TfRef.attribute<String>(this, 'active_directory_fqdn');

  /// Reference to `agent` attribute.
  TfRef<List<Map<String, Object?>>> get agent =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'agent');

  /// Reference to `agent_version` attribute.
  TfRef<String> get agentVersion =>
      TfRef.attribute<String>(this, 'agent_version');

  /// Reference to `client_public_key` attribute.
  TfRef<String> get clientPublicKey =>
      TfRef.attribute<String>(this, 'client_public_key');

  /// Reference to `cloud_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get cloudMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cloud_metadata');

  /// Reference to `detected_properties` attribute.
  TfRef<Map<String, String>> get detectedProperties =>
      TfRef.attribute<Map<String, String>>(this, 'detected_properties');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `dns_fqdn` attribute.
  TfRef<String> get dnsFqdn => TfRef.attribute<String>(this, 'dns_fqdn');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `last_status_change_time` attribute.
  TfRef<String> get lastStatusChangeTime =>
      TfRef.attribute<String>(this, 'last_status_change_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `location_data` attribute.
  TfRef<List<Map<String, Object?>>> get locationData =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'location_data');

  /// Reference to `machine_fqdn` attribute.
  TfRef<String> get machineFqdn =>
      TfRef.attribute<String>(this, 'machine_fqdn');

  /// Reference to `mssql_discovered` attribute.
  TfRef<bool> get mssqlDiscovered =>
      TfRef.attribute<bool>(this, 'mssql_discovered');

  /// Reference to `os_name` attribute.
  TfRef<String> get osName => TfRef.attribute<String>(this, 'os_name');

  /// Reference to `os_profile` attribute.
  TfRef<List<Map<String, Object?>>> get osProfile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'os_profile');

  /// Reference to `os_sku` attribute.
  TfRef<String> get osSku => TfRef.attribute<String>(this, 'os_sku');

  /// Reference to `os_type` attribute.
  TfRef<String> get osType => TfRef.attribute<String>(this, 'os_type');

  /// Reference to `os_version` attribute.
  TfRef<String> get osVersion => TfRef.attribute<String>(this, 'os_version');

  /// Reference to `parent_cluster_resource_id` attribute.
  TfRef<String> get parentClusterResourceId =>
      TfRef.attribute<String>(this, 'parent_cluster_resource_id');

  /// Reference to `private_link_scope_resource_id` attribute.
  TfRef<String> get privateLinkScopeResourceId =>
      TfRef.attribute<String>(this, 'private_link_scope_resource_id');

  /// Reference to `service_status` attribute.
  TfRef<List<Map<String, Object?>>> get serviceStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_status');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vm_id` attribute.
  TfRef<String> get vmId => TfRef.attribute<String>(this, 'vm_id');

  /// Reference to `vm_uuid` attribute.
  TfRef<String> get vmUuid => TfRef.attribute<String>(this, 'vm_uuid');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
