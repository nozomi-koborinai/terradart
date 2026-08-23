// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? accountId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (zoneId != null) 'zone_id': zoneId,
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

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `price` attribute.
  TfRef<num> get price => TfRef.attribute<num>(this, 'price');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
