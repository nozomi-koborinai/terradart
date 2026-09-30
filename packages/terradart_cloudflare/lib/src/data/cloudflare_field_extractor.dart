// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../field/cloudflare_field_extractor.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_field_extractor`.
const Set<String> _cloudflareFieldExtractorSensitive = <String>{};

/// Factory wrapper for `cloudflare_field_extractor`.
final class DataCloudflareFieldExtractor extends Data {
  static const String tfType = 'cloudflare_field_extractor';

  DataCloudflareFieldExtractor({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> extractor,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'extractor': extractor,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFieldExtractorSensitive;

  /// A reference to the `cloudflare_field_extractor` this data source reads, for
  /// arguments typed `RefTo<CloudflareFieldExtractor>`.
  RefTo<CloudflareFieldExtractor> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `extractor` attribute.
  TfRef<String> get extractorRef => TfRef.attribute<String>(this, 'extractor');
}
