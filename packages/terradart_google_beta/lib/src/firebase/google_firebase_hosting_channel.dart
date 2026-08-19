// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_channel`.
const Set<String> _googleFirebaseHostingChannelSensitive = <String>{};

/// Factory wrapper for `google_firebase_hosting_channel`.
final class GoogleFirebaseHostingChannel extends Resource {
  static const String tfType = 'google_firebase_hosting_channel';

  GoogleFirebaseHostingChannel({
    required super.localName,
    required TfArg<String> channelId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? expireTime,
    TfArg<Map<String, String>>? labels,
    TfArg<num>? retainedReleaseCount,
    required TfArg<String> siteId,
    TfArg<String>? ttl,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'channel_id': channelId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (expireTime != null) 'expire_time': expireTime,
           if (labels != null) 'labels': labels,
           if (retainedReleaseCount != null)
             'retained_release_count': retainedReleaseCount,
           'site_id': siteId,
           if (ttl != null) 'ttl': ttl,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseHostingChannelSensitive;
}
