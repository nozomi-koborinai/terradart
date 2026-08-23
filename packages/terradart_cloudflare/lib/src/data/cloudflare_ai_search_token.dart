// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_search_token`.
const Set<String> _cloudflareAiSearchTokenSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_ai_search_token` (derived from provider schema).
@immutable
final class DataAiSearchTokenFilter {
  const DataAiSearchTokenFilter({this.search});

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    if (search != null) 'search': search!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_ai_search_token`.
final class DataCloudflareAiSearchToken extends Data {
  static const String tfType = 'cloudflare_ai_search_token';

  DataCloudflareAiSearchToken({
    required super.localName,
    TfArg<String>? accountId,
    DataAiSearchTokenFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchTokenSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cf_api_id` attribute.
  TfRef<String> get cfApiId => TfRef.attribute<String>(this, 'cf_api_id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `legacy` attribute.
  TfRef<bool> get legacy => TfRef.attribute<bool>(this, 'legacy');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `modified_by` attribute.
  TfRef<String> get modifiedBy => TfRef.attribute<String>(this, 'modified_by');
}
