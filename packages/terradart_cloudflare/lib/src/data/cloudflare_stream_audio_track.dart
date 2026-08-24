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
final class DataCloudflareStreamAudioTrack extends Data {
  static const String tfType = 'cloudflare_stream_audio_track';

  DataCloudflareStreamAudioTrack({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> identifier,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'identifier': identifier},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamAudioTrackSensitive;
}
