// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_stream`.
const Set<String> _cloudflareStreamSensitive = <String>{};

/// Factory wrapper for `cloudflare_stream`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class DataCloudflareStream extends Data {
  static const String tfType = 'cloudflare_stream';

  DataCloudflareStream({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> identifier,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'identifier': identifier},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamSensitive;

  /// Reference to `allowed_origins` attribute.
  TfRef<List<String>> get allowedOrigins =>
      TfRef.attribute<List<String>>(this, 'allowed_origins');

  /// Reference to `clipped_from` attribute.
  TfRef<String> get clippedFrom =>
      TfRef.attribute<String>(this, 'clipped_from');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `duration` attribute.
  TfRef<num> get duration => TfRef.attribute<num>(this, 'duration');

  /// Reference to `live_input` attribute.
  TfRef<String> get liveInput => TfRef.attribute<String>(this, 'live_input');

  /// Reference to `max_duration_seconds` attribute.
  TfRef<num> get maxDurationSeconds =>
      TfRef.attribute<num>(this, 'max_duration_seconds');

  /// Reference to `max_size_bytes` attribute.
  TfRef<num> get maxSizeBytes => TfRef.attribute<num>(this, 'max_size_bytes');

  /// Reference to `meta` attribute.
  TfRef<String> get meta => TfRef.attribute<String>(this, 'meta');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `preview` attribute.
  TfRef<String> get preview => TfRef.attribute<String>(this, 'preview');

  /// Reference to `ready_to_stream` attribute.
  TfRef<bool> get readyToStream =>
      TfRef.attribute<bool>(this, 'ready_to_stream');

  /// Reference to `ready_to_stream_at` attribute.
  TfRef<String> get readyToStreamAt =>
      TfRef.attribute<String>(this, 'ready_to_stream_at');

  /// Reference to `require_signed_urls` attribute.
  TfRef<bool> get requireSignedUrls =>
      TfRef.attribute<bool>(this, 'require_signed_urls');

  /// Reference to `scheduled_deletion` attribute.
  TfRef<String> get scheduledDeletion =>
      TfRef.attribute<String>(this, 'scheduled_deletion');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `thumbnail` attribute.
  TfRef<String> get thumbnail => TfRef.attribute<String>(this, 'thumbnail');

  /// Reference to `thumbnail_timestamp_pct` attribute.
  TfRef<num> get thumbnailTimestampPct =>
      TfRef.attribute<num>(this, 'thumbnail_timestamp_pct');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `upload_expiry` attribute.
  TfRef<String> get uploadExpiry =>
      TfRef.attribute<String>(this, 'upload_expiry');

  /// Reference to `uploaded` attribute.
  TfRef<String> get uploaded => TfRef.attribute<String>(this, 'uploaded');
}
