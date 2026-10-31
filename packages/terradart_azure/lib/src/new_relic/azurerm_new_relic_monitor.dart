// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_new_relic_monitor`.
const Set<String> _azurermNewRelicMonitorSensitive = <String>{'ingestion_key'};

/// New Relic Monitor Account Creation enum for `account_creation_source`.
extension type const NewRelicMonitorAccountCreationSource._(TfArg<String> _)
    implements TfArg<String> {
  NewRelicMonitorAccountCreationSource.variable(String name)
    : this._(TfArg.variable(name));
  NewRelicMonitorAccountCreationSource.expression(String template)
    : this._(TfArg.expression(template));
  const NewRelicMonitorAccountCreationSource.arg(TfArg<String> arg)
    : this._(arg);

  static const liftr = NewRelicMonitorAccountCreationSource._(
    TfArgLiteral('LIFTR'),
  );
  static const newrelic = NewRelicMonitorAccountCreationSource._(
    TfArgLiteral('NEWRELIC'),
  );

  static const List<NewRelicMonitorAccountCreationSource> values = [
    liftr,
    newrelic,
  ];
}

/// New Relic Monitor Org Creation enum for `org_creation_source`.
extension type const NewRelicMonitorOrgCreationSource._(TfArg<String> _)
    implements TfArg<String> {
  NewRelicMonitorOrgCreationSource.variable(String name)
    : this._(TfArg.variable(name));
  NewRelicMonitorOrgCreationSource.expression(String template)
    : this._(TfArg.expression(template));
  const NewRelicMonitorOrgCreationSource.arg(TfArg<String> arg) : this._(arg);

  static const liftr = NewRelicMonitorOrgCreationSource._(
    TfArgLiteral('LIFTR'),
  );
  static const newrelic = NewRelicMonitorOrgCreationSource._(
    TfArgLiteral('NEWRELIC'),
  );

  static const List<NewRelicMonitorOrgCreationSource> values = [
    liftr,
    newrelic,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_new_relic_monitor` (derived from provider schema).
@immutable
final class NewRelicMonitorIdentity {
  const NewRelicMonitorIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `plan` block of
/// `azurerm_new_relic_monitor` (derived from provider schema).
@immutable
final class NewRelicMonitorPlan {
  const NewRelicMonitorPlan({
    this.billingCycle,
    required this.effectiveDate,
    this.planId,
    this.usageType,
  });

  final NewRelicMonitorBillingCycle? billingCycle;

  final TfArg<String> effectiveDate;

  final NewRelicMonitorPlanId? planId;

  final NewRelicMonitorUsageType? usageType;

  @internal
  Map<String, Object?> encode() => {
    'billing_cycle': ?billingCycle?.toTfJson(),
    'effective_date': effectiveDate.toTfJson(),
    'plan_id': ?planId?.toTfJson(),
    'usage_type': ?usageType?.toTfJson(),
  };
}

/// `billing_cycle` — derived from the provider schema description.
extension type const NewRelicMonitorBillingCycle._(TfArg<String> _)
    implements TfArg<String> {
  NewRelicMonitorBillingCycle.variable(String name)
    : this._(TfArg.variable(name));
  NewRelicMonitorBillingCycle.expression(String template)
    : this._(TfArg.expression(template));
  const NewRelicMonitorBillingCycle.arg(TfArg<String> arg) : this._(arg);

  static const monthly = NewRelicMonitorBillingCycle._(TfArgLiteral('MONTHLY'));
  static const weekly = NewRelicMonitorBillingCycle._(TfArgLiteral('WEEKLY'));
  static const yearly = NewRelicMonitorBillingCycle._(TfArgLiteral('YEARLY'));

  static const List<NewRelicMonitorBillingCycle> values = [
    monthly,
    weekly,
    yearly,
  ];
}

/// `plan_id` — derived from the provider schema description.
extension type const NewRelicMonitorPlanId._(TfArg<String> _)
    implements TfArg<String> {
  NewRelicMonitorPlanId.variable(String name) : this._(TfArg.variable(name));
  NewRelicMonitorPlanId.expression(String template)
    : this._(TfArg.expression(template));
  const NewRelicMonitorPlanId.arg(TfArg<String> arg) : this._(arg);

  static const newrelicPayAsYouGoFreeLive = NewRelicMonitorPlanId._(
    TfArgLiteral('newrelic-pay-as-you-go-free-live'),
  );

  static const List<NewRelicMonitorPlanId> values = [
    newrelicPayAsYouGoFreeLive,
  ];
}

/// `usage_type` — derived from the provider schema description.
extension type const NewRelicMonitorUsageType._(TfArg<String> _)
    implements TfArg<String> {
  NewRelicMonitorUsageType.variable(String name) : this._(TfArg.variable(name));
  NewRelicMonitorUsageType.expression(String template)
    : this._(TfArg.expression(template));
  const NewRelicMonitorUsageType.arg(TfArg<String> arg) : this._(arg);

  static const committed = NewRelicMonitorUsageType._(
    TfArgLiteral('COMMITTED'),
  );
  static const payg = NewRelicMonitorUsageType._(TfArgLiteral('PAYG'));

  static const List<NewRelicMonitorUsageType> values = [committed, payg];
}

/// Typed helper for the `user` block of
/// `azurerm_new_relic_monitor` (derived from provider schema).
@immutable
final class NewRelicMonitorUser {
  const NewRelicMonitorUser({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
  });

  final TfArg<String> email;

  final TfArg<String> firstName;

  final TfArg<String> lastName;

  final TfArg<String> phoneNumber;

  @internal
  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    'first_name': firstName.toTfJson(),
    'last_name': lastName.toTfJson(),
    'phone_number': phoneNumber.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_new_relic_monitor`.
final class AzurermNewRelicMonitor extends Resource {
  static const String tfType = 'azurerm_new_relic_monitor';

  AzurermNewRelicMonitor(
    super.localName, {
    NewRelicMonitorAccountCreationSource? accountCreationSource,
    TfArg<String>? accountId,
    Sensitive<String>? ingestionKey,
    required TfArg<String> location,
    required TfArg<String> name,
    NewRelicMonitorOrgCreationSource? orgCreationSource,
    TfArg<String>? organizationId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? userId,
    NewRelicMonitorIdentity? identity,
    required NewRelicMonitorPlan plan,
    required NewRelicMonitorUser user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_creation_source': ?accountCreationSource,
           'account_id': ?accountId,
           'ingestion_key': ?ingestionKey,
           'location': location,
           'name': name,
           'org_creation_source': ?orgCreationSource,
           'organization_id': ?organizationId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'user_id': ?userId,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'plan': TfArg.literal(plan.encode()),
           'user': TfArg.literal(user.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNewRelicMonitorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNewRelicMonitor>`.
  RefTo<AzurermNewRelicMonitor> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_creation_source` attribute.
  TfRef<String> get accountCreationSource =>
      TfRef.attribute<String>(this, 'account_creation_source');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `ingestion_key` attribute.
  TfRef<String> get ingestionKey =>
      TfRef.attribute<String>(this, 'ingestion_key');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `org_creation_source` attribute.
  TfRef<String> get orgCreationSource =>
      TfRef.attribute<String>(this, 'org_creation_source');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
