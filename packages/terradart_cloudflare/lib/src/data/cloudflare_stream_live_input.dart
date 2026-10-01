// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../stream/cloudflare_stream_live_input.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  DataCloudflareStreamLiveInput(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> liveInputIdentifier,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'live_input_identifier': liveInputIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamLiveInputSensitive;

  /// A reference to the `cloudflare_stream_live_input` this data source reads, for
  /// arguments typed `RefTo<CloudflareStreamLiveInput>`.
  RefTo<CloudflareStreamLiveInput> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `live_input_identifier` attribute.
  TfRef<String> get liveInputIdentifier =>
      TfRef.attribute<String>(this, 'live_input_identifier');
}
