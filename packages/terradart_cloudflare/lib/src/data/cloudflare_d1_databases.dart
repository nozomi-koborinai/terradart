// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_d1_databases`.
const Set<String> _cloudflareD1DatabasesSensitive = <String>{};

/// Factory wrapper for `cloudflare_d1_databases`.
///
/// Accepted Permissions
///
/// - `D1 Read` - `D1 Write`
final class DataCloudflareD1Databases extends Data {
  static const String tfType = 'cloudflare_d1_databases';

  DataCloudflareD1Databases({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (name != null) 'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareD1DatabasesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
