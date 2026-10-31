// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_desktop_scaling_plan`.
const Set<String> _azurermVirtualDesktopScalingPlanSensitive = <String>{};

/// Typed helper for the `host_pool` block of
/// `azurerm_virtual_desktop_scaling_plan` (derived from provider schema).
@immutable
final class VirtualDesktopScalingPlanHostPool {
  const VirtualDesktopScalingPlanHostPool({
    required this.hostpoolId,
    required this.scalingPlanEnabled,
  });

  final TfArg<String> hostpoolId;

  final TfArg<bool> scalingPlanEnabled;

  @internal
  Map<String, Object?> encode() => {
    'hostpool_id': hostpoolId.toTfJson(),
    'scaling_plan_enabled': scalingPlanEnabled.toTfJson(),
  };
}

/// Typed helper for the `schedule` block of
/// `azurerm_virtual_desktop_scaling_plan` (derived from provider schema).
@immutable
final class VirtualDesktopScalingPlanSchedule {
  const VirtualDesktopScalingPlanSchedule({
    required this.daysOfWeek,
    required this.name,
    required this.offPeakLoadBalancingAlgorithm,
    required this.offPeakStartTime,
    required this.peakLoadBalancingAlgorithm,
    required this.peakStartTime,
    required this.rampDownCapacityThresholdPercent,
    required this.rampDownForceLogoffUsers,
    required this.rampDownLoadBalancingAlgorithm,
    required this.rampDownMinimumHostsPercent,
    required this.rampDownNotificationMessage,
    required this.rampDownStartTime,
    required this.rampDownStopHostsWhen,
    required this.rampDownWaitTimeMinutes,
    this.rampUpCapacityThresholdPercent,
    required this.rampUpLoadBalancingAlgorithm,
    this.rampUpMinimumHostsPercent,
    required this.rampUpStartTime,
  });

  final EnumList<VirtualDesktopScalingPlanDaysOfWeek> daysOfWeek;

  final TfArg<String> name;

  final VirtualDesktopScalingPlanOffPeakLoadBalancingAlgorithm
  offPeakLoadBalancingAlgorithm;

  final TfArg<String> offPeakStartTime;

  final VirtualDesktopScalingPlanPeakLoadBalancingAlgorithm
  peakLoadBalancingAlgorithm;

  final TfArg<String> peakStartTime;

  final TfArg<num> rampDownCapacityThresholdPercent;

  final TfArg<bool> rampDownForceLogoffUsers;

  final VirtualDesktopScalingPlanRampDownLoadBalancingAlgorithm
  rampDownLoadBalancingAlgorithm;

  final TfArg<num> rampDownMinimumHostsPercent;

  final TfArg<String> rampDownNotificationMessage;

  final TfArg<String> rampDownStartTime;

  final VirtualDesktopScalingPlanRampDownStopHostsWhen rampDownStopHostsWhen;

  final TfArg<num> rampDownWaitTimeMinutes;

  final TfArg<num>? rampUpCapacityThresholdPercent;

  final VirtualDesktopScalingPlanRampUpLoadBalancingAlgorithm
  rampUpLoadBalancingAlgorithm;

  final TfArg<num>? rampUpMinimumHostsPercent;

  final TfArg<String> rampUpStartTime;

  @internal
  Map<String, Object?> encode() => {
    'days_of_week': daysOfWeek.toTfJson(),
    'name': name.toTfJson(),
    'off_peak_load_balancing_algorithm': offPeakLoadBalancingAlgorithm
        .toTfJson(),
    'off_peak_start_time': offPeakStartTime.toTfJson(),
    'peak_load_balancing_algorithm': peakLoadBalancingAlgorithm.toTfJson(),
    'peak_start_time': peakStartTime.toTfJson(),
    'ramp_down_capacity_threshold_percent': rampDownCapacityThresholdPercent
        .toTfJson(),
    'ramp_down_force_logoff_users': rampDownForceLogoffUsers.toTfJson(),
    'ramp_down_load_balancing_algorithm': rampDownLoadBalancingAlgorithm
        .toTfJson(),
    'ramp_down_minimum_hosts_percent': rampDownMinimumHostsPercent.toTfJson(),
    'ramp_down_notification_message': rampDownNotificationMessage.toTfJson(),
    'ramp_down_start_time': rampDownStartTime.toTfJson(),
    'ramp_down_stop_hosts_when': rampDownStopHostsWhen.toTfJson(),
    'ramp_down_wait_time_minutes': rampDownWaitTimeMinutes.toTfJson(),
    'ramp_up_capacity_threshold_percent': ?rampUpCapacityThresholdPercent
        ?.toTfJson(),
    'ramp_up_load_balancing_algorithm': rampUpLoadBalancingAlgorithm.toTfJson(),
    'ramp_up_minimum_hosts_percent': ?rampUpMinimumHostsPercent?.toTfJson(),
    'ramp_up_start_time': rampUpStartTime.toTfJson(),
  };
}

/// `days_of_week` — derived from the provider schema description.
extension type const VirtualDesktopScalingPlanDaysOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  VirtualDesktopScalingPlanDaysOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopScalingPlanDaysOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualDesktopScalingPlanDaysOfWeek.arg(TfArg<String> arg)
    : this._(arg);

  static const friday = VirtualDesktopScalingPlanDaysOfWeek._(
    TfArgLiteral('Friday'),
  );
  static const monday = VirtualDesktopScalingPlanDaysOfWeek._(
    TfArgLiteral('Monday'),
  );
  static const saturday = VirtualDesktopScalingPlanDaysOfWeek._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = VirtualDesktopScalingPlanDaysOfWeek._(
    TfArgLiteral('Sunday'),
  );
  static const thursday = VirtualDesktopScalingPlanDaysOfWeek._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = VirtualDesktopScalingPlanDaysOfWeek._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday = VirtualDesktopScalingPlanDaysOfWeek._(
    TfArgLiteral('Wednesday'),
  );

  static const List<VirtualDesktopScalingPlanDaysOfWeek> values = [
    friday,
    monday,
    saturday,
    sunday,
    thursday,
    tuesday,
    wednesday,
  ];
}

/// `off_peak_load_balancing_algorithm` — derived from the provider schema description.
extension type const VirtualDesktopScalingPlanOffPeakLoadBalancingAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualDesktopScalingPlanOffPeakLoadBalancingAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopScalingPlanOffPeakLoadBalancingAlgorithm.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VirtualDesktopScalingPlanOffPeakLoadBalancingAlgorithm.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const breadthfirst =
      VirtualDesktopScalingPlanOffPeakLoadBalancingAlgorithm._(
        TfArgLiteral('BreadthFirst'),
      );
  static const depthfirst =
      VirtualDesktopScalingPlanOffPeakLoadBalancingAlgorithm._(
        TfArgLiteral('DepthFirst'),
      );

  static const List<VirtualDesktopScalingPlanOffPeakLoadBalancingAlgorithm>
  values = [breadthfirst, depthfirst];
}

/// `peak_load_balancing_algorithm` — derived from the provider schema description.
extension type const VirtualDesktopScalingPlanPeakLoadBalancingAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualDesktopScalingPlanPeakLoadBalancingAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopScalingPlanPeakLoadBalancingAlgorithm.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VirtualDesktopScalingPlanPeakLoadBalancingAlgorithm.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const breadthfirst =
      VirtualDesktopScalingPlanPeakLoadBalancingAlgorithm._(
        TfArgLiteral('BreadthFirst'),
      );
  static const depthfirst =
      VirtualDesktopScalingPlanPeakLoadBalancingAlgorithm._(
        TfArgLiteral('DepthFirst'),
      );

  static const List<VirtualDesktopScalingPlanPeakLoadBalancingAlgorithm>
  values = [breadthfirst, depthfirst];
}

/// `ramp_down_load_balancing_algorithm` — derived from the provider schema description.
extension type const VirtualDesktopScalingPlanRampDownLoadBalancingAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualDesktopScalingPlanRampDownLoadBalancingAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopScalingPlanRampDownLoadBalancingAlgorithm.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VirtualDesktopScalingPlanRampDownLoadBalancingAlgorithm.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const breadthfirst =
      VirtualDesktopScalingPlanRampDownLoadBalancingAlgorithm._(
        TfArgLiteral('BreadthFirst'),
      );
  static const depthfirst =
      VirtualDesktopScalingPlanRampDownLoadBalancingAlgorithm._(
        TfArgLiteral('DepthFirst'),
      );

  static const List<VirtualDesktopScalingPlanRampDownLoadBalancingAlgorithm>
  values = [breadthfirst, depthfirst];
}

/// `ramp_down_stop_hosts_when` — derived from the provider schema description.
extension type const VirtualDesktopScalingPlanRampDownStopHostsWhen._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualDesktopScalingPlanRampDownStopHostsWhen.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopScalingPlanRampDownStopHostsWhen.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualDesktopScalingPlanRampDownStopHostsWhen.arg(TfArg<String> arg)
    : this._(arg);

  static const zeroactivesessions =
      VirtualDesktopScalingPlanRampDownStopHostsWhen._(
        TfArgLiteral('ZeroActiveSessions'),
      );
  static const zerosessions = VirtualDesktopScalingPlanRampDownStopHostsWhen._(
    TfArgLiteral('ZeroSessions'),
  );

  static const List<VirtualDesktopScalingPlanRampDownStopHostsWhen> values = [
    zeroactivesessions,
    zerosessions,
  ];
}

/// `ramp_up_load_balancing_algorithm` — derived from the provider schema description.
extension type const VirtualDesktopScalingPlanRampUpLoadBalancingAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualDesktopScalingPlanRampUpLoadBalancingAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopScalingPlanRampUpLoadBalancingAlgorithm.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VirtualDesktopScalingPlanRampUpLoadBalancingAlgorithm.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const breadthfirst =
      VirtualDesktopScalingPlanRampUpLoadBalancingAlgorithm._(
        TfArgLiteral('BreadthFirst'),
      );
  static const depthfirst =
      VirtualDesktopScalingPlanRampUpLoadBalancingAlgorithm._(
        TfArgLiteral('DepthFirst'),
      );

  static const List<VirtualDesktopScalingPlanRampUpLoadBalancingAlgorithm>
  values = [breadthfirst, depthfirst];
}

/// Factory wrapper for `azurerm_virtual_desktop_scaling_plan`.
final class AzurermVirtualDesktopScalingPlan extends Resource {
  static const String tfType = 'azurerm_virtual_desktop_scaling_plan';

  AzurermVirtualDesktopScalingPlan(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? exclusionTag,
    TfArg<String>? friendlyName,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> timeZone,
    List<VirtualDesktopScalingPlanHostPool>? hostPool,
    required List<VirtualDesktopScalingPlanSchedule> schedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'exclusion_tag': ?exclusionTag,
           'friendly_name': ?friendlyName,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'time_zone': timeZone,
           if (hostPool != null)
             'host_pool': TfArg.literal([for (final e in hostPool) e.encode()]),
           'schedule': TfArg.literal([for (final e in schedule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualDesktopScalingPlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualDesktopScalingPlan>`.
  RefTo<AzurermVirtualDesktopScalingPlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `exclusion_tag` attribute.
  TfRef<String> get exclusionTag =>
      TfRef.attribute<String>(this, 'exclusion_tag');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
