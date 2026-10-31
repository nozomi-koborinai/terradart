// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_registry`.
const Set<String> _azurermContainerRegistrySensitive = <String>{
  'admin_password',
};

/// Container Registry Network Rule Bypass enum for `network_rule_bypass_option`.
extension type const ContainerRegistryNetworkRuleBypassOption._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryNetworkRuleBypassOption.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryNetworkRuleBypassOption.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryNetworkRuleBypassOption.arg(TfArg<String> arg)
    : this._(arg);

  static const azureservices = ContainerRegistryNetworkRuleBypassOption._(
    TfArgLiteral('AzureServices'),
  );
  static const none = ContainerRegistryNetworkRuleBypassOption._(
    TfArgLiteral('None'),
  );

  static const List<ContainerRegistryNetworkRuleBypassOption> values = [
    azureservices,
    none,
  ];
}

/// Container Registry Role Assignment enum for `role_assignment_mode`.
extension type const ContainerRegistryRoleAssignmentMode._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryRoleAssignmentMode.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryRoleAssignmentMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryRoleAssignmentMode.arg(TfArg<String> arg)
    : this._(arg);

  static const abacrepositorypermissions =
      ContainerRegistryRoleAssignmentMode._(
        TfArgLiteral('AbacRepositoryPermissions'),
      );
  static const legacyregistrypermissions =
      ContainerRegistryRoleAssignmentMode._(
        TfArgLiteral('LegacyRegistryPermissions'),
      );

  static const List<ContainerRegistryRoleAssignmentMode> values = [
    abacrepositorypermissions,
    legacyregistrypermissions,
  ];
}

/// Container Registry enum for `sku`.
extension type const ContainerRegistrySku._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistrySku.variable(String name) : this._(TfArg.variable(name));
  ContainerRegistrySku.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistrySku.arg(TfArg<String> arg) : this._(arg);

  static const basic = ContainerRegistrySku._(TfArgLiteral('Basic'));
  static const standard = ContainerRegistrySku._(TfArgLiteral('Standard'));
  static const premium = ContainerRegistrySku._(TfArgLiteral('Premium'));

  static const List<ContainerRegistrySku> values = [basic, standard, premium];
}

/// Typed helper for the `georeplications` block of
/// `azurerm_container_registry` (derived from provider schema).
@immutable
final class ContainerRegistryGeoreplications {
  const ContainerRegistryGeoreplications({
    required this.globalEndpointRoutingEnabled,
    required this.location,
    this.tags,
    this.zoneRedundancyEnabled,
  });

  final TfArg<bool> globalEndpointRoutingEnabled;

  final TfArg<String> location;

  final TfArg<Map<String, String>>? tags;

  final TfArg<bool>? zoneRedundancyEnabled;

  @internal
  Map<String, Object?> encode() => {
    'global_endpoint_routing_enabled': globalEndpointRoutingEnabled.toTfJson(),
    'location': location.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'zone_redundancy_enabled': ?zoneRedundancyEnabled?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_container_registry` (derived from provider schema).
@immutable
final class ContainerRegistryIdentity {
  const ContainerRegistryIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_container_registry`.
final class AzurermContainerRegistry extends Resource {
  static const String tfType = 'azurerm_container_registry';

  AzurermContainerRegistry(
    super.localName, {
    TfArg<bool>? adminEnabled,
    TfArg<bool>? anonymousPullEnabled,
    TfArg<bool>? azureadAuthenticationAsArmPolicyEnabled,
    TfArg<bool>? dataEndpointEnabled,
    TfArg<List<Map<String, Object?>>>? encryption,
    TfArg<bool>? exportPolicyEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? networkRuleBypassForTasksEnabled,
    ContainerRegistryNetworkRuleBypassOption? networkRuleBypassOption,
    TfArg<List<Map<String, Object?>>>? networkRuleSet,
    TfArg<bool>? publicNetworkAccessEnabled,
    TfArg<bool>? quarantinePolicyEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? retentionPolicyInDays,
    ContainerRegistryRoleAssignmentMode? roleAssignmentMode,
    required ContainerRegistrySku sku,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? zoneRedundancyEnabled,
    List<ContainerRegistryGeoreplications>? georeplications,
    ContainerRegistryIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_enabled': ?adminEnabled,
           'anonymous_pull_enabled': ?anonymousPullEnabled,
           'azuread_authentication_as_arm_policy_enabled':
               ?azureadAuthenticationAsArmPolicyEnabled,
           'data_endpoint_enabled': ?dataEndpointEnabled,
           'encryption': ?encryption,
           'export_policy_enabled': ?exportPolicyEnabled,
           'location': location,
           'name': name,
           'network_rule_bypass_for_tasks_enabled':
               ?networkRuleBypassForTasksEnabled,
           'network_rule_bypass_option': ?networkRuleBypassOption,
           'network_rule_set': ?networkRuleSet,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'quarantine_policy_enabled': ?quarantinePolicyEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'retention_policy_in_days': ?retentionPolicyInDays,
           'role_assignment_mode': ?roleAssignmentMode,
           'sku': sku,
           'tags': ?tags,
           'zone_redundancy_enabled': ?zoneRedundancyEnabled,
           if (georeplications != null)
             'georeplications': TfArg.literal([
               for (final e in georeplications) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerRegistrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerRegistry>`.
  RefTo<AzurermContainerRegistry> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `admin_password` attribute.
  TfRef<String> get adminPassword =>
      TfRef.attribute<String>(this, 'admin_password');

  /// Reference to `admin_username` attribute.
  TfRef<String> get adminUsername =>
      TfRef.attribute<String>(this, 'admin_username');

  /// Reference to `data_endpoint_host_names` attribute.
  TfRef<List<String>> get dataEndpointHostNames =>
      TfRef.attribute<List<String>>(this, 'data_endpoint_host_names');

  /// Reference to `login_server` attribute.
  TfRef<String> get loginServer =>
      TfRef.attribute<String>(this, 'login_server');

  /// Reference to `admin_enabled` attribute.
  TfRef<bool> get adminEnabled => TfRef.attribute<bool>(this, 'admin_enabled');

  /// Reference to `anonymous_pull_enabled` attribute.
  TfRef<bool> get anonymousPullEnabled =>
      TfRef.attribute<bool>(this, 'anonymous_pull_enabled');

  /// Reference to `azuread_authentication_as_arm_policy_enabled` attribute.
  TfRef<bool> get azureadAuthenticationAsArmPolicyEnabled =>
      TfRef.attribute<bool>(
        this,
        'azuread_authentication_as_arm_policy_enabled',
      );

  /// Reference to `data_endpoint_enabled` attribute.
  TfRef<bool> get dataEndpointEnabled =>
      TfRef.attribute<bool>(this, 'data_endpoint_enabled');

  /// Reference to `encryption` attribute.
  TfRef<List<Map<String, Object?>>> get encryption =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption');

  /// Reference to `export_policy_enabled` attribute.
  TfRef<bool> get exportPolicyEnabled =>
      TfRef.attribute<bool>(this, 'export_policy_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_rule_bypass_for_tasks_enabled` attribute.
  TfRef<bool> get networkRuleBypassForTasksEnabled =>
      TfRef.attribute<bool>(this, 'network_rule_bypass_for_tasks_enabled');

  /// Reference to `network_rule_bypass_option` attribute.
  TfRef<String> get networkRuleBypassOption =>
      TfRef.attribute<String>(this, 'network_rule_bypass_option');

  /// Reference to `network_rule_set` attribute.
  TfRef<List<Map<String, Object?>>> get networkRuleSet =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_rule_set');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `quarantine_policy_enabled` attribute.
  TfRef<bool> get quarantinePolicyEnabled =>
      TfRef.attribute<bool>(this, 'quarantine_policy_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `retention_policy_in_days` attribute.
  TfRef<num> get retentionPolicyInDays =>
      TfRef.attribute<num>(this, 'retention_policy_in_days');

  /// Reference to `role_assignment_mode` attribute.
  TfRef<String> get roleAssignmentMode =>
      TfRef.attribute<String>(this, 'role_assignment_mode');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone_redundancy_enabled` attribute.
  TfRef<bool> get zoneRedundancyEnabled =>
      TfRef.attribute<bool>(this, 'zone_redundancy_enabled');
}
