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
final class CloudflareStreamWatermark extends Resource {
  static const String tfType = 'cloudflare_stream_watermark';

  CloudflareStreamWatermark({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? identifier,
    TfArg<String>? name,
    TfArg<num>? opacity,
    TfArg<num>? padding,
    TfArg<String>? position,
    TfArg<num>? scale,
    TfArg<String>? url,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (identifier != null) 'identifier': identifier,
           if (name != null) 'name': name,
           if (opacity != null) 'opacity': opacity,
           if (padding != null) 'padding': padding,
           if (position != null) 'position': position,
           if (scale != null) 'scale': scale,
           if (url != null) 'url': url,
         },
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

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `width` attribute.
  TfRef<num> get width => TfRef.attribute<num>(this, 'width');
}
