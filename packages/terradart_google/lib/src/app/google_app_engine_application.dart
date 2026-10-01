// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_application`.
const Set<String> _googleAppEngineApplicationSensitive = <String>{
  'iap.oauth2_client_secret',
  'iap.oauth2_client_secret_sha256',
};

/// Default database mode for an [GoogleAppEngineApplication].
enum AppEngineDatabaseType implements TerraformEnum {
  cloudFirestore('CLOUD_FIRESTORE'),
  cloudDatastore('CLOUD_DATASTORE_COMPATIBILITY');

  const AppEngineDatabaseType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Serving status for an [GoogleAppEngineApplication].
enum AppEngineServingStatus implements TerraformEnum {
  serving('SERVING'),
  userDisabled('USER_DISABLED'),
  systemDisabled('SYSTEM_DISABLED');

  const AppEngineServingStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `feature_settings` block of
/// `google_app_engine_application` (derived from provider schema).
@immutable
final class AppEngineApplicationFeatureSettings {
  const AppEngineApplicationFeatureSettings({required this.splitHealthChecks});

  final TfArg<bool> splitHealthChecks;

  Map<String, Object?> encode() => {
    'split_health_checks': splitHealthChecks.toTfJson(),
  };
}

/// Typed helper for the `iap` block of
/// `google_app_engine_application` (derived from provider schema).
@immutable
final class AppEngineApplicationIap {
  const AppEngineApplicationIap({
    this.enabled,
    required this.oauth2ClientId,
    required this.oauth2ClientSecret,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> oauth2ClientId;

  final TfArg<String> oauth2ClientSecret;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'oauth2_client_id': oauth2ClientId.toTfJson(),
    'oauth2_client_secret': oauth2ClientSecret.toTfJson(),
  };
}

/// Factory wrapper for `google_app_engine_application`.
///
/// Registers the App Engine application for a GCP project (one per project).
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [locationId]: region or multi-region for the default Firestore database
///   when [databaseType] is `CLOUD_FIRESTORE` (e.g. `'us-central'`).
///
/// Example (Native Firestore-backed app in us-central):
/// ```dart
/// final app = GoogleAppEngineApplication(
///   localName: 'app',
///   locationId: TfArg.literal('us-central'),
///   databaseType: TfArg.literal(AppEngineDatabaseType.cloudFirestore),
/// );
/// ```
final class GoogleAppEngineApplication extends Resource {
  static const String tfType = 'google_app_engine_application';

  GoogleAppEngineApplication({
    required super.localName,
    required TfArg<String> locationId,
    TfArg<AppEngineDatabaseType>? databaseType,
    TfArg<AppEngineServingStatus>? servingStatus,
    TfArg<String>? authDomain,
    TfArg<String>? sslPolicy,
    AppEngineApplicationFeatureSettings? featureSettings,
    AppEngineApplicationIap? iap,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location_id': locationId,
           'database_type': ?databaseType,
           'serving_status': ?servingStatus,
           'auth_domain': ?authDomain,
           'ssl_policy': ?sslPolicy,
           if (featureSettings != null)
             'feature_settings': TfArg.literal(featureSettings.encode()),
           if (iap != null) 'iap': TfArg.literal(iap.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAppEngineApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAppEngineApplication>`.
  RefTo<GoogleAppEngineApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `code_bucket` attribute.
  TfRef<String> get codeBucket => TfRef.attribute<String>(this, 'code_bucket');

  /// Reference to `default_bucket` attribute.
  TfRef<String> get defaultBucket =>
      TfRef.attribute<String>(this, 'default_bucket');

  /// Reference to `default_hostname` attribute.
  TfRef<String> get defaultHostname =>
      TfRef.attribute<String>(this, 'default_hostname');

  /// Reference to `gcr_domain` attribute.
  TfRef<String> get gcrDomain => TfRef.attribute<String>(this, 'gcr_domain');

  /// Reference to `url_dispatch_rule` attribute.
  TfRef<List<Map<String, Object?>>> get urlDispatchRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'url_dispatch_rule');

  /// Reference to `auth_domain` attribute.
  TfRef<String> get authDomain => TfRef.attribute<String>(this, 'auth_domain');

  /// Reference to `database_type` attribute.
  TfRef<String> get databaseType =>
      TfRef.attribute<String>(this, 'database_type');

  /// Reference to `location_id` attribute.
  TfRef<String> get locationId => TfRef.attribute<String>(this, 'location_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `serving_status` attribute.
  TfRef<String> get servingStatus =>
      TfRef.attribute<String>(this, 'serving_status');

  /// Reference to `ssl_policy` attribute.
  TfRef<String> get sslPolicy => TfRef.attribute<String>(this, 'ssl_policy');
}
