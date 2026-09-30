// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    'channel_link': ?channelLink?.toTfJson(),
    'logo': ?logo?.toTfJson(),
    'share_link': ?shareLink?.toTfJson(),
    'title': ?title?.toTfJson(),
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
    required RefTo<CloudflareAccount> accountId,
    TfArg<List<String>>? allowedOrigins,
    TfArg<String>? creator,
    TfArg<bool>? directUser,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'allowed_origins': ?allowedOrigins,
           'creator': ?creator,
           'direct_user': ?directUser,
           'identifier': ?identifier,
           'max_duration_seconds': ?maxDurationSeconds,
           'meta': ?meta,
           'require_signed_urls': ?requireSignedUrls,
           'scheduled_deletion': ?scheduledDeletion,
           'thumbnail_timestamp_pct': ?thumbnailTimestampPct,
           'uid': ?uid,
           'upload_expiry': ?uploadExpiry,
           if (publicDetails != null)
             'public_details': TfArg.literal(publicDetails.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareStream>`.
  RefTo<CloudflareStream> get ref => RefTo.of(this);

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `allowed_origins` attribute.
  TfRef<List<String>> get allowedOriginsRef =>
      TfRef.attribute<List<String>>(this, 'allowed_origins');

  /// Reference to `creator` attribute.
  TfRef<String> get creatorRef => TfRef.attribute<String>(this, 'creator');

  /// Reference to `direct_user` attribute.
  TfRef<bool> get directUserRef => TfRef.attribute<bool>(this, 'direct_user');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifierRef =>
      TfRef.attribute<String>(this, 'identifier');

  /// Reference to `max_duration_seconds` attribute.
  TfRef<num> get maxDurationSecondsRef =>
      TfRef.attribute<num>(this, 'max_duration_seconds');

  /// Reference to `meta` attribute.
  TfRef<String> get metaRef => TfRef.attribute<String>(this, 'meta');

  /// Reference to `require_signed_urls` attribute.
  TfRef<bool> get requireSignedUrlsRef =>
      TfRef.attribute<bool>(this, 'require_signed_urls');

  /// Reference to `scheduled_deletion` attribute.
  TfRef<String> get scheduledDeletionRef =>
      TfRef.attribute<String>(this, 'scheduled_deletion');

  /// Reference to `thumbnail_timestamp_pct` attribute.
  TfRef<num> get thumbnailTimestampPctRef =>
      TfRef.attribute<num>(this, 'thumbnail_timestamp_pct');

  /// Reference to `uid` attribute.
  TfRef<String> get uidRef => TfRef.attribute<String>(this, 'uid');

  /// Reference to `upload_expiry` attribute.
  TfRef<String> get uploadExpiryRef =>
      TfRef.attribute<String>(this, 'upload_expiry');
}
