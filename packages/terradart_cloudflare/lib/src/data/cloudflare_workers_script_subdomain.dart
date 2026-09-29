// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../workers/cloudflare_workers_script_subdomain.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> scriptName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'script_name': scriptName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersScriptSubdomainSensitive;

  /// A reference to the `cloudflare_workers_script_subdomain` this data source reads, for
  /// arguments typed `RefTo<CloudflareWorkersScriptSubdomain>`.
  RefTo<CloudflareWorkersScriptSubdomain> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `previews_enabled` attribute.
  TfRef<bool> get previewsEnabled =>
      TfRef.attribute<bool>(this, 'previews_enabled');
}
