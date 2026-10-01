// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_deployments`.
const Set<String> _cloudflareWorkersDeploymentsSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_deployments`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkersDeployments extends Data {
  static const String tfType = 'cloudflare_workers_deployments';

  DataCloudflareWorkersDeployments({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<num>? maxItems,
    required TfArg<String> scriptName,
    TfArg<String>? since,
    TfArg<String>? until,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'max_items': ?maxItems,
           'script_name': scriptName,
           'since': ?since,
           'until': ?until,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersDeploymentsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `script_name` attribute.
  TfRef<String> get scriptName => TfRef.attribute<String>(this, 'script_name');

  /// Reference to `since` attribute.
  TfRef<String> get since => TfRef.attribute<String>(this, 'since');

  /// Reference to `until` attribute.
  TfRef<String> get until => TfRef.attribute<String>(this, 'until');
}
