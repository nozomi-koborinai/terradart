// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_app_environment`.
const Set<String> _azurermContainerAppEnvironmentSensitive = <String>{
  'dapr_application_insights_connection_string',
};

/// Container App Environment Public Network enum for `public_network_access`.
extension type const ContainerAppEnvironmentPublicNetworkAccess._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerAppEnvironmentPublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  ContainerAppEnvironmentPublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAppEnvironmentPublicNetworkAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = ContainerAppEnvironmentPublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = ContainerAppEnvironmentPublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );

  static const List<ContainerAppEnvironmentPublicNetworkAccess> values = [
    disabled,
    enabled,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_container_app_environment` (derived from provider schema).
@immutable
final class ContainerAppEnvironmentIdentity {
  const ContainerAppEnvironmentIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `workload_profile` block of
/// `azurerm_container_app_environment` (derived from provider schema).
@immutable
final class ContainerAppEnvironmentWorkloadProfile {
  const ContainerAppEnvironmentWorkloadProfile({
    this.maximumCount,
    this.minimumCount,
    required this.name,
    required this.workloadProfileType,
  });

  final TfArg<num>? maximumCount;

  final TfArg<num>? minimumCount;

  final TfArg<String> name;

  final TfArg<String> workloadProfileType;

  @internal
  Map<String, Object?> encode() => {
    'maximum_count': ?maximumCount?.toTfJson(),
    'minimum_count': ?minimumCount?.toTfJson(),
    'name': name.toTfJson(),
    'workload_profile_type': workloadProfileType.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_container_app_environment`.
final class AzurermContainerAppEnvironment extends Resource {
  static const String tfType = 'azurerm_container_app_environment';

  AzurermContainerAppEnvironment(
    super.localName, {
    Sensitive<String>? daprApplicationInsightsConnectionString,
    TfArg<String>? infrastructureResourceGroupName,
    TfArg<String>? infrastructureSubnetId,
    TfArg<bool>? internalLoadBalancerEnabled,
    required TfArg<String> location,
    TfArg<String>? logAnalyticsWorkspaceId,
    TfArg<String>? logsDestination,
    TfArg<bool>? mutualTlsEnabled,
    required TfArg<String> name,
    ContainerAppEnvironmentPublicNetworkAccess? publicNetworkAccess,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? zoneRedundancyEnabled,
    ContainerAppEnvironmentIdentity? identity,
    List<ContainerAppEnvironmentWorkloadProfile>? workloadProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dapr_application_insights_connection_string':
               ?daprApplicationInsightsConnectionString,
           'infrastructure_resource_group_name':
               ?infrastructureResourceGroupName,
           'infrastructure_subnet_id': ?infrastructureSubnetId,
           'internal_load_balancer_enabled': ?internalLoadBalancerEnabled,
           'location': location,
           'log_analytics_workspace_id': ?logAnalyticsWorkspaceId,
           'logs_destination': ?logsDestination,
           'mutual_tls_enabled': ?mutualTlsEnabled,
           'name': name,
           'public_network_access': ?publicNetworkAccess,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'zone_redundancy_enabled': ?zoneRedundancyEnabled,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (workloadProfile != null)
             'workload_profile': TfArg.literal([
               for (final e in workloadProfile) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerAppEnvironmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerAppEnvironment>`.
  RefTo<AzurermContainerAppEnvironment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_domain_verification_id` attribute.
  TfRef<String> get customDomainVerificationId =>
      TfRef.attribute<String>(this, 'custom_domain_verification_id');

  /// Reference to `default_domain` attribute.
  TfRef<String> get defaultDomain =>
      TfRef.attribute<String>(this, 'default_domain');

  /// Reference to `docker_bridge_cidr` attribute.
  TfRef<String> get dockerBridgeCidr =>
      TfRef.attribute<String>(this, 'docker_bridge_cidr');

  /// Reference to `platform_reserved_cidr` attribute.
  TfRef<String> get platformReservedCidr =>
      TfRef.attribute<String>(this, 'platform_reserved_cidr');

  /// Reference to `platform_reserved_dns_ip_address` attribute.
  TfRef<String> get platformReservedDnsIpAddress =>
      TfRef.attribute<String>(this, 'platform_reserved_dns_ip_address');

  /// Reference to `static_ip_address` attribute.
  TfRef<String> get staticIpAddress =>
      TfRef.attribute<String>(this, 'static_ip_address');

  /// Reference to `dapr_application_insights_connection_string` attribute.
  TfRef<String> get daprApplicationInsightsConnectionString =>
      TfRef.attribute<String>(
        this,
        'dapr_application_insights_connection_string',
      );

  /// Reference to `infrastructure_resource_group_name` attribute.
  TfRef<String> get infrastructureResourceGroupName =>
      TfRef.attribute<String>(this, 'infrastructure_resource_group_name');

  /// Reference to `infrastructure_subnet_id` attribute.
  TfRef<String> get infrastructureSubnetId =>
      TfRef.attribute<String>(this, 'infrastructure_subnet_id');

  /// Reference to `internal_load_balancer_enabled` attribute.
  TfRef<bool> get internalLoadBalancerEnabled =>
      TfRef.attribute<bool>(this, 'internal_load_balancer_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `logs_destination` attribute.
  TfRef<String> get logsDestination =>
      TfRef.attribute<String>(this, 'logs_destination');

  /// Reference to `mutual_tls_enabled` attribute.
  TfRef<bool> get mutualTlsEnabled =>
      TfRef.attribute<bool>(this, 'mutual_tls_enabled');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone_redundancy_enabled` attribute.
  TfRef<bool> get zoneRedundancyEnabled =>
      TfRef.attribute<bool>(this, 'zone_redundancy_enabled');
}
