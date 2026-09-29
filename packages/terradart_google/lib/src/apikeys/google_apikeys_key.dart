// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_apikeys_key`.
const Set<String> _googleApikeysKeySensitive = <String>{'key_string'};

/// Factory wrapper for `google_apikeys_key`.
///
/// API Keys key — restricts which Google Cloud APIs can be called with a
/// generated API key.
///
/// Enable `apikeys.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleApikeysKey(
///   localName: 'maps_browser',
///   name: TfArg.literal('maps-browser-key'),
///   displayName: TfArg.literal('Browser Maps key'),
/// );
/// ```
final class GoogleApikeysKey extends Resource {
  static const String tfType = 'google_apikeys_key';

  GoogleApikeysKey({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? displayName,
    TfArg<Map<String, dynamic>>? restrictions,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    RefTo<GoogleServiceAccount>? serviceAccountEmail,
    TfArg<String>? checkExistingUsage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'display_name': ?displayName,
           'restrictions': ?restrictions,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
           'service_account_email': ?serviceAccountEmail?.encodeAs('email'),
           'check_existing_usage': ?checkExistingUsage,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApikeysKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApikeysKey>`.
  RefTo<GoogleApikeysKey> get ref => RefTo.of(this);

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
  TfRef<String> get keyString => TfRef.attribute<String>(this, 'key_string');
}
