// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> accountId,
    required TfArg<bool> enabled,
    TfArg<bool>? previewsEnabled,
    required TfArg<String> scriptName,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'enabled': enabled,
           if (previewsEnabled != null) 'previews_enabled': previewsEnabled,
           'script_name': scriptName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersScriptSubdomainSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
