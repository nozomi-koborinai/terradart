import '../../ir/resource_def.dart';
import 'provider_rules.dart';

final class AzureProviderRules extends ProviderRules {
  const AzureProviderRules();

  @override
  String get providerId => 'hashicorp/azurerm';

  @override
  String get terraformTypePrefix => 'azurerm_';

  @override
  bool get typedNestedDefaults => true;

  @override
  bool get derivedEnumDefaults => true;

  @override
  bool get exactlyOneDefaults => true;

  @override
  Map<String, String> get outputDirAliases => _aliases;

  @override
  List<String> universalGetters(ResourceDef def) {
    final attrs = def.root.attributes.map((a) => a.name).toSet();
    if (attrs.contains('id')) {
      return ["TfRef<String> get id => TfRef.attribute<String>(this, 'id');"];
    }
    return const [];
  }

  static const Map<String, String> _aliases = {
    'data_factory': 'data_factory',
    'data_protection': 'data_protection',
    'data_share': 'data_share',
    'api_management': 'api_management',
    'api_connection': 'logic',
    'app_configuration': 'app_configuration',
    'app_service': 'app_service',
    'function_app': 'app_service',
    'linux_function': 'app_service',
    'linux_web': 'app_service',
    'windows_function': 'app_service',
    'windows_web': 'app_service',
    'service_plan': 'app_service',
    'static_web': 'static_web_app',
    'source_control': 'source_control',
    'container_app': 'container_app',
    'container_registry': 'container_registry',
    'container_connected': 'container_registry',
    'container_group': 'container_group',
    'key_vault': 'key_vault',
    'dedicated_hardware_security_module': 'key_vault',
    'log_analytics': 'log_analytics',
    'machine_learning': 'machine_learning',
    'linux_virtual': 'compute',
    'windows_virtual': 'compute',
    'virtual_machine': 'compute',
    'managed_disk': 'compute',
    'shared_image': 'compute',
    'availability': 'compute',
    'capacity': 'compute',
    'dedicated_host': 'compute',
    'disk': 'compute',
    'gallery': 'compute',
    'image': 'compute',
    'orchestrated': 'compute',
    'proximity': 'compute',
    'snapshot': 'compute',
    'ssh': 'compute',
    'virtual_desktop': 'virtual_desktop',
    'virtual_hub': 'virtual_wan',
    'virtual_wan': 'virtual_wan',
    'virtual_network': 'network',
    'private_dns': 'private_dns',
    'private_endpoint': 'network',
    'private_link': 'network',
    'public_ip': 'network',
    'local_network': 'network',
    'point_to': 'network',
    'custom_ip': 'network',
    'application_gateway': 'network',
    'application_load': 'network',
    'application_security': 'network',
    'web_application': 'network',
    'application_insights': 'application_insights',
    'web_pubsub': 'web_pubsub',
    'resource_group': 'resource',
    'resource_deployment': 'resource',
    'resource_policy': 'resource',
    'resource_provider': 'resource',
    'resource_management': 'resource',
    'managed_application': 'managed_application',
    'managed_devops': 'managed_devops',
    'managed_lustre': 'managed_lustre',
    'managed_redis': 'managed_redis',
    'arc_kubernetes': 'arc',
    'arc_machine': 'arc',
    'arc_private': 'arc',
    'arc_resource': 'arc',
    'palo_alto': 'palo_alto',
    'site_recovery': 'site_recovery',
    'stream_analytics': 'stream_analytics',
    'spring_cloud': 'spring_cloud',
    'stack_hci': 'stack_hci',
    'system_center': 'system_center',
    'dev_center': 'dev_center',
    'dev_test': 'dev_test',
    'new_relic': 'new_relic',
    'service_fabric': 'service_fabric',
    'active_directory': 'active_directory',
    'user_assigned': 'identity',
    'load_test': 'load_test',
    'custom_provider': 'custom_provider',
  };
}
