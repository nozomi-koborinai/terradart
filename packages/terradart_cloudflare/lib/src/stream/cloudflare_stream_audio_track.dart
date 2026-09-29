// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? audioIdentifier,
    TfArg<bool>? defaultCase,
    required TfArg<String> identifier,
    TfArg<String>? label,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'audio_identifier': ?audioIdentifier,
           'default': ?defaultCase,
           'identifier': identifier,
           'label': ?label,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamAudioTrackSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareStreamAudioTrack>`.
  RefTo<CloudflareStreamAudioTrack> get ref => RefTo.of(this);

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}
