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
final class DataCloudflareWorkersScriptSubdomain extends Data {
  static const String tfType = 'cloudflare_workers_script_subdomain';

  DataCloudflareWorkersScriptSubdomain({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> scriptName,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'script_name': scriptName},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersScriptSubdomainSensitive;

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `previews_enabled` attribute.
  TfRef<bool> get previewsEnabled =>
      TfRef.attribute<bool>(this, 'previews_enabled');
}
