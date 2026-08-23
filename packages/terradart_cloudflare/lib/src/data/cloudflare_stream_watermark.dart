// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> accountId,
    required TfArg<String> identifier,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'identifier': identifier},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamWatermarkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
