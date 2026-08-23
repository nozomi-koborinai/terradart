// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_turnstile_widgets`.
const Set<String> _cloudflareTurnstileWidgetsSensitive = <String>{};

/// Factory wrapper for `cloudflare_turnstile_widgets`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `Turnstile Sites
/// Read` - `Turnstile Sites Write`
final class DataCloudflareTurnstileWidgets extends Data {
  static const String tfType = 'cloudflare_turnstile_widgets';

  DataCloudflareTurnstileWidgets({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? direction,
    TfArg<String>? filter,
    TfArg<num>? maxItems,
    TfArg<String>? order,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (filter != null) 'filter': filter,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTurnstileWidgetsSensitive;
}
