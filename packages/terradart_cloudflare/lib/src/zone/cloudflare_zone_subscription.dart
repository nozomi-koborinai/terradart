// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_subscription`.
const Set<String> _cloudflareZoneSubscriptionSensitive = <String>{};

/// Zone Subscription enum for `frequency`.
extension type const ZoneSubscriptionFrequency._(TfArg<String> _)
    implements TfArg<String> {
  ZoneSubscriptionFrequency.variable(String name)
    : this._(TfArg.variable(name));
  ZoneSubscriptionFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const ZoneSubscriptionFrequency.arg(TfArg<String> arg) : this._(arg);

  static const weekly = ZoneSubscriptionFrequency._(TfArgLiteral('weekly'));
  static const monthly = ZoneSubscriptionFrequency._(TfArgLiteral('monthly'));
  static const quarterly = ZoneSubscriptionFrequency._(
    TfArgLiteral('quarterly'),
  );
  static const yearly = ZoneSubscriptionFrequency._(TfArgLiteral('yearly'));
  static const notApplicable = ZoneSubscriptionFrequency._(
    TfArgLiteral('not-applicable'),
  );

  static const List<ZoneSubscriptionFrequency> values = [
    weekly,
    monthly,
    quarterly,
    yearly,
    notApplicable,
  ];
}

/// Typed helper for the `rate_plan` block of
/// `cloudflare_zone_subscription` (derived from provider schema).
@immutable
final class ZoneSubscriptionRatePlan {
  const ZoneSubscriptionRatePlan({this.id, this.scope});

  final ZoneSubscriptionRatePlanId? id;

  final TfArg<String>? scope;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// `id` — derived from the provider schema description.
extension type const ZoneSubscriptionRatePlanId._(TfArg<String> _)
    implements TfArg<String> {
  ZoneSubscriptionRatePlanId.variable(String name)
    : this._(TfArg.variable(name));
  ZoneSubscriptionRatePlanId.expression(String template)
    : this._(TfArg.expression(template));
  const ZoneSubscriptionRatePlanId.arg(TfArg<String> arg) : this._(arg);

  static const free = ZoneSubscriptionRatePlanId._(TfArgLiteral('free'));
  static const lite = ZoneSubscriptionRatePlanId._(TfArgLiteral('lite'));
  static const pro = ZoneSubscriptionRatePlanId._(TfArgLiteral('pro'));
  static const proPlus = ZoneSubscriptionRatePlanId._(TfArgLiteral('pro_plus'));
  static const business = ZoneSubscriptionRatePlanId._(
    TfArgLiteral('business'),
  );
  static const enterprise = ZoneSubscriptionRatePlanId._(
    TfArgLiteral('enterprise'),
  );
  static const partnersFree = ZoneSubscriptionRatePlanId._(
    TfArgLiteral('partners_free'),
  );
  static const partnersPro = ZoneSubscriptionRatePlanId._(
    TfArgLiteral('partners_pro'),
  );
  static const partnersBusiness = ZoneSubscriptionRatePlanId._(
    TfArgLiteral('partners_business'),
  );
  static const partnersEnterprise = ZoneSubscriptionRatePlanId._(
    TfArgLiteral('partners_enterprise'),
  );
  static const partnersEnt = ZoneSubscriptionRatePlanId._(
    TfArgLiteral('partners_ent'),
  );

  static const List<ZoneSubscriptionRatePlanId> values = [
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
    partnersEnt,
  ];
}

/// Factory wrapper for `cloudflare_zone_subscription`.
///
/// Accepted Permissions
///
/// - `Billing Read` - `Billing Write`
final class CloudflareZoneSubscription extends Resource {
  static const String tfType = 'cloudflare_zone_subscription';

  CloudflareZoneSubscription(
    super.localName, {
    ZoneSubscriptionFrequency? frequency,
    required RefTo<CloudflareZone> zoneId,
    ZoneSubscriptionRatePlan? ratePlan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'frequency': ?frequency,
           'zone_id': zoneId.encodeAs('id'),
           if (ratePlan != null) 'rate_plan': TfArg.literal(ratePlan.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZoneSubscription>`.
  RefTo<CloudflareZoneSubscription> get ref => RefTo.of(this);

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

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
