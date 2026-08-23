// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_oauth_scopes`.
const Set<String> _cloudflareOauthScopesSensitive = <String>{};

/// Factory wrapper for `cloudflare_oauth_scopes`.
final class DataCloudflareOauthScopes extends Data {
  static const String tfType = 'cloudflare_oauth_scopes';

  DataCloudflareOauthScopes({required super.localName, TfArg<num>? maxItems})
    : super(
        terraformType: tfType,
        argMap: {if (maxItems != null) 'max_items': maxItems},
      );

  @override
  Set<String> get sensitiveFields => _cloudflareOauthScopesSensitive;
}
