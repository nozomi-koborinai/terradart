// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../managed_devops/azurerm_managed_devops_pool.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_managed_devops_pool`.
const Set<String> _azurermManagedDevopsPoolSensitive = <String>{};

/// Factory wrapper for `azurerm_managed_devops_pool`.
final class DataAzurermManagedDevopsPool extends Data {
  static const String tfType = 'azurerm_managed_devops_pool';

  DataAzurermManagedDevopsPool(
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
  Set<String> get sensitiveFields => _azurermManagedDevopsPoolSensitive;

  /// A reference to the `azurerm_managed_devops_pool` this data source reads, for
  /// arguments typed `RefTo<AzurermManagedDevopsPool>`.
  RefTo<AzurermManagedDevopsPool> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `azure_devops_organization` attribute.
  TfRef<List<Map<String, Object?>>> get azureDevopsOrganization =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'azure_devops_organization',
      );

  /// Reference to `dev_center_project_id` attribute.
  TfRef<String> get devCenterProjectId =>
      TfRef.attribute<String>(this, 'dev_center_project_id');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maximum_concurrency` attribute.
  TfRef<num> get maximumConcurrency =>
      TfRef.attribute<num>(this, 'maximum_concurrency');

  /// Reference to `stateful_agent` attribute.
  TfRef<List<Map<String, Object?>>> get statefulAgent =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'stateful_agent');

  /// Reference to `stateless_agent` attribute.
  TfRef<List<Map<String, Object?>>> get statelessAgent =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'stateless_agent');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_machine_scale_set_fabric` attribute.
  TfRef<List<Map<String, Object?>>> get virtualMachineScaleSetFabric =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'virtual_machine_scale_set_fabric',
      );

  /// Reference to `work_folder` attribute.
  TfRef<String> get workFolder => TfRef.attribute<String>(this, 'work_folder');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
