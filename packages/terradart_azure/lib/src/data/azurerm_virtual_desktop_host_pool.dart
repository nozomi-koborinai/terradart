// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../virtual_desktop/azurerm_virtual_desktop_host_pool.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_desktop_host_pool`.
const Set<String> _azurermVirtualDesktopHostPoolSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_desktop_host_pool`.
final class DataAzurermVirtualDesktopHostPool extends Data {
  static const String tfType = 'azurerm_virtual_desktop_host_pool';

  DataAzurermVirtualDesktopHostPool(
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
  Set<String> get sensitiveFields => _azurermVirtualDesktopHostPoolSensitive;

  /// A reference to the `azurerm_virtual_desktop_host_pool` this data source reads, for
  /// arguments typed `RefTo<AzurermVirtualDesktopHostPool>`.
  RefTo<AzurermVirtualDesktopHostPool> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_rdp_properties` attribute.
  TfRef<String> get customRdpProperties =>
      TfRef.attribute<String>(this, 'custom_rdp_properties');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `load_balancer_type` attribute.
  TfRef<String> get loadBalancerType =>
      TfRef.attribute<String>(this, 'load_balancer_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maximum_sessions_allowed` attribute.
  TfRef<num> get maximumSessionsAllowed =>
      TfRef.attribute<num>(this, 'maximum_sessions_allowed');

  /// Reference to `personal_desktop_assignment_type` attribute.
  TfRef<String> get personalDesktopAssignmentType =>
      TfRef.attribute<String>(this, 'personal_desktop_assignment_type');

  /// Reference to `preferred_app_group_type` attribute.
  TfRef<String> get preferredAppGroupType =>
      TfRef.attribute<String>(this, 'preferred_app_group_type');

  /// Reference to `scheduled_agent_updates` attribute.
  TfRef<List<Map<String, Object?>>> get scheduledAgentUpdates =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'scheduled_agent_updates',
      );

  /// Reference to `start_vm_on_connect` attribute.
  TfRef<bool> get startVmOnConnect =>
      TfRef.attribute<bool>(this, 'start_vm_on_connect');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `validate_environment` attribute.
  TfRef<bool> get validateEnvironment =>
      TfRef.attribute<bool>(this, 'validate_environment');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
