// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_apikeys_key`.
const Set<String> _googleApikeysKeySensitive = <String>{'key_string'};

/// Typed helper for the `restrictions` block of
/// `google_apikeys_key` (derived from provider schema).
@immutable
final class ApikeysKeyRestrictions {
  const ApikeysKeyRestrictions({
    this.androidKeyRestrictions,
    this.apiTargets,
    this.browserKeyRestrictions,
    this.iosKeyRestrictions,
    this.serverKeyRestrictions,
  });

  final ApikeysKeyAndroidKeyRestrictions? androidKeyRestrictions;

  final List<ApikeysKeyApiTargets>? apiTargets;

  final ApikeysKeyBrowserKeyRestrictions? browserKeyRestrictions;

  final ApikeysKeyIosKeyRestrictions? iosKeyRestrictions;

  final ApikeysKeyServerKeyRestrictions? serverKeyRestrictions;

  Map<String, Object?> encode() => {
    'android_key_restrictions': ?androidKeyRestrictions?.encode(),
    if (apiTargets != null)
      'api_targets': [for (final e in apiTargets!) e.encode()],
    'browser_key_restrictions': ?browserKeyRestrictions?.encode(),
    'ios_key_restrictions': ?iosKeyRestrictions?.encode(),
    'server_key_restrictions': ?serverKeyRestrictions?.encode(),
  };
}

/// Typed helper for the `restrictions.android_key_restrictions` block of
/// `google_apikeys_key` (derived from provider schema).
@immutable
final class ApikeysKeyAndroidKeyRestrictions {
  const ApikeysKeyAndroidKeyRestrictions({required this.allowedApplications});

  final List<ApikeysKeyAllowedApplications> allowedApplications;

  Map<String, Object?> encode() => {
    'allowed_applications': [for (final e in allowedApplications) e.encode()],
  };
}

/// Typed helper for the `restrictions.android_key_restrictions.allowed_applications` block of
/// `google_apikeys_key` (derived from provider schema).
@immutable
final class ApikeysKeyAllowedApplications {
  const ApikeysKeyAllowedApplications({
    required this.packageName,
    required this.sha1Fingerprint,
  });

  final TfArg<String> packageName;

  final TfArg<String> sha1Fingerprint;

  Map<String, Object?> encode() => {
    'package_name': packageName.toTfJson(),
    'sha1_fingerprint': sha1Fingerprint.toTfJson(),
  };
}

/// Typed helper for the `restrictions.api_targets` block of
/// `google_apikeys_key` (derived from provider schema).
@immutable
final class ApikeysKeyApiTargets {
  const ApikeysKeyApiTargets({this.methods, required this.service});

  final TfArg<List<String>>? methods;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    'methods': ?methods?.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `restrictions.browser_key_restrictions` block of
/// `google_apikeys_key` (derived from provider schema).
@immutable
final class ApikeysKeyBrowserKeyRestrictions {
  const ApikeysKeyBrowserKeyRestrictions({required this.allowedReferrers});

  final TfArg<List<String>> allowedReferrers;

  Map<String, Object?> encode() => {
    'allowed_referrers': allowedReferrers.toTfJson(),
  };
}

/// Typed helper for the `restrictions.ios_key_restrictions` block of
/// `google_apikeys_key` (derived from provider schema).
@immutable
final class ApikeysKeyIosKeyRestrictions {
  const ApikeysKeyIosKeyRestrictions({required this.allowedBundleIds});

  final TfArg<List<String>> allowedBundleIds;

  Map<String, Object?> encode() => {
    'allowed_bundle_ids': allowedBundleIds.toTfJson(),
  };
}

/// Typed helper for the `restrictions.server_key_restrictions` block of
/// `google_apikeys_key` (derived from provider schema).
@immutable
final class ApikeysKeyServerKeyRestrictions {
  const ApikeysKeyServerKeyRestrictions({required this.allowedIps});

  final TfArg<List<String>> allowedIps;

  Map<String, Object?> encode() => {'allowed_ips': allowedIps.toTfJson()};
}

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
    ApikeysKeyRestrictions? restrictions,
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
           if (restrictions != null)
             'restrictions': TfArg.literal(restrictions.encode()),
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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `check_existing_usage` attribute.
  TfRef<String> get checkExistingUsage =>
      TfRef.attribute<String>(this, 'check_existing_usage');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_account_email` attribute.
  TfRef<String> get serviceAccountEmail =>
      TfRef.attribute<String>(this, 'service_account_email');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get keyString => TfRef.attribute<String>(this, 'key_string');
}
