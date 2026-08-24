// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_dls_prefix_bindings`.
const Set<String> _cloudflareDlsPrefixBindingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_dls_prefix_bindings`.
///
/// Accepted Permissions
///
/// - `DLS: Read` - `DLS: Write`
final class DataCloudflareDlsPrefixBindings extends Data {
  static const String tfType = 'cloudflare_dls_prefix_bindings';

  DataCloudflareDlsPrefixBindings({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDlsPrefixBindingsSensitive;
}
