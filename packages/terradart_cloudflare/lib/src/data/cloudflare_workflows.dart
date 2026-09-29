// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workflows`.
const Set<String> _cloudflareWorkflowsSensitive = <String>{};

/// Factory wrapper for `cloudflare_workflows`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkflows extends Data {
  static const String tfType = 'cloudflare_workflows';

  DataCloudflareWorkflows({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkflowsSensitive;
}
