// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_script_subdomain`.
const Set<String> _cloudflareWorkersScriptSubdomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_script_subdomain`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class CloudflareWorkersScriptSubdomain extends Resource {
  static const String tfType = 'cloudflare_workers_script_subdomain';

  CloudflareWorkersScriptSubdomain({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<bool> enabled,
    TfArg<bool>? previewsEnabled,
    required TfArg<String> scriptName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'enabled': enabled,
           'previews_enabled': ?previewsEnabled,
           'script_name': scriptName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersScriptSubdomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWorkersScriptSubdomain>`.
  RefTo<CloudflareWorkersScriptSubdomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `previews_enabled` attribute.
  TfRef<bool> get previewsEnabled =>
      TfRef.attribute<bool>(this, 'previews_enabled');

  /// Reference to `script_name` attribute.
  TfRef<String> get scriptName => TfRef.attribute<String>(this, 'script_name');
}
