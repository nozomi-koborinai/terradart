// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_site`.
const Set<String> _googleFirebaseHostingSiteSensitive = <String>{};

/// Factory wrapper for `google_firebase_hosting_site`.
///
/// A `Site` represents a Firebase Hosting site.
final class GoogleFirebaseHostingSite extends Resource {
  static const String tfType = 'google_firebase_hosting_site';

  GoogleFirebaseHostingSite({
    required super.localName,
    TfArg<String>? appId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<String>? siteId,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'app_id': ?appId,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'site_id': ?siteId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseHostingSiteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseHostingSite>`.
  RefTo<GoogleFirebaseHostingSite> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_url` attribute.
  TfRef<String> get defaultUrl => TfRef.attribute<String>(this, 'default_url');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');
}
