// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../image/cloudflare_image_variant.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_image_variant`.
const Set<String> _cloudflareImageVariantSensitive = <String>{};

/// Factory wrapper for `cloudflare_image_variant`.
///
/// Accepted Permissions
///
/// - `Images Read` - `Images Write`
final class DataCloudflareImageVariant extends Data {
  static const String tfType = 'cloudflare_image_variant';

  DataCloudflareImageVariant({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> variantId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'variant_id': variantId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareImageVariantSensitive;

  /// A reference to the `cloudflare_image_variant` this data source reads, for
  /// arguments typed `RefTo<CloudflareImageVariant>`.
  RefTo<CloudflareImageVariant> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `variant_id` attribute.
  TfRef<String> get variantId => TfRef.attribute<String>(this, 'variant_id');
}
