// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_rulesets`.
const Set<String> _cloudflareRulesetsSensitive = <String>{};

/// Factory wrapper for `cloudflare_rulesets`.
final class DataCloudflareRulesets extends Data {
  static const String tfType = 'cloudflare_rulesets';

  DataCloudflareRulesets({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'max_items': ?maxItems,
           'zone_id': ?zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRulesetsSensitive;
}
