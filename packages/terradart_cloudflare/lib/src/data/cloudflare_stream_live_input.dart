// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_stream_live_input`.
const Set<String> _cloudflareStreamLiveInputSensitive = <String>{
  'rtmps.stream_key',
  'rtmps.url',
  'rtmps_playback.stream_key',
  'rtmps_playback.url',
  'srt.passphrase',
  'srt.url',
  'srt_playback.passphrase',
  'srt_playback.url',
  'web_rtc.url',
  'web_rtc_playback.url',
};

/// Factory wrapper for `cloudflare_stream_live_input`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class DataCloudflareStreamLiveInput extends Data {
  static const String tfType = 'cloudflare_stream_live_input';

  DataCloudflareStreamLiveInput({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> liveInputIdentifier,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'live_input_identifier': liveInputIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamLiveInputSensitive;

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `delete_recording_after_days` attribute.
  TfRef<num> get deleteRecordingAfterDays =>
      TfRef.attribute<num>(this, 'delete_recording_after_days');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `keys_rotated_at` attribute.
  TfRef<String> get keysRotatedAt =>
      TfRef.attribute<String>(this, 'keys_rotated_at');

  /// Reference to `meta` attribute.
  TfRef<String> get meta => TfRef.attribute<String>(this, 'meta');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `prefer_low_latency` attribute.
  TfRef<bool> get preferLowLatency =>
      TfRef.attribute<bool>(this, 'prefer_low_latency');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}
