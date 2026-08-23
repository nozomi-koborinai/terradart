// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_search_namespace`.
const Set<String> _cloudflareAiSearchNamespaceSensitive = <String>{};

/// Factory wrapper for `cloudflare_ai_search_namespace`.
final class CloudflareAiSearchNamespace extends Resource {
  static const String tfType = 'cloudflare_ai_search_namespace';

  CloudflareAiSearchNamespace({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? description,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (description != null) 'description': description,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchNamespaceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');
}
