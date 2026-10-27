// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dynatrace_monitor`.
const Set<String> _azurermDynatraceMonitorSensitive = <String>{};

/// Dynatrace Monitor Marketplace enum for `marketplace_subscription`.
extension type const DynatraceMonitorMarketplaceSubscription._(TfArg<String> _)
    implements TfArg<String> {
  DynatraceMonitorMarketplaceSubscription.variable(String name)
    : this._(TfArg.variable(name));
  DynatraceMonitorMarketplaceSubscription.expression(String template)
    : this._(TfArg.expression(template));
  const DynatraceMonitorMarketplaceSubscription.arg(TfArg<String> arg)
    : this._(arg);

  static const active = DynatraceMonitorMarketplaceSubscription._(
    TfArgLiteral('Active'),
  );
  static const suspended = DynatraceMonitorMarketplaceSubscription._(
    TfArgLiteral('Suspended'),
  );

  static const List<DynatraceMonitorMarketplaceSubscription> values = [
    active,
    suspended,
  ];
}

/// Typed helper for the `environment_properties` block of
/// `azurerm_dynatrace_monitor` (derived from provider schema).
@immutable
final class DynatraceMonitorEnvironmentProperties {
  const DynatraceMonitorEnvironmentProperties({required this.environmentInfo});

  final List<DynatraceMonitorEnvironmentInfo> environmentInfo;

  @internal
  Map<String, Object?> encode() => {
    'environment_info': [for (final e in environmentInfo) e.encode()],
  };
}

/// Typed helper for the `environment_properties.environment_info` block of
/// `azurerm_dynatrace_monitor` (derived from provider schema).
@immutable
final class DynatraceMonitorEnvironmentInfo {
  const DynatraceMonitorEnvironmentInfo({required this.environmentId});

  final TfArg<String> environmentId;

  @internal
  Map<String, Object?> encode() => {'environment_id': environmentId.toTfJson()};
}

/// Typed helper for the `identity` block of
/// `azurerm_dynatrace_monitor` (derived from provider schema).
@immutable
final class DynatraceMonitorIdentity {
  const DynatraceMonitorIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `plan` block of
/// `azurerm_dynatrace_monitor` (derived from provider schema).
@immutable
final class DynatraceMonitorPlan {
  const DynatraceMonitorPlan({
    this.billingCycle,
    required this.plan,
    this.usageType,
  });

  final DynatraceMonitorBillingCycle? billingCycle;

  final TfArg<String> plan;

  final DynatraceMonitorUsageType? usageType;

  @internal
  Map<String, Object?> encode() => {
    'billing_cycle': ?billingCycle?.toTfJson(),
    'plan': plan.toTfJson(),
    'usage_type': ?usageType?.toTfJson(),
  };
}

/// `billing_cycle` — derived from the provider schema description.
extension type const DynatraceMonitorBillingCycle._(TfArg<String> _)
    implements TfArg<String> {
  DynatraceMonitorBillingCycle.variable(String name)
    : this._(TfArg.variable(name));
  DynatraceMonitorBillingCycle.expression(String template)
    : this._(TfArg.expression(template));
  const DynatraceMonitorBillingCycle.arg(TfArg<String> arg) : this._(arg);

  static const monthly = DynatraceMonitorBillingCycle._(
    TfArgLiteral('MONTHLY'),
  );
  static const weekly = DynatraceMonitorBillingCycle._(TfArgLiteral('WEEKLY'));
  static const yearly = DynatraceMonitorBillingCycle._(TfArgLiteral('YEARLY'));

  static const List<DynatraceMonitorBillingCycle> values = [
    monthly,
    weekly,
    yearly,
  ];
}

/// `usage_type` — derived from the provider schema description.
extension type const DynatraceMonitorUsageType._(TfArg<String> _)
    implements TfArg<String> {
  DynatraceMonitorUsageType.variable(String name)
    : this._(TfArg.variable(name));
  DynatraceMonitorUsageType.expression(String template)
    : this._(TfArg.expression(template));
  const DynatraceMonitorUsageType.arg(TfArg<String> arg) : this._(arg);

  static const payg = DynatraceMonitorUsageType._(TfArgLiteral('PAYG'));
  static const committed = DynatraceMonitorUsageType._(
    TfArgLiteral('COMMITTED'),
  );

  static const List<DynatraceMonitorUsageType> values = [payg, committed];
}

/// Typed helper for the `user` block of
/// `azurerm_dynatrace_monitor` (derived from provider schema).
@immutable
final class DynatraceMonitorUser {
  const DynatraceMonitorUser({
    this.country,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.phoneNumber,
  });

  final TfArg<String>? country;

  final TfArg<String> email;

  final TfArg<String> firstName;

  final TfArg<String> lastName;

  final TfArg<String>? phoneNumber;

  @internal
  Map<String, Object?> encode() => {
    'country': ?country?.toTfJson(),
    'email': email.toTfJson(),
    'first_name': firstName.toTfJson(),
    'last_name': lastName.toTfJson(),
    'phone_number': ?phoneNumber?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_dynatrace_monitor`.
final class AzurermDynatraceMonitor extends Resource {
  static const String tfType = 'azurerm_dynatrace_monitor';

  AzurermDynatraceMonitor(
    super.localName, {
    required TfArg<String> location,
    required DynatraceMonitorMarketplaceSubscription marketplaceSubscription,
    TfArg<bool>? monitoringEnabled,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<DynatraceMonitorEnvironmentProperties>? environmentProperties,
    required DynatraceMonitorIdentity identity,
    required DynatraceMonitorPlan plan,
    required DynatraceMonitorUser user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'marketplace_subscription': marketplaceSubscription,
           'monitoring_enabled': ?monitoringEnabled,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (environmentProperties != null)
             'environment_properties': TfArg.literal([
               for (final e in environmentProperties) e.encode(),
             ]),
           'identity': TfArg.literal(identity.encode()),
           'plan': TfArg.literal(plan.encode()),
           'user': TfArg.literal(user.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDynatraceMonitorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDynatraceMonitor>`.
  RefTo<AzurermDynatraceMonitor> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `marketplace_subscription` attribute.
  TfRef<String> get marketplaceSubscription =>
      TfRef.attribute<String>(this, 'marketplace_subscription');

  /// Reference to `monitoring_enabled` attribute.
  TfRef<bool> get monitoringEnabled =>
      TfRef.attribute<bool>(this, 'monitoring_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
