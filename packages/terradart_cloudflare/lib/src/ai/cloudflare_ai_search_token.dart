// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_search_token`.
const Set<String> _cloudflareAiSearchTokenSensitive = <String>{'cf_api_key'};

/// Factory wrapper for `cloudflare_ai_search_token`.
final class CloudflareAiSearchToken extends Resource {
  static const String tfType = 'cloudflare_ai_search_token';

  CloudflareAiSearchToken({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> cfApiId,
    required TfArg<String> cfApiKey,
    TfArg<bool>? legacy,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'cf_api_id': cfApiId,
           'cf_api_key': cfApiKey,
           if (legacy != null) 'legacy': legacy,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchTokenSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `modified_by` attribute.
  TfRef<String> get modifiedBy => TfRef.attribute<String>(this, 'modified_by');
}
