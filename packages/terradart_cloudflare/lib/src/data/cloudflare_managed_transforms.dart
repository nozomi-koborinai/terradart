// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../transforms/cloudflare_managed_transforms.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_managed_transforms`.
const Set<String> _cloudflareManagedTransformsSensitive = <String>{};

/// Factory wrapper for `cloudflare_managed_transforms`.
///
/// Accepted Permissions
///
/// - `Account Rulesets Read` - `Account Rulesets Write` - `Account WAF Read` -
/// `Account WAF Write` - `Bot Management Read` - `Bot Management Write` -
/// `Cache Settings Read` - `Cache Settings Write` - `Config Settings Read` -
/// `Config Settings Write` - `Custom Errors Read` - `Custom Errors Write` -
/// `Dynamic URL Redirects Read` - `Dynamic URL Redirects Write` - `HTTP DDoS
/// Managed Ruleset Read` - `HTTP DDoS Managed Ruleset Write` - `L4 DDoS Managed
/// Ruleset Read` - `L4 DDoS Managed Ruleset Write` - `Logs Read` - `Logs Write`
/// - `Magic Firewall Read` - `Magic Firewall Write` - `Managed headers Read` -
/// `Managed headers Write` - `Mass URL Redirects Read` - `Mass URL Redirects
/// Write` - `Origin Read` - `Origin Write` - `Response Compression Read` -
/// `Response Compression Write` - `Sanitize Read` - `Sanitize Write` - `Select
/// Configuration Read` - `Select Configuration Write` - `Transform Rules Read`
/// - `Transform Rules Write` - `Zone Transform Rules Read` - `Zone Transform
/// Rules Write` - `Zone WAF Read` - `Zone WAF Write`
final class DataCloudflareManagedTransforms extends Data {
  static const String tfType = 'cloudflare_managed_transforms';

  DataCloudflareManagedTransforms(
    super.localName, {
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareManagedTransformsSensitive;

  /// A reference to the `cloudflare_managed_transforms` this data source reads, for
  /// arguments typed `RefTo<CloudflareManagedTransforms>`.
  RefTo<CloudflareManagedTransforms> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
