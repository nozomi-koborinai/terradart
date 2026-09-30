// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account_subscription.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_account_subscription`.
const Set<String> _cloudflareAccountSubscriptionSensitive = <String>{};

/// Factory wrapper for `cloudflare_account_subscription`.
///
/// Accepted Permissions
///
/// - `Billing Read` - `Billing Write`
final class DataCloudflareAccountSubscription extends Data {
  static const String tfType = 'cloudflare_account_subscription';

  DataCloudflareAccountSubscription({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountSubscriptionSensitive;

  /// A reference to the `cloudflare_account_subscription` this data source reads, for
  /// arguments typed `RefTo<CloudflareAccountSubscription>`.
  RefTo<CloudflareAccountSubscription> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `price` attribute.
  TfRef<num> get price => TfRef.attribute<num>(this, 'price');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
