// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_access_rules`.
const Set<String> _cloudflareAccessRulesSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `cloudflare_access_rules` (derived from provider schema).
@immutable
final class DataAccessRulesConfiguration {
  const DataAccessRulesConfiguration({this.target, this.value});

  final TfArg<String>? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (target != null) 'target': target!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_access_rules`.
///
/// Accepted Permissions
///
/// - `Account Firewall Access Rules Read` - `Account Firewall Access Rules
/// Write`
final class DataCloudflareAccessRules extends Data {
  static const String tfType = 'cloudflare_access_rules';

  DataCloudflareAccessRules({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? direction,
    TfArg<String>? match,
    TfArg<num>? maxItems,
    TfArg<String>? mode,
    TfArg<String>? notes,
    TfArg<String>? order,
    TfArg<String>? zoneId,
    DataAccessRulesConfiguration? configuration,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (match != null) 'match': match,
           if (maxItems != null) 'max_items': maxItems,
           if (mode != null) 'mode': mode,
           if (notes != null) 'notes': notes,
           if (order != null) 'order': order,
           if (zoneId != null) 'zone_id': zoneId,
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccessRulesSensitive;
}
