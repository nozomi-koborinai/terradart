// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_pages_projects`.
const Set<String> _cloudflarePagesProjectsSensitive = <String>{
  'result.build_config.web_analytics_token',
  'result.canonical_deployment.build_config.web_analytics_token',
  'result.canonical_deployment.env_vars.value',
  'result.deployment_configs.preview.env_vars.value',
  'result.deployment_configs.production.env_vars.value',
  'result.latest_deployment.build_config.web_analytics_token',
  'result.latest_deployment.env_vars.value',
};

/// Factory wrapper for `cloudflare_pages_projects`.
///
/// Accepted Permissions
///
/// - `Pages Read` - `Pages Write`
final class DataCloudflarePagesProjects extends Data {
  static const String tfType = 'cloudflare_pages_projects';

  DataCloudflarePagesProjects({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePagesProjectsSensitive;
}
