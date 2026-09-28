// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ct_alerting`.
const Set<String> _cloudflareCtAlertingSensitive = <String>{};

/// Factory wrapper for `cloudflare_ct_alerting`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareCtAlerting extends Resource {
  static const String tfType = 'cloudflare_ct_alerting';

  CloudflareCtAlerting({
    required super.localName,
    TfArg<List<String>>? emails,
    required TfArg<bool> enabled,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (emails != null) 'emails': emails,
           'enabled': enabled,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCtAlertingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
