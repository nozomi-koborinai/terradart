// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_d1_databases`.
const Set<String> _cloudflareD1DatabasesSensitive = <String>{};

/// Factory wrapper for `cloudflare_d1_databases`.
///
/// Accepted Permissions
///
/// - `D1 Read` - `D1 Write`
final class DataCloudflareD1Databases extends Data {
  static const String tfType = 'cloudflare_d1_databases';

  DataCloudflareD1Databases({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'name': ?name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareD1DatabasesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');
}
