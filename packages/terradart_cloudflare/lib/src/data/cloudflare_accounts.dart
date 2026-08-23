// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_accounts`.
const Set<String> _cloudflareAccountsSensitive = <String>{};

/// Factory wrapper for `cloudflare_accounts`.
final class DataCloudflareAccounts extends Data {
  static const String tfType = 'cloudflare_accounts';

  DataCloudflareAccounts({
    required super.localName,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? name,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (direction != null) 'direction': direction,
           if (maxItems != null) 'max_items': maxItems,
           if (name != null) 'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
