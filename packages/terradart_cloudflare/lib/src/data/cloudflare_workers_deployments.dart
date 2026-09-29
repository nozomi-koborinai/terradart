// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> accountId,
    TfArg<num>? maxItems,
    required TfArg<String> scriptName,
    TfArg<String>? since,
    TfArg<String>? until,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'max_items': ?maxItems,
           'script_name': scriptName,
           'since': ?since,
           'until': ?until,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersDeploymentsSensitive;
}
