// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_web_analytics_site`.
const Set<String> _cloudflareWebAnalyticsSiteSensitive = <String>{};

/// Factory wrapper for `cloudflare_web_analytics_site`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write`
final class CloudflareWebAnalyticsSite extends Resource {
  static const String tfType = 'cloudflare_web_analytics_site';

  CloudflareWebAnalyticsSite({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? autoInstall,
    TfArg<bool>? enabled,
    TfArg<String>? host,
    TfArg<bool>? lite,
    TfArg<String>? zoneTag,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (autoInstall != null) 'auto_install': autoInstall,
           if (enabled != null) 'enabled': enabled,
           if (host != null) 'host': host,
           if (lite != null) 'lite': lite,
           if (zoneTag != null) 'zone_tag': zoneTag,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWebAnalyticsSiteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `site_tag` attribute.
  TfRef<String> get siteTag => TfRef.attribute<String>(this, 'site_tag');

  /// Reference to `site_token` attribute.
  TfRef<String> get siteToken => TfRef.attribute<String>(this, 'site_token');

  /// Reference to `snippet` attribute.
  TfRef<String> get snippet => TfRef.attribute<String>(this, 'snippet');
}
