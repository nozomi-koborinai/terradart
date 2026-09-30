// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone_subscription.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_subscription`.
const Set<String> _cloudflareZoneSubscriptionSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_subscription`.
///
/// Accepted Permissions
///
/// - `Billing Read` - `Billing Write`
final class DataCloudflareZoneSubscription extends Data {
  static const String tfType = 'cloudflare_zone_subscription';

  DataCloudflareZoneSubscription({
    required super.localName,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneSubscriptionSensitive;

  /// A reference to the `cloudflare_zone_subscription` this data source reads, for
  /// arguments typed `RefTo<CloudflareZoneSubscription>`.
  RefTo<CloudflareZoneSubscription> get ref =>
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

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
