// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_flagship_flags`.
const Set<String> _cloudflareFlagshipFlagsSensitive = <String>{};

/// Factory wrapper for `cloudflare_flagship_flags`.
///
/// Accepted Permissions
///
/// - `Flagship Read`
final class DataCloudflareFlagshipFlags extends Data {
  static const String tfType = 'cloudflare_flagship_flags';

  DataCloudflareFlagshipFlags({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> appId,
    TfArg<String>? limit,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'app_id': appId,
           if (limit != null) 'limit': limit,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFlagshipFlagsSensitive;
}
