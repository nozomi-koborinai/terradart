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

/// App Engine Application Ssl enum for `ssl_policy`.
extension type const AppEngineApplicationSslPolicy._(TfArg<String> _)
    implements TfArg<String> {
  AppEngineApplicationSslPolicy.variable(String name)
    : this._(TfArg.variable(name));
  AppEngineApplicationSslPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const AppEngineApplicationSslPolicy.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = AppEngineApplicationSslPolicy._(
    TfArgLiteral('DEFAULT'),
  );
  static const modern = AppEngineApplicationSslPolicy._(TfArgLiteral('MODERN'));

  static const List<AppEngineApplicationSslPolicy> values = [
    defaultCase,
    modern,
  ];
}

/// Default database mode for an [GoogleAppEngineApplication].
extension type const AppEngineDatabaseType._(TfArg<String> _)
    implements TfArg<String> {
  AppEngineDatabaseType.variable(String name) : this._(TfArg.variable(name));
  AppEngineDatabaseType.expression(String template)
    : this._(TfArg.expression(template));
  const AppEngineDatabaseType.arg(TfArg<String> arg) : this._(arg);

  static const cloudFirestore = AppEngineDatabaseType._(
    TfArgLiteral('CLOUD_FIRESTORE'),
  );
  static const cloudDatastore = AppEngineDatabaseType._(
    TfArgLiteral('CLOUD_DATASTORE_COMPATIBILITY'),
  );

  static const List<AppEngineDatabaseType> values = [
    cloudFirestore,
    cloudDatastore,
  ];
}

/// Serving status for an [GoogleAppEngineApplication].
extension type const AppEngineServingStatus._(TfArg<String> _)
    implements TfArg<String> {
  AppEngineServingStatus.variable(String name) : this._(TfArg.variable(name));
  AppEngineServingStatus.expression(String template)
    : this._(TfArg.expression(template));
  const AppEngineServingStatus.arg(TfArg<String> arg) : this._(arg);

  static const serving = AppEngineServingStatus._(TfArgLiteral('SERVING'));
  static const userDisabled = AppEngineServingStatus._(
    TfArgLiteral('USER_DISABLED'),
  );
  static const systemDisabled = AppEngineServingStatus._(
    TfArgLiteral('SYSTEM_DISABLED'),
  );

  static const List<AppEngineServingStatus> values = [
    serving,
    userDisabled,
    systemDisabled,
  ];
}

/// Typed helper for the `feature_settings` block of
/// `google_app_engine_application` (derived from provider schema).
@immutable
final class AppEngineApplicationFeatureSettings {
  const AppEngineApplicationFeatureSettings({required this.splitHealthChecks});

  final TfArg<bool> splitHealthChecks;

  @internal
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
    this.oauth2ClientSecret,
    this.oauth2ClientSecretWo,
    this.oauth2ClientSecretWoVersion,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> oauth2ClientId;

  final Sensitive<String>? oauth2ClientSecret;

  final TfArg<String>? oauth2ClientSecretWo;

  final TfArg<String>? oauth2ClientSecretWoVersion;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'oauth2_client_id': oauth2ClientId.toTfJson(),
    'oauth2_client_secret': ?oauth2ClientSecret?.toTfJson(),
    'oauth2_client_secret_wo': ?oauth2ClientSecretWo?.toTfJson(),
    'oauth2_client_secret_wo_version': ?oauth2ClientSecretWoVersion?.toTfJson(),
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
///   'app',
///   locationId: TfArg.literal('us-central'),
///   databaseType: AppEngineDatabaseType.cloudFirestore,
/// );
/// ```
final class GoogleAppEngineApplication extends Resource {
  static const String tfType = 'google_app_engine_application';

  GoogleAppEngineApplication(
    super.localName, {
    required TfArg<String> locationId,
    AppEngineDatabaseType? databaseType,
    AppEngineServingStatus? servingStatus,
    TfArg<String>? authDomain,
    AppEngineApplicationSslPolicy? sslPolicy,
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
