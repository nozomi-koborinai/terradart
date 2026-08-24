// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_sso_connectors`.
const Set<String> _cloudflareSsoConnectorsSensitive = <String>{};

/// Factory wrapper for `cloudflare_sso_connectors`.
///
/// Accepted Permissions
///
/// - `SSO Connector Read`
final class DataCloudflareSsoConnectors extends Data {
  static const String tfType = 'cloudflare_sso_connectors';

  DataCloudflareSsoConnectors({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSsoConnectorsSensitive;
}
