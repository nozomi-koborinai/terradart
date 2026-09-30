// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_oauth_scopes`.
const Set<String> _cloudflareOauthScopesSensitive = <String>{};

/// Factory wrapper for `cloudflare_oauth_scopes`.
final class DataCloudflareOauthScopes extends Data {
  static const String tfType = 'cloudflare_oauth_scopes';

  DataCloudflareOauthScopes({
    required super.localName,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'max_items': ?maxItems});

  @override
  Set<String> get sensitiveFields => _cloudflareOauthScopesSensitive;

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');
}
