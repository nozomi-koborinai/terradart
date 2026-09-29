// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../stream/cloudflare_stream_audio_track.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
  Set<String> get sensitiveFields => _cloudflareStreamAudioTrackSensitive;

  /// A reference to the `cloudflare_stream_audio_track` this data source reads, for
  /// arguments typed `RefTo<CloudflareStreamAudioTrack>`.
  RefTo<CloudflareStreamAudioTrack> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member
}
