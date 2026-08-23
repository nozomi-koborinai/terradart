// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_subscription`.
const Set<String> _cloudflareAccountSubscriptionSensitive = <String>{};

/// Typed helper for the `rate_plan` block of
/// `cloudflare_account_subscription` (derived from provider schema).
@immutable
final class AccountSubscriptionRatePlan {
  const AccountSubscriptionRatePlan({this.id, this.scope});

  final TfArg<String>? id;

  final TfArg<String>? scope;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
  };
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
    TfArg<String>? accountId,
    TfArg<String>? frequency,
    AccountSubscriptionRatePlan? ratePlan,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (frequency != null) 'frequency': frequency,
           if (ratePlan != null) 'rate_plan': TfArg.literal(ratePlan.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountSubscriptionSensitive;

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
