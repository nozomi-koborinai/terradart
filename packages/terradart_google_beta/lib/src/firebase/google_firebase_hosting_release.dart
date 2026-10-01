// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../firebase/google_firebase_hosting_version.dart'
    show GoogleFirebaseHostingVersion;

/// Sensitive field paths for `google_firebase_hosting_release`.
const Set<String> _googleFirebaseHostingReleaseSensitive = <String>{};

/// Firebase Hosting Release enum for `type`.
extension type const FirebaseHostingReleaseType._(TfArg<String> _)
    implements TfArg<String> {
  FirebaseHostingReleaseType.variable(String name)
    : this._(TfArg.variable(name));
  FirebaseHostingReleaseType.expression(String template)
    : this._(TfArg.expression(template));
  const FirebaseHostingReleaseType.arg(TfArg<String> arg) : this._(arg);

  static const deploy = FirebaseHostingReleaseType._(TfArgLiteral('DEPLOY'));
  static const rollback = FirebaseHostingReleaseType._(
    TfArgLiteral('ROLLBACK'),
  );
  static const siteDisable = FirebaseHostingReleaseType._(
    TfArgLiteral('SITE_DISABLE'),
  );

  static const List<FirebaseHostingReleaseType> values = [
    deploy,
    rollback,
    siteDisable,
  ];
}

/// Factory wrapper for `google_firebase_hosting_release`.
///
/// A Release is a particular collection of configurations that is set to be
/// public at a particular time.
final class GoogleFirebaseHostingRelease extends Resource {
  static const String tfType = 'google_firebase_hosting_release';

  GoogleFirebaseHostingRelease(
    super.localName, {
    TfArg<String>? channelId,
    TfArg<String>? message,
    required TfArg<String> siteId,
    FirebaseHostingReleaseType? type,
    RefTo<GoogleFirebaseHostingVersion>? versionName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
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

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseHostingRelease>`.
  RefTo<GoogleFirebaseHostingRelease> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `release_id` attribute.
  TfRef<String> get releaseId => TfRef.attribute<String>(this, 'release_id');

  /// Reference to `channel_id` attribute.
  TfRef<String> get channelId => TfRef.attribute<String>(this, 'channel_id');

  /// Reference to `message` attribute.
  TfRef<String> get message => TfRef.attribute<String>(this, 'message');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `version_name` attribute.
  TfRef<String> get versionName =>
      TfRef.attribute<String>(this, 'version_name');
}
