// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ai/cloudflare_ai_search_namespace.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_ai_search_namespace`.
const Set<String> _cloudflareAiSearchNamespaceSensitive = <String>{};

/// Factory wrapper for `cloudflare_ai_search_namespace`.
final class DataCloudflareAiSearchNamespace extends Data {
  static const String tfType = 'cloudflare_ai_search_namespace';

  DataCloudflareAiSearchNamespace({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId.encodeAs('id'), 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchNamespaceSensitive;

  /// A reference to the `cloudflare_ai_search_namespace` this data source reads, for
  /// arguments typed `RefTo<CloudflareAiSearchNamespace>`.
  RefTo<CloudflareAiSearchNamespace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `public_endpoint_id` attribute.
  TfRef<String> get publicEndpointId =>
      TfRef.attribute<String>(this, 'public_endpoint_id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
