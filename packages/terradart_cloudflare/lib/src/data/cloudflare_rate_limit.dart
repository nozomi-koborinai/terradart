// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_rate_limit`.
const Set<String> _cloudflareRateLimitSensitive = <String>{};

/// Factory wrapper for `cloudflare_rate_limit`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class DataCloudflareRateLimit extends Data {
  static const String tfType = 'cloudflare_rate_limit';

  DataCloudflareRateLimit({
    required super.localName,
    required TfArg<String> rateLimitId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'rate_limit_id': rateLimitId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRateLimitSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `period` attribute.
  TfRef<num> get period => TfRef.attribute<num>(this, 'period');

  /// Reference to `threshold` attribute.
  TfRef<num> get threshold => TfRef.attribute<num>(this, 'threshold');
}
