// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_moq_relays`.
const Set<String> _cloudflareMoqRelaysSensitive = <String>{};

/// Factory wrapper for `cloudflare_moq_relays`.
final class DataCloudflareMoqRelays extends Data {
  static const String tfType = 'cloudflare_moq_relays';

  DataCloudflareMoqRelays(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? asc,
    TfArg<String>? createdAfter,
    TfArg<String>? createdBefore,
    TfArg<num>? maxItems,
    TfArg<num>? perPage,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'asc': ?asc,
           'created_after': ?createdAfter,
           'created_before': ?createdBefore,
           'max_items': ?maxItems,
           'per_page': ?perPage,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMoqRelaysSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `asc` attribute.
  TfRef<bool> get asc => TfRef.attribute<bool>(this, 'asc');

  /// Reference to `created_after` attribute.
  TfRef<String> get createdAfter =>
      TfRef.attribute<String>(this, 'created_after');

  /// Reference to `created_before` attribute.
  TfRef<String> get createdBefore =>
      TfRef.attribute<String>(this, 'created_before');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `per_page` attribute.
  TfRef<num> get perPage => TfRef.attribute<num>(this, 'per_page');
}
