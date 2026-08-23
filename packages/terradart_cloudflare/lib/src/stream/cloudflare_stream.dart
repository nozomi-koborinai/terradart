// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_stream`.
const Set<String> _cloudflareStreamSensitive = <String>{};

/// Typed helper for the `public_details` block of
/// `cloudflare_stream` (derived from provider schema).
@immutable
final class StreamPublicDetails {
  const StreamPublicDetails({
    this.channelLink,
    this.logo,
    this.shareLink,
    this.title,
  });

  final TfArg<String>? channelLink;

  final TfArg<String>? logo;

  final TfArg<String>? shareLink;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (channelLink != null) 'channel_link': channelLink!.toTfJson(),
    if (logo != null) 'logo': logo!.toTfJson(),
    if (shareLink != null) 'share_link': shareLink!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_stream`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class CloudflareStream extends Resource {
  static const String tfType = 'cloudflare_stream';

  CloudflareStream({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<List<String>>? allowedOrigins,
    TfArg<String>? creator,
    TfArg<String>? identifier,
    TfArg<num>? maxDurationSeconds,
    TfArg<String>? meta,
    TfArg<bool>? requireSignedUrls,
    TfArg<String>? scheduledDeletion,
    TfArg<num>? thumbnailTimestampPct,
    TfArg<String>? uid,
    TfArg<String>? uploadExpiry,
    StreamPublicDetails? publicDetails,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (allowedOrigins != null) 'allowed_origins': allowedOrigins,
           if (creator != null) 'creator': creator,
           if (identifier != null) 'identifier': identifier,
           if (maxDurationSeconds != null)
             'max_duration_seconds': maxDurationSeconds,
           if (meta != null) 'meta': meta,
           if (requireSignedUrls != null)
             'require_signed_urls': requireSignedUrls,
           if (scheduledDeletion != null)
             'scheduled_deletion': scheduledDeletion,
           if (thumbnailTimestampPct != null)
             'thumbnail_timestamp_pct': thumbnailTimestampPct,
           if (uid != null) 'uid': uid,
           if (uploadExpiry != null) 'upload_expiry': uploadExpiry,
           if (publicDetails != null)
             'public_details': TfArg.literal(publicDetails.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamSensitive;

  /// Reference to `clipped_from` attribute.
  TfRef<String> get clippedFrom =>
      TfRef.attribute<String>(this, 'clipped_from');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `duration` attribute.
  TfRef<num> get duration => TfRef.attribute<num>(this, 'duration');

  /// Reference to `live_input` attribute.
  TfRef<String> get liveInput => TfRef.attribute<String>(this, 'live_input');

  /// Reference to `max_size_bytes` attribute.
  TfRef<num> get maxSizeBytes => TfRef.attribute<num>(this, 'max_size_bytes');

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

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `thumbnail` attribute.
  TfRef<String> get thumbnail => TfRef.attribute<String>(this, 'thumbnail');

  /// Reference to `uploaded` attribute.
  TfRef<String> get uploaded => TfRef.attribute<String>(this, 'uploaded');
}
