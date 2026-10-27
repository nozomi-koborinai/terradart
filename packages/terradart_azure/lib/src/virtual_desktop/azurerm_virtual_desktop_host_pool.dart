// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_desktop_host_pool`.
const Set<String> _azurermVirtualDesktopHostPoolSensitive = <String>{};

/// Virtual Desktop Host Pool Load Balancer enum for `load_balancer_type`.
extension type const VirtualDesktopHostPoolLoadBalancerType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualDesktopHostPoolLoadBalancerType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopHostPoolLoadBalancerType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualDesktopHostPoolLoadBalancerType.arg(TfArg<String> arg)
    : this._(arg);

  static const breadthfirst = VirtualDesktopHostPoolLoadBalancerType._(
    TfArgLiteral('BreadthFirst'),
  );
  static const depthfirst = VirtualDesktopHostPoolLoadBalancerType._(
    TfArgLiteral('DepthFirst'),
  );
  static const multiplepersistent = VirtualDesktopHostPoolLoadBalancerType._(
    TfArgLiteral('MultiplePersistent'),
  );
  static const persistent = VirtualDesktopHostPoolLoadBalancerType._(
    TfArgLiteral('Persistent'),
  );

  static const List<VirtualDesktopHostPoolLoadBalancerType> values = [
    breadthfirst,
    depthfirst,
    multiplepersistent,
    persistent,
  ];
}

/// Virtual Desktop Host Pool Personal Desktop Assignment enum for `personal_desktop_assignment_type`.
extension type const VirtualDesktopHostPoolPersonalDesktopAssignmentType._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualDesktopHostPoolPersonalDesktopAssignmentType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopHostPoolPersonalDesktopAssignmentType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VirtualDesktopHostPoolPersonalDesktopAssignmentType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const automatic =
      VirtualDesktopHostPoolPersonalDesktopAssignmentType._(
        TfArgLiteral('Automatic'),
      );
  static const direct = VirtualDesktopHostPoolPersonalDesktopAssignmentType._(
    TfArgLiteral('Direct'),
  );

  static const List<VirtualDesktopHostPoolPersonalDesktopAssignmentType>
  values = [automatic, direct];
}

/// Virtual Desktop Host Pool Preferred App Group enum for `preferred_app_group_type`.
extension type const VirtualDesktopHostPoolPreferredAppGroupType._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualDesktopHostPoolPreferredAppGroupType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopHostPoolPreferredAppGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualDesktopHostPoolPreferredAppGroupType.arg(TfArg<String> arg)
    : this._(arg);

  static const desktop = VirtualDesktopHostPoolPreferredAppGroupType._(
    TfArgLiteral('Desktop'),
  );
  static const none = VirtualDesktopHostPoolPreferredAppGroupType._(
    TfArgLiteral('None'),
  );
  static const railapplications = VirtualDesktopHostPoolPreferredAppGroupType._(
    TfArgLiteral('RailApplications'),
  );

  static const List<VirtualDesktopHostPoolPreferredAppGroupType> values = [
    desktop,
    none,
    railapplications,
  ];
}

/// Virtual Desktop Host Pool Public Network enum for `public_network_access`.
extension type const VirtualDesktopHostPoolPublicNetworkAccess._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualDesktopHostPoolPublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopHostPoolPublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualDesktopHostPoolPublicNetworkAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = VirtualDesktopHostPoolPublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = VirtualDesktopHostPoolPublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );
  static const enabledforclientsonly =
      VirtualDesktopHostPoolPublicNetworkAccess._(
        TfArgLiteral('EnabledForClientsOnly'),
      );
  static const enabledforsessionhostsonly =
      VirtualDesktopHostPoolPublicNetworkAccess._(
        TfArgLiteral('EnabledForSessionHostsOnly'),
      );

  static const List<VirtualDesktopHostPoolPublicNetworkAccess> values = [
    disabled,
    enabled,
    enabledforclientsonly,
    enabledforsessionhostsonly,
  ];
}

/// Typed helper for the `scheduled_agent_updates` block of
/// `azurerm_virtual_desktop_host_pool` (derived from provider schema).
@immutable
final class VirtualDesktopHostPoolScheduledAgentUpdates {
  const VirtualDesktopHostPoolScheduledAgentUpdates({
    this.enabled,
    this.timezone,
    this.useSessionHostTimezone,
    this.schedule,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? timezone;

  final TfArg<bool>? useSessionHostTimezone;

  final List<VirtualDesktopHostPoolSchedule>? schedule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'timezone': ?timezone?.toTfJson(),
    'use_session_host_timezone': ?useSessionHostTimezone?.toTfJson(),
    if (schedule != null) 'schedule': [for (final e in schedule!) e.encode()],
  };
}

/// Typed helper for the `scheduled_agent_updates.schedule` block of
/// `azurerm_virtual_desktop_host_pool` (derived from provider schema).
@immutable
final class VirtualDesktopHostPoolSchedule {
  const VirtualDesktopHostPoolSchedule({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  final VirtualDesktopHostPoolDayOfWeek dayOfWeek;

  final TfArg<num> hourOfDay;

  @internal
  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'hour_of_day': hourOfDay.toTfJson(),
  };
}

/// `day_of_week` — derived from the provider schema description.
extension type const VirtualDesktopHostPoolDayOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  VirtualDesktopHostPoolDayOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopHostPoolDayOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualDesktopHostPoolDayOfWeek.arg(TfArg<String> arg) : this._(arg);

  static const friday = VirtualDesktopHostPoolDayOfWeek._(
    TfArgLiteral('Friday'),
  );
  static const monday = VirtualDesktopHostPoolDayOfWeek._(
    TfArgLiteral('Monday'),
  );
  static const saturday = VirtualDesktopHostPoolDayOfWeek._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = VirtualDesktopHostPoolDayOfWeek._(
    TfArgLiteral('Sunday'),
  );
  static const thursday = VirtualDesktopHostPoolDayOfWeek._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = VirtualDesktopHostPoolDayOfWeek._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday = VirtualDesktopHostPoolDayOfWeek._(
    TfArgLiteral('Wednesday'),
  );

  static const List<VirtualDesktopHostPoolDayOfWeek> values = [
    friday,
    monday,
    saturday,
    sunday,
    thursday,
    tuesday,
    wednesday,
  ];
}

/// Factory wrapper for `azurerm_virtual_desktop_host_pool`.
final class AzurermVirtualDesktopHostPool extends Resource {
  static const String tfType = 'azurerm_virtual_desktop_host_pool';

  AzurermVirtualDesktopHostPool(
    super.localName, {
    TfArg<String>? customRdpProperties,
    TfArg<String>? description,
    TfArg<String>? friendlyName,
    required VirtualDesktopHostPoolLoadBalancerType loadBalancerType,
    required TfArg<String> location,
    TfArg<num>? maximumSessionsAllowed,
    required TfArg<String> name,
    VirtualDesktopHostPoolPersonalDesktopAssignmentType?
    personalDesktopAssignmentType,
    VirtualDesktopHostPoolPreferredAppGroupType? preferredAppGroupType,
    VirtualDesktopHostPoolPublicNetworkAccess? publicNetworkAccess,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? startVmOnConnect,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    TfArg<bool>? validateEnvironment,
    TfArg<String>? vmTemplate,
    VirtualDesktopHostPoolScheduledAgentUpdates? scheduledAgentUpdates,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_rdp_properties': ?customRdpProperties,
           'description': ?description,
           'friendly_name': ?friendlyName,
           'load_balancer_type': loadBalancerType,
           'location': location,
           'maximum_sessions_allowed': ?maximumSessionsAllowed,
           'name': name,
           'personal_desktop_assignment_type': ?personalDesktopAssignmentType,
           'preferred_app_group_type': ?preferredAppGroupType,
           'public_network_access': ?publicNetworkAccess,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'start_vm_on_connect': ?startVmOnConnect,
           'tags': ?tags,
           'type': type,
           'validate_environment': ?validateEnvironment,
           'vm_template': ?vmTemplate,
           if (scheduledAgentUpdates != null)
             'scheduled_agent_updates': TfArg.literal(
               scheduledAgentUpdates.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualDesktopHostPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualDesktopHostPool>`.
  RefTo<AzurermVirtualDesktopHostPool> get ref => RefTo.of(this);

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

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

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

  /// Reference to `vm_template` attribute.
  TfRef<String> get vmTemplate => TfRef.attribute<String>(this, 'vm_template');
}
