// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_channel`.
const Set<String> _googleFirebaseHostingChannelSensitive = <String>{};

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
    TfArg<String>? expireTime,
    TfArg<Map<String, String>>? labels,
    TfArg<num>? retainedReleaseCount,
    required TfArg<String> siteId,
    TfArg<String>? ttl,
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
