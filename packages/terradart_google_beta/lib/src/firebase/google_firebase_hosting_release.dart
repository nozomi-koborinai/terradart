// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../firebase/google_firebase_hosting_version.dart'
    show GoogleFirebaseHostingVersion;

/// Sensitive field paths for `google_firebase_hosting_release`.
const Set<String> _googleFirebaseHostingReleaseSensitive = <String>{};

/// Firebase Hosting Release enum for `type`.
enum FirebaseHostingReleaseType implements TerraformEnum {
  deploy('DEPLOY'),
  rollback('ROLLBACK'),
  siteDisable('SITE_DISABLE');

  const FirebaseHostingReleaseType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_firebase_hosting_release`.
///
/// A Release is a particular collection of configurations that is set to be
/// public at a particular time.
final class GoogleFirebaseHostingRelease extends Resource {
  static const String tfType = 'google_firebase_hosting_release';

  GoogleFirebaseHostingRelease({
    required super.localName,
    TfArg<String>? channelId,
    TfArg<String>? message,
    required TfArg<String> siteId,
    TfArg<FirebaseHostingReleaseType>? type,
    RefTo<GoogleFirebaseHostingVersion>? versionName,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'channel_id': ?channelId,
           'message': ?message,
           'site_id': siteId,
           'type': ?type,
           'version_name': ?versionName?.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseHostingReleaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseHostingRelease>`.
  RefTo<GoogleFirebaseHostingRelease> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `release_id` attribute.
  TfRef<String> get releaseId => TfRef.attribute<String>(this, 'release_id');

  /// Reference to `channel_id` attribute.
  TfRef<String> get channelIdRef => TfRef.attribute<String>(this, 'channel_id');

  /// Reference to `message` attribute.
  TfRef<String> get messageRef => TfRef.attribute<String>(this, 'message');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteIdRef => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');

  /// Reference to `version_name` attribute.
  TfRef<String> get versionNameRef =>
      TfRef.attribute<String>(this, 'version_name');
}
