// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? hideLiveViewerCount;

  final TfArg<StreamLiveInputMode>? mode;

  final TfArg<bool>? requireSignedUrls;

  final TfArg<num>? timeoutSeconds;

  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'hide_live_viewer_count': ?hideLiveViewerCount?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'require_signed_urls': ?requireSignedUrls?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum StreamLiveInputMode implements TerraformEnum {
  off('off'),
  automatic('automatic');

  const StreamLiveInputMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_stream_live_input`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class CloudflareStreamLiveInput extends Resource {
  static const String tfType = 'cloudflare_stream_live_input';

  CloudflareStreamLiveInput(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? defaultCreator,
    TfArg<num>? deleteRecordingAfterDays,
    TfArg<bool>? enabled,
    TfArg<String>? liveInputIdentifier,
    TfArg<String>? meta,
    TfArg<bool>? preferLowLatency,
    StreamLiveInputRecording? recording,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'default_creator': ?defaultCreator,
           'delete_recording_after_days': ?deleteRecordingAfterDays,
           'enabled': ?enabled,
           'live_input_identifier': ?liveInputIdentifier,
           'meta': ?meta,
           'prefer_low_latency': ?preferLowLatency,
           if (recording != null)
             'recording': TfArg.literal(recording.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamLiveInputSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareStreamLiveInput>`.
  RefTo<CloudflareStreamLiveInput> get ref => RefTo.of(this);

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `default_creator` attribute.
  TfRef<String> get defaultCreator =>
      TfRef.attribute<String>(this, 'default_creator');

  /// Reference to `delete_recording_after_days` attribute.
  TfRef<num> get deleteRecordingAfterDays =>
      TfRef.attribute<num>(this, 'delete_recording_after_days');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `live_input_identifier` attribute.
  TfRef<String> get liveInputIdentifier =>
      TfRef.attribute<String>(this, 'live_input_identifier');

  /// Reference to `meta` attribute.
  TfRef<String> get meta => TfRef.attribute<String>(this, 'meta');

  /// Reference to `prefer_low_latency` attribute.
  TfRef<bool> get preferLowLatency =>
      TfRef.attribute<bool>(this, 'prefer_low_latency');
}
