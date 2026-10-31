// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iot_security_solution`.
const Set<String> _azurermIotSecuritySolutionSensitive = <String>{};

/// Iot Security Solution Events To enum for `events_to_export`.
extension type const IotSecuritySolutionEventsToExport._(TfArg<String> _)
    implements TfArg<String> {
  IotSecuritySolutionEventsToExport.variable(String name)
    : this._(TfArg.variable(name));
  IotSecuritySolutionEventsToExport.expression(String template)
    : this._(TfArg.expression(template));
  const IotSecuritySolutionEventsToExport.arg(TfArg<String> arg) : this._(arg);

  static const rawevents = IotSecuritySolutionEventsToExport._(
    TfArgLiteral('RawEvents'),
  );

  static const List<IotSecuritySolutionEventsToExport> values = [rawevents];
}

/// Typed helper for the `additional_workspace` block of
/// `azurerm_iot_security_solution` (derived from provider schema).
@immutable
final class IotSecuritySolutionAdditionalWorkspace {
  const IotSecuritySolutionAdditionalWorkspace({
    required this.dataTypes,
    required this.workspaceId,
  });

  final TfArg<List<String>> dataTypes;

  final TfArg<String> workspaceId;

  @internal
  Map<String, Object?> encode() => {
    'data_types': dataTypes.toTfJson(),
    'workspace_id': workspaceId.toTfJson(),
  };
}

/// Typed helper for the `recommendations` block of
/// `azurerm_iot_security_solution` (derived from provider schema).
@immutable
final class IotSecuritySolutionRecommendations {
  const IotSecuritySolutionRecommendations({
    this.acrAuthentication,
    this.agentSendUnutilizedMsg,
    this.baseline,
    this.edgeHubMemOptimize,
    this.edgeLoggingOption,
    this.inconsistentModuleSettings,
    this.installAgent,
    this.ipFilterDenyAll,
    this.ipFilterPermissiveRule,
    this.openPorts,
    this.permissiveFirewallPolicy,
    this.permissiveInputFirewallRules,
    this.permissiveOutputFirewallRules,
    this.privilegedDockerOptions,
    this.sharedCredentials,
    this.vulnerableTlsCipherSuite,
  });

  final TfArg<bool>? acrAuthentication;

  final TfArg<bool>? agentSendUnutilizedMsg;

  final TfArg<bool>? baseline;

  final TfArg<bool>? edgeHubMemOptimize;

  final TfArg<bool>? edgeLoggingOption;

  final TfArg<bool>? inconsistentModuleSettings;

  final TfArg<bool>? installAgent;

  final TfArg<bool>? ipFilterDenyAll;

  final TfArg<bool>? ipFilterPermissiveRule;

  final TfArg<bool>? openPorts;

  final TfArg<bool>? permissiveFirewallPolicy;

  final TfArg<bool>? permissiveInputFirewallRules;

  final TfArg<bool>? permissiveOutputFirewallRules;

  final TfArg<bool>? privilegedDockerOptions;

  final TfArg<bool>? sharedCredentials;

  final TfArg<bool>? vulnerableTlsCipherSuite;

  @internal
  Map<String, Object?> encode() => {
    'acr_authentication': ?acrAuthentication?.toTfJson(),
    'agent_send_unutilized_msg': ?agentSendUnutilizedMsg?.toTfJson(),
    'baseline': ?baseline?.toTfJson(),
    'edge_hub_mem_optimize': ?edgeHubMemOptimize?.toTfJson(),
    'edge_logging_option': ?edgeLoggingOption?.toTfJson(),
    'inconsistent_module_settings': ?inconsistentModuleSettings?.toTfJson(),
    'install_agent': ?installAgent?.toTfJson(),
    'ip_filter_deny_all': ?ipFilterDenyAll?.toTfJson(),
    'ip_filter_permissive_rule': ?ipFilterPermissiveRule?.toTfJson(),
    'open_ports': ?openPorts?.toTfJson(),
    'permissive_firewall_policy': ?permissiveFirewallPolicy?.toTfJson(),
    'permissive_input_firewall_rules': ?permissiveInputFirewallRules
        ?.toTfJson(),
    'permissive_output_firewall_rules': ?permissiveOutputFirewallRules
        ?.toTfJson(),
    'privileged_docker_options': ?privilegedDockerOptions?.toTfJson(),
    'shared_credentials': ?sharedCredentials?.toTfJson(),
    'vulnerable_tls_cipher_suite': ?vulnerableTlsCipherSuite?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_iot_security_solution`.
final class AzurermIotSecuritySolution extends Resource {
  static const String tfType = 'azurerm_iot_security_solution';

  AzurermIotSecuritySolution(
    super.localName, {
    TfArg<List<String>>? disabledDataSources,
    required TfArg<String> displayName,
    TfArg<bool>? enabled,
    List<IotSecuritySolutionEventsToExport>? eventsToExport,
    required TfArg<List<String>> iothubIds,
    required TfArg<String> location,
    TfArg<String>? logAnalyticsWorkspaceId,
    TfArg<bool>? logUnmaskedIpsEnabled,
    required TfArg<String> name,
    TfArg<String>? queryForResources,
    TfArg<List<String>>? querySubscriptionIds,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<IotSecuritySolutionAdditionalWorkspace>? additionalWorkspace,
    IotSecuritySolutionRecommendations? recommendations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disabled_data_sources': ?disabledDataSources,
           'display_name': displayName,
           'enabled': ?enabled,
           if (eventsToExport != null)
             'events_to_export': TfArg.literal([
               for (final e in eventsToExport) e.toTfJson(),
             ]),
           'iothub_ids': iothubIds,
           'location': location,
           'log_analytics_workspace_id': ?logAnalyticsWorkspaceId,
           'log_unmasked_ips_enabled': ?logUnmaskedIpsEnabled,
           'name': name,
           'query_for_resources': ?queryForResources,
           'query_subscription_ids': ?querySubscriptionIds,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (additionalWorkspace != null)
             'additional_workspace': TfArg.literal([
               for (final e in additionalWorkspace) e.encode(),
             ]),
           if (recommendations != null)
             'recommendations': TfArg.literal(recommendations.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIotSecuritySolutionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIotSecuritySolution>`.
  RefTo<AzurermIotSecuritySolution> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disabled_data_sources` attribute.
  TfRef<List<String>> get disabledDataSources =>
      TfRef.attribute<List<String>>(this, 'disabled_data_sources');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `events_to_export` attribute.
  TfRef<List<String>> get eventsToExport =>
      TfRef.attribute<List<String>>(this, 'events_to_export');

  /// Reference to `iothub_ids` attribute.
  TfRef<List<String>> get iothubIds =>
      TfRef.attribute<List<String>>(this, 'iothub_ids');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `log_unmasked_ips_enabled` attribute.
  TfRef<bool> get logUnmaskedIpsEnabled =>
      TfRef.attribute<bool>(this, 'log_unmasked_ips_enabled');

  /// Reference to `query_for_resources` attribute.
  TfRef<String> get queryForResources =>
      TfRef.attribute<String>(this, 'query_for_resources');

  /// Reference to `query_subscription_ids` attribute.
  TfRef<List<String>> get querySubscriptionIds =>
      TfRef.attribute<List<String>>(this, 'query_subscription_ids');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
