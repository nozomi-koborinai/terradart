// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_moq_relays`.
const Set<String> _cloudflareMoqRelaysSensitive = <String>{};

/// Factory wrapper for `cloudflare_moq_relays`.
final class DataCloudflareMoqRelays extends Data {
  static const String tfType = 'cloudflare_moq_relays';

  DataCloudflareMoqRelays({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? asc,
    TfArg<String>? createdAfter,
    TfArg<String>? createdBefore,
    TfArg<num>? maxItems,
    TfArg<num>? perPage,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (asc != null) 'asc': asc,
           if (createdAfter != null) 'created_after': createdAfter,
           if (createdBefore != null) 'created_before': createdBefore,
           if (maxItems != null) 'max_items': maxItems,
           if (perPage != null) 'per_page': perPage,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMoqRelaysSensitive;
}
