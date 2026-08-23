// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
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

/// Typed helper for the `recording` block of
/// `cloudflare_stream_live_input` (derived from provider schema).
@immutable
final class StreamLiveInputRecording {
  const StreamLiveInputRecording({
    this.allowedOrigins,
    this.hideLiveViewerCount,
    this.mode,
    this.requireSignedUrls,
    this.timeoutSeconds,
  });

  final TfArg<List<Object?>>? allowedOrigins;

  final TfArg<bool>? hideLiveViewerCount;

  final TfArg<String>? mode;

  final TfArg<bool>? requireSignedUrls;

  final TfArg<num>? timeoutSeconds;

  Map<String, Object?> encode() => {
    if (allowedOrigins != null) 'allowed_origins': allowedOrigins!.toTfJson(),
    if (hideLiveViewerCount != null)
      'hide_live_viewer_count': hideLiveViewerCount!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (requireSignedUrls != null)
      'require_signed_urls': requireSignedUrls!.toTfJson(),
    if (timeoutSeconds != null) 'timeout_seconds': timeoutSeconds!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_stream_live_input`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class CloudflareStreamLiveInput extends Resource {
  static const String tfType = 'cloudflare_stream_live_input';

  CloudflareStreamLiveInput({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? defaultCreator,
    TfArg<num>? deleteRecordingAfterDays,
    TfArg<bool>? enabled,
    TfArg<String>? liveInputIdentifier,
    TfArg<String>? meta,
    TfArg<bool>? preferLowLatency,
    StreamLiveInputRecording? recording,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (defaultCreator != null) 'default_creator': defaultCreator,
           if (deleteRecordingAfterDays != null)
             'delete_recording_after_days': deleteRecordingAfterDays,
           if (enabled != null) 'enabled': enabled,
           if (liveInputIdentifier != null)
             'live_input_identifier': liveInputIdentifier,
           if (meta != null) 'meta': meta,
           if (preferLowLatency != null) 'prefer_low_latency': preferLowLatency,
           if (recording != null)
             'recording': TfArg.literal(recording.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamLiveInputSensitive;

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `keys_rotated_at` attribute.
  TfRef<String> get keysRotatedAt =>
      TfRef.attribute<String>(this, 'keys_rotated_at');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}
