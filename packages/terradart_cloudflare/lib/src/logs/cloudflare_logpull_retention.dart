// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_logpull_retention`.
const Set<String> _cloudflareLogpullRetentionSensitive = <String>{};

/// Factory wrapper for `cloudflare_logpull_retention`.
///
/// Accepted Permissions
///
/// - `Logs Read` - `Logs Write`
final class CloudflareLogpullRetention extends Resource {
  static const String tfType = 'cloudflare_logpull_retention';

  CloudflareLogpullRetention({
    required super.localName,
    TfArg<bool>? flag,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {if (flag != null) 'flag': flag, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogpullRetentionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
