// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_image_variant`.
const Set<String> _cloudflareImageVariantSensitive = <String>{};

/// Typed helper for the `options` block of
/// `cloudflare_image_variant` (derived from provider schema).
@immutable
final class ImageVariantOptions {
  const ImageVariantOptions({
    required this.fit,
    required this.height,
    required this.metadata,
    required this.width,
  });

  final ImageVariantFit fit;

  final TfArg<num> height;

  final ImageVariantMetadata metadata;

  final TfArg<num> width;

  Map<String, Object?> encode() => {
    'fit': fit.toTfJson(),
    'height': height.toTfJson(),
    'metadata': metadata.toTfJson(),
    'width': width.toTfJson(),
  };
}

/// `fit` — derived from the provider schema description.
extension type const ImageVariantFit._(TfArg<String> _)
    implements TfArg<String> {
  ImageVariantFit.variable(String name) : this._(TfArg.variable(name));
  ImageVariantFit.expression(String template)
    : this._(TfArg.expression(template));
  const ImageVariantFit.arg(TfArg<String> arg) : this._(arg);

  static const scaleDown = ImageVariantFit._(TfArgLiteral('scale-down'));
  static const contain = ImageVariantFit._(TfArgLiteral('contain'));
  static const cover = ImageVariantFit._(TfArgLiteral('cover'));
  static const crop = ImageVariantFit._(TfArgLiteral('crop'));
  static const pad = ImageVariantFit._(TfArgLiteral('pad'));

  static const List<ImageVariantFit> values = [
    scaleDown,
    contain,
    cover,
    crop,
    pad,
  ];
}

/// `metadata` — derived from the provider schema description.
extension type const ImageVariantMetadata._(TfArg<String> _)
    implements TfArg<String> {
  ImageVariantMetadata.variable(String name) : this._(TfArg.variable(name));
  ImageVariantMetadata.expression(String template)
    : this._(TfArg.expression(template));
  const ImageVariantMetadata.arg(TfArg<String> arg) : this._(arg);

  static const keep = ImageVariantMetadata._(TfArgLiteral('keep'));
  static const copyright = ImageVariantMetadata._(TfArgLiteral('copyright'));
  static const none = ImageVariantMetadata._(TfArgLiteral('none'));

  static const List<ImageVariantMetadata> values = [keep, copyright, none];
}

/// Factory wrapper for `cloudflare_image_variant`.
///
/// Accepted Permissions
///
/// - `Images Read` - `Images Write`
final class CloudflareImageVariant extends Resource {
  static const String tfType = 'cloudflare_image_variant';

  CloudflareImageVariant(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> id,
    TfArg<bool>? neverRequireSignedUrls,
    required ImageVariantOptions options,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'id': id,
           'never_require_signed_urls': ?neverRequireSignedUrls,
           'options': TfArg.literal(options.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareImageVariantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareImageVariant>`.
  RefTo<CloudflareImageVariant> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `never_require_signed_urls` attribute.
  TfRef<bool> get neverRequireSignedUrls =>
      TfRef.attribute<bool>(this, 'never_require_signed_urls');
}
