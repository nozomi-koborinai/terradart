// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_flagship_apps`.
const Set<String> _cloudflareFlagshipAppsSensitive = <String>{};

/// Factory wrapper for `cloudflare_flagship_apps`.
///
/// Accepted Permissions
///
/// - `Flagship Read`
final class DataCloudflareFlagshipApps extends Data {
  static const String tfType = 'cloudflare_flagship_apps';

  DataCloudflareFlagshipApps({
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
  Set<String> get sensitiveFields => _cloudflareFlagshipAppsSensitive;
}
