// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_subscription`.
const Set<String> _azurermSubscriptionSensitive = <String>{};

/// Subscription enum for `workload`.
extension type const SubscriptionWorkload._(TfArg<String> _)
    implements TfArg<String> {
  SubscriptionWorkload.variable(String name) : this._(TfArg.variable(name));
  SubscriptionWorkload.expression(String template)
    : this._(TfArg.expression(template));
  const SubscriptionWorkload.arg(TfArg<String> arg) : this._(arg);

  static const devtest = SubscriptionWorkload._(TfArgLiteral('DevTest'));
  static const production = SubscriptionWorkload._(TfArgLiteral('Production'));

  static const List<SubscriptionWorkload> values = [devtest, production];
}

/// Exactly one of `billing_scope_id`, `subscription_id` on `azurerm_subscription`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.billingScopeId(...)`.
sealed class SubscriptionBillingScopeIdOrSubscriptionId {
  const SubscriptionBillingScopeIdOrSubscriptionId();

  /// Sets `billing_scope_id`.
  const factory SubscriptionBillingScopeIdOrSubscriptionId.billingScopeId(
    TfArg<String> billingScopeId,
  ) = SubscriptionBillingScopeIdOrSubscriptionIdBillingScopeId;

  /// Sets `subscription_id`.
  const factory SubscriptionBillingScopeIdOrSubscriptionId.subscriptionId(
    TfArg<String> subscriptionId,
  ) = SubscriptionBillingScopeIdOrSubscriptionIdChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SubscriptionBillingScopeIdOrSubscriptionId.billingScopeId] choice: sets `billing_scope_id`.
final class SubscriptionBillingScopeIdOrSubscriptionIdBillingScopeId
    extends SubscriptionBillingScopeIdOrSubscriptionId {
  const SubscriptionBillingScopeIdOrSubscriptionIdBillingScopeId(
    this.billingScopeId,
  );

  final TfArg<String> billingScopeId;

  @internal
  @override
  String get blockKey => 'billing_scope_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'billing_scope_id': billingScopeId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'billing_scope_id': billingScopeId,
  };
}

/// The [SubscriptionBillingScopeIdOrSubscriptionId.subscriptionId] choice: sets `subscription_id`.
final class SubscriptionBillingScopeIdOrSubscriptionIdChoice
    extends SubscriptionBillingScopeIdOrSubscriptionId {
  const SubscriptionBillingScopeIdOrSubscriptionIdChoice(this.subscriptionId);

  final TfArg<String> subscriptionId;

  @internal
  @override
  String get blockKey => 'subscription_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'subscription_id': subscriptionId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'subscription_id': subscriptionId};
}

/// Factory wrapper for `azurerm_subscription`.
final class AzurermSubscription extends Resource {
  static const String tfType = 'azurerm_subscription';

  AzurermSubscription(
    super.localName, {
    TfArg<String>? alias,
    required SubscriptionBillingScopeIdOrSubscriptionId
    billingScopeIdOrSubscriptionId,
    required TfArg<String> subscriptionName,
    TfArg<Map<String, String>>? tags,
    SubscriptionWorkload? workload,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias': ?alias,
           ...billingScopeIdOrSubscriptionId.argMap,
           'subscription_name': subscriptionName,
           'tags': ?tags,
           'workload': ?workload,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSubscription>`.
  RefTo<AzurermSubscription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `billing_scope_id` attribute.
  TfRef<String> get billingScopeId =>
      TfRef.attribute<String>(this, 'billing_scope_id');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');

  /// Reference to `subscription_name` attribute.
  TfRef<String> get subscriptionName =>
      TfRef.attribute<String>(this, 'subscription_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workload` attribute.
  TfRef<String> get workload => TfRef.attribute<String>(this, 'workload');
}
