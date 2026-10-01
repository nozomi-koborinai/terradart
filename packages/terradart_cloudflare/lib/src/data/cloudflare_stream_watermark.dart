// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../stream/cloudflare_stream_watermark.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_stream_watermark`.
const Set<String> _cloudflareStreamWatermarkSensitive = <String>{};

/// Factory wrapper for `cloudflare_stream_watermark`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class DataCloudflareStreamWatermark extends Data {
  static const String tfType = 'cloudflare_stream_watermark';

  DataCloudflareStreamWatermark({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> identifier,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'identifier': identifier,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamWatermarkSensitive;

  /// A reference to the `cloudflare_stream_watermark` this data source reads, for
  /// arguments typed `RefTo<CloudflareStreamWatermark>`.
  RefTo<CloudflareStreamWatermark> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `downloaded_from` attribute.
  TfRef<String> get downloadedFrom =>
      TfRef.attribute<String>(this, 'downloaded_from');

  /// Reference to `height` attribute.
  TfRef<num> get height => TfRef.attribute<num>(this, 'height');

  /// Reference to `opacity` attribute.
  TfRef<num> get opacity => TfRef.attribute<num>(this, 'opacity');

  /// Reference to `padding` attribute.
  TfRef<num> get padding => TfRef.attribute<num>(this, 'padding');

  /// Reference to `position` attribute.
  TfRef<String> get position => TfRef.attribute<String>(this, 'position');

  /// Reference to `scale` attribute.
  TfRef<num> get scale => TfRef.attribute<num>(this, 'scale');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `width` attribute.
  TfRef<num> get width => TfRef.attribute<num>(this, 'width');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');
}
