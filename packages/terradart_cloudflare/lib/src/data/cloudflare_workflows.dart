// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? search,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (search != null) 'search': search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkflowsSensitive;
}
