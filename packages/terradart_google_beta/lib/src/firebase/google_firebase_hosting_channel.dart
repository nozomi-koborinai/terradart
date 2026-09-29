// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_channel`.
const Set<String> _googleFirebaseHostingChannelSensitive = <String>{};

/// At most one of `expire_time`, `ttl` on `google_firebase_hosting_channel`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class FirebaseHostingChannelExpireTimeOrTtl {
  const FirebaseHostingChannelExpireTimeOrTtl();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `expire_time` (one of the [FirebaseHostingChannelExpireTimeOrTtl] choices).
final class FirebaseHostingChannelExpireTimeOption
    extends FirebaseHostingChannelExpireTimeOrTtl {
  const FirebaseHostingChannelExpireTimeOption({required this.expireTime});

  final TfArg<String> expireTime;

  @override
  String get blockKey => 'expire_time';

  @override
  Map<String, Object?> encode() => {'expire_time': expireTime.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'expire_time': expireTime};
}

/// Sets `ttl` (one of the [FirebaseHostingChannelExpireTimeOrTtl] choices).
final class FirebaseHostingChannelTtlOption
    extends FirebaseHostingChannelExpireTimeOrTtl {
  const FirebaseHostingChannelTtlOption({required this.ttl});

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
    FirebaseHostingChannelExpireTimeOrTtl? expireTimeOrTtl,
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
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           ...?expireTimeOrTtl?.argMap,
           if (labels != null) 'labels': labels,
           if (retainedReleaseCount != null)
             'retained_release_count': retainedReleaseCount,
           'site_id': siteId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseHostingChannelSensitive;

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
