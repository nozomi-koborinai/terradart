// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_stream_audio_track`.
const Set<String> _cloudflareStreamAudioTrackSensitive = <String>{};

/// Factory wrapper for `cloudflare_stream_audio_track`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class CloudflareStreamAudioTrack extends Resource {
  static const String tfType = 'cloudflare_stream_audio_track';

  CloudflareStreamAudioTrack({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? audioIdentifier,
    TfArg<bool>? defaultCase,
    required TfArg<String> identifier,
    TfArg<String>? label,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (audioIdentifier != null) 'audio_identifier': audioIdentifier,
           if (defaultCase != null) 'default': defaultCase,
           'identifier': identifier,
           if (label != null) 'label': label,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamAudioTrackSensitive;

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}
