// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_subscription`.
const Set<String> _cloudflareZoneSubscriptionSensitive = <String>{};

/// Zone Subscription enum for `frequency`.
enum ZoneSubscriptionFrequency implements TerraformEnum {
  weekly('weekly'),
  monthly('monthly'),
  quarterly('quarterly'),
  yearly('yearly'),
  notApplicable('not-applicable');

  const ZoneSubscriptionFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rate_plan` block of
/// `cloudflare_zone_subscription` (derived from provider schema).
@immutable
final class ZoneSubscriptionRatePlan {
  const ZoneSubscriptionRatePlan({this.id, this.scope});

  final TfArg<ZoneSubscriptionRatePlanId>? id;

  final TfArg<String>? scope;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
  };
}

/// `id` — derived from the provider schema description.
enum ZoneSubscriptionRatePlanId implements TerraformEnum {
  free('free'),
  lite('lite'),
  pro('pro'),
  proPlus('pro_plus'),
  business('business'),
  enterprise('enterprise'),
  partnersFree('partners_free'),
  partnersPro('partners_pro'),
  partnersBusiness('partners_business'),
  partnersEnterprise('partners_enterprise'),
  partnersEnt('partners_ent');

  const ZoneSubscriptionRatePlanId(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zone_subscription`.
///
/// Accepted Permissions
///
/// - `Billing Read` - `Billing Write`
final class CloudflareZoneSubscription extends Resource {
  static const String tfType = 'cloudflare_zone_subscription';

  CloudflareZoneSubscription({
    required super.localName,
    TfArg<ZoneSubscriptionFrequency>? frequency,
    required TfArg<String> zoneId,
    ZoneSubscriptionRatePlan? ratePlan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (frequency != null) 'frequency': frequency,
           'zone_id': zoneId,
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
}
