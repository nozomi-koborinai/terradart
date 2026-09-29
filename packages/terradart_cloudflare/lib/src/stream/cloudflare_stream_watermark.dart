// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? identifier,
    TfArg<String>? name,
    TfArg<num>? opacity,
    TfArg<num>? padding,
    TfArg<String>? position,
    TfArg<num>? scale,
    TfArg<String>? url,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'identifier': ?identifier,
           'name': ?name,
           'opacity': ?opacity,
           'padding': ?padding,
           'position': ?position,
           'scale': ?scale,
           'url': ?url,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamWatermarkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareStreamWatermark>`.
  RefTo<CloudflareStreamWatermark> get ref => RefTo.of(this);

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
