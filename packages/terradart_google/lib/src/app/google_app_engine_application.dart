// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
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
    TfArg<Map<String, dynamic>>? featureSettings,
    TfArg<Map<String, dynamic>>? iap,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location_id': locationId,
           if (databaseType != null) 'database_type': databaseType,
           if (servingStatus != null) 'serving_status': servingStatus,
           if (authDomain != null) 'auth_domain': authDomain,
           if (sslPolicy != null) 'ssl_policy': sslPolicy,
           if (featureSettings != null) 'feature_settings': featureSettings,
           if (iap != null) 'iap': iap,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAppEngineApplicationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
