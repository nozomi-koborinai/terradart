// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_channel`.
const Set<String> _googleFirebaseHostingChannelSensitive = <String>{};

/// At most one of `expire_time`, `ttl` on `google_firebase_hosting_channel`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.expireTime(...)`.
sealed class FirebaseHostingChannelExpiration {
  const FirebaseHostingChannelExpiration();

  /// Sets `expire_time`.
  const factory FirebaseHostingChannelExpiration.expireTime(
    TfArg<String> expireTime,
  ) = FirebaseHostingChannelExpirationExpireTime;

  /// Sets `ttl`.
  const factory FirebaseHostingChannelExpiration.ttl(TfArg<String> ttl) =
      FirebaseHostingChannelExpirationTtl;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FirebaseHostingChannelExpiration.expireTime] choice: sets `expire_time`.
final class FirebaseHostingChannelExpirationExpireTime
    extends FirebaseHostingChannelExpiration {
  const FirebaseHostingChannelExpirationExpireTime(this.expireTime);

  final TfArg<String> expireTime;

  @override
  String get blockKey => 'expire_time';

  @override
  Map<String, Object?> encode() => {'expire_time': expireTime.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'expire_time': expireTime};
}

/// The [FirebaseHostingChannelExpiration.ttl] choice: sets `ttl`.
final class FirebaseHostingChannelExpirationTtl
    extends FirebaseHostingChannelExpiration {
  const FirebaseHostingChannelExpirationTtl(this.ttl);

  final TfArg<String> ttl;

  @override
  String get blockKey => 'ttl';

  @override
  Map<String, Object?> encode() => {'ttl': ttl.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'ttl': ttl};
}

/// Factory wrapper for `google_firebase_hosting_channel`.
///
/// A `Channel` represents a stream of releases for a site. All sites have a
/// default `live` channel that serves content to the Firebase-provided
/// subdomains and any connected custom domains.
final class GoogleFirebaseHostingChannel extends Resource {
  static const String tfType = 'google_firebase_hosting_channel';

  GoogleFirebaseHostingChannel({
    required super.localName,
    required TfArg<String> channelId,
    TfArg<String>? deletionPolicy,
    FirebaseHostingChannelExpiration? expiration,
    TfArg<Map<String, String>>? labels,
    TfArg<num>? retainedReleaseCount,
    required TfArg<String> siteId,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'channel_id': channelId,
           'deletion_policy': ?deletionPolicy,
           ...?expiration?.argMap,
           'labels': ?labels,
           'retained_release_count': ?retainedReleaseCount,
           'site_id': siteId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseHostingChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseHostingChannel>`.
  RefTo<GoogleFirebaseHostingChannel> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
