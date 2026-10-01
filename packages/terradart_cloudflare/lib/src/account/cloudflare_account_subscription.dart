// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_account_subscription`.
const Set<String> _cloudflareAccountSubscriptionSensitive = <String>{};

/// Account Subscription enum for `frequency`.
enum AccountSubscriptionFrequency implements TerraformEnum {
  weekly('weekly'),
  monthly('monthly'),
  quarterly('quarterly'),
  yearly('yearly'),
  notApplicable('not-applicable');

  const AccountSubscriptionFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rate_plan` block of
/// `cloudflare_account_subscription` (derived from provider schema).
@immutable
final class AccountSubscriptionRatePlan {
  const AccountSubscriptionRatePlan({this.id, this.scope});

  final TfArg<AccountSubscriptionRatePlanId>? id;

  final TfArg<String>? scope;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// `id` — derived from the provider schema description.
enum AccountSubscriptionRatePlanId implements TerraformEnum {
  free('free'),
  lite('lite'),
  pro('pro'),
  proPlus('pro_plus'),
  business('business'),
  enterprise('enterprise'),
  partnersFree('partners_free'),
  partnersPro('partners_pro'),
  partnersBusiness('partners_business'),
  partnersEnterprise('partners_enterprise');

  const AccountSubscriptionRatePlanId(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_account_subscription`.
///
/// Accepted Permissions
///
/// - `Billing Read` - `Billing Write`
final class CloudflareAccountSubscription extends Resource {
  static const String tfType = 'cloudflare_account_subscription';

  CloudflareAccountSubscription({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<AccountSubscriptionFrequency>? frequency,
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
