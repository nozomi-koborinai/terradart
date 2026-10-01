// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_account_subscription`.
const Set<String> _cloudflareAccountSubscriptionSensitive = <String>{};

/// Account Subscription enum for `frequency`.
extension type const AccountSubscriptionFrequency._(TfArg<String> _)
    implements TfArg<String> {
  AccountSubscriptionFrequency.variable(String name)
    : this._(TfArg.variable(name));
  AccountSubscriptionFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const AccountSubscriptionFrequency.arg(TfArg<String> arg) : this._(arg);

  static const weekly = AccountSubscriptionFrequency._(TfArgLiteral('weekly'));
  static const monthly = AccountSubscriptionFrequency._(
    TfArgLiteral('monthly'),
  );
  static const quarterly = AccountSubscriptionFrequency._(
    TfArgLiteral('quarterly'),
  );
  static const yearly = AccountSubscriptionFrequency._(TfArgLiteral('yearly'));
  static const notApplicable = AccountSubscriptionFrequency._(
    TfArgLiteral('not-applicable'),
  );

  static const List<AccountSubscriptionFrequency> values = [
    weekly,
    monthly,
    quarterly,
    yearly,
    notApplicable,
  ];
}

/// Typed helper for the `rate_plan` block of
/// `cloudflare_account_subscription` (derived from provider schema).
@immutable
final class AccountSubscriptionRatePlan {
  const AccountSubscriptionRatePlan({this.id, this.scope});

  final AccountSubscriptionRatePlanId? id;

  final TfArg<String>? scope;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// `id` — derived from the provider schema description.
extension type const AccountSubscriptionRatePlanId._(TfArg<String> _)
    implements TfArg<String> {
  AccountSubscriptionRatePlanId.variable(String name)
    : this._(TfArg.variable(name));
  AccountSubscriptionRatePlanId.expression(String template)
    : this._(TfArg.expression(template));
  const AccountSubscriptionRatePlanId.arg(TfArg<String> arg) : this._(arg);

  static const free = AccountSubscriptionRatePlanId._(TfArgLiteral('free'));
  static const lite = AccountSubscriptionRatePlanId._(TfArgLiteral('lite'));
  static const pro = AccountSubscriptionRatePlanId._(TfArgLiteral('pro'));
  static const proPlus = AccountSubscriptionRatePlanId._(
    TfArgLiteral('pro_plus'),
  );
  static const business = AccountSubscriptionRatePlanId._(
    TfArgLiteral('business'),
  );
  static const enterprise = AccountSubscriptionRatePlanId._(
    TfArgLiteral('enterprise'),
  );
  static const partnersFree = AccountSubscriptionRatePlanId._(
    TfArgLiteral('partners_free'),
  );
  static const partnersPro = AccountSubscriptionRatePlanId._(
    TfArgLiteral('partners_pro'),
  );
  static const partnersBusiness = AccountSubscriptionRatePlanId._(
    TfArgLiteral('partners_business'),
  );
  static const partnersEnterprise = AccountSubscriptionRatePlanId._(
    TfArgLiteral('partners_enterprise'),
  );

  static const List<AccountSubscriptionRatePlanId> values = [
    free,
    lite,
    pro,
    proPlus,
    business,
    enterprise,
    partnersFree,
    partnersPro,
    partnersBusiness,
    partnersEnterprise,
  ];
}

/// Factory wrapper for `cloudflare_account_subscription`.
///
/// Accepted Permissions
///
/// - `Billing Read` - `Billing Write`
final class CloudflareAccountSubscription extends Resource {
  static const String tfType = 'cloudflare_account_subscription';

  CloudflareAccountSubscription(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    AccountSubscriptionFrequency? frequency,
    AccountSubscriptionRatePlan? ratePlan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'frequency': ?frequency,
           if (ratePlan != null) 'rate_plan': TfArg.literal(ratePlan.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAccountSubscription>`.
  RefTo<CloudflareAccountSubscription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `currency` attribute.
  TfRef<String> get currency => TfRef.attribute<String>(this, 'currency');

  /// Reference to `current_period_end` attribute.
  TfRef<String> get currentPeriodEnd =>
      TfRef.attribute<String>(this, 'current_period_end');

  /// Reference to `current_period_start` attribute.
  TfRef<String> get currentPeriodStart =>
      TfRef.attribute<String>(this, 'current_period_start');

  /// Reference to `price` attribute.
  TfRef<num> get price => TfRef.attribute<num>(this, 'price');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');
}
