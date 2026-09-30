// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? autoInstall,
    TfArg<bool>? enabled,
    TfArg<String>? host,
    TfArg<bool>? lite,
    TfArg<String>? zoneTag,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'auto_install': ?autoInstall,
           'enabled': ?enabled,
           'host': ?host,
           'lite': ?lite,
           'zone_tag': ?zoneTag,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWebAnalyticsSiteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWebAnalyticsSite>`.
  RefTo<CloudflareWebAnalyticsSite> get ref => RefTo.of(this);

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `auto_install` attribute.
  TfRef<bool> get autoInstallRef => TfRef.attribute<bool>(this, 'auto_install');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `host` attribute.
  TfRef<String> get hostRef => TfRef.attribute<String>(this, 'host');

  /// Reference to `lite` attribute.
  TfRef<bool> get liteRef => TfRef.attribute<bool>(this, 'lite');

  /// Reference to `zone_tag` attribute.
  TfRef<String> get zoneTagRef => TfRef.attribute<String>(this, 'zone_tag');
}
