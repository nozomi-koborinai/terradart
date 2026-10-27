// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../batch/azurerm_batch_pool.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_batch_pool`.
const Set<String> _azurermBatchPoolSensitive = <String>{};

/// Factory wrapper for `azurerm_batch_pool`.
final class DataAzurermBatchPool extends Data {
  static const String tfType = 'azurerm_batch_pool';

  DataAzurermBatchPool(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBatchPoolSensitive;

  /// A reference to the `azurerm_batch_pool` this data source reads, for
  /// arguments typed `RefTo<AzurermBatchPool>`.
  RefTo<AzurermBatchPool> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_scale` attribute.
  TfRef<List<Map<String, Object?>>> get autoScale =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'auto_scale');

  /// Reference to `container_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get containerConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'container_configuration',
      );

  /// Reference to `data_disks` attribute.
  TfRef<List<Map<String, Object?>>> get dataDisks =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'data_disks');

  /// Reference to `disk_encryption` attribute.
  TfRef<List<Map<String, Object?>>> get diskEncryption =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'disk_encryption');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `extensions` attribute.
  TfRef<List<Map<String, Object?>>> get extensions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'extensions');

  /// Reference to `fixed_scale` attribute.
  TfRef<List<Map<String, Object?>>> get fixedScale =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'fixed_scale');

  /// Reference to `inter_node_communication` attribute.
  TfRef<String> get interNodeCommunication =>
      TfRef.attribute<String>(this, 'inter_node_communication');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `max_tasks_per_node` attribute.
  TfRef<num> get maxTasksPerNode =>
      TfRef.attribute<num>(this, 'max_tasks_per_node');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `mount` attribute.
  TfRef<List<Map<String, Object?>>> get mount =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'mount');

  /// Reference to `network_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get networkConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'network_configuration',
      );

  /// Reference to `node_agent_sku_id` attribute.
  TfRef<String> get nodeAgentSkuId =>
      TfRef.attribute<String>(this, 'node_agent_sku_id');

  /// Reference to `node_placement` attribute.
  TfRef<List<Map<String, Object?>>> get nodePlacement =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'node_placement');

  /// Reference to `os_disk_placement` attribute.
  TfRef<String> get osDiskPlacement =>
      TfRef.attribute<String>(this, 'os_disk_placement');

  /// Reference to `start_task` attribute.
  TfRef<List<Map<String, Object?>>> get startTask =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'start_task');

  /// Reference to `storage_image_reference` attribute.
  TfRef<List<Map<String, Object?>>> get storageImageReference =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'storage_image_reference',
      );

  /// Reference to `task_scheduling_policy` attribute.
  TfRef<List<Map<String, Object?>>> get taskSchedulingPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'task_scheduling_policy',
      );

  /// Reference to `user_accounts` attribute.
  TfRef<List<Map<String, Object?>>> get userAccounts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'user_accounts');

  /// Reference to `vm_size` attribute.
  TfRef<String> get vmSize => TfRef.attribute<String>(this, 'vm_size');

  /// Reference to `windows` attribute.
  TfRef<List<Map<String, Object?>>> get windows =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'windows');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
