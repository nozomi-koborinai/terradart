// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_wan_bgp_filter_profiles`.
const Set<String> _cloudflareMagicWanBgpFilterProfilesSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_wan_bgp_filter_profiles`.
final class DataCloudflareMagicWanBgpFilterProfiles extends Data {
  static const String tfType = 'cloudflare_magic_wan_bgp_filter_profiles';

  DataCloudflareMagicWanBgpFilterProfiles({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMagicWanBgpFilterProfilesSensitive;
}
