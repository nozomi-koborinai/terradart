// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_developer_app`.
const Set<String> _googleApigeeDeveloperAppSensitive = <String>{
  'consumer_secret',
};

/// Typed helper for the `attributes` block of
/// `google_apigee_developer_app` (derived from provider schema).
@immutable
final class ApigeeDeveloperAppAttributes {
  const ApigeeDeveloperAppAttributes({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_developer_app`.
///
/// Creates an app associated with a developer. This API associates the
/// developer app with the specified API product and auto-generates an API key
/// for the app to use in calls to API proxies inside that API product.
///
/// Apigee **developer app** — credentials + API product access for a
/// developer.
///
/// **Cost / apply:** gcp-cost: no App SKU under Apigee `1C2D-8C78-EC58`
/// (list_skus keyword App → 0). billing-behavior: requires never_apply
/// [GoogleApigeeOrganization] / [GoogleApigeeDeveloper]. Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeDeveloperApp extends Resource {
  static const String tfType = 'google_apigee_developer_app';

  GoogleApigeeDeveloperApp(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> orgId,
    required TfArg<String> developerEmail,
    required TfArg<String> callbackUrl,
    TfArg<List<String>>? apiProducts,
    TfArg<List<String>>? scopes,
    TfArg<String>? keyExpiresIn,
    TfArg<String>? consumerKey,
    TfArg<String>? consumerSecret,
    List<ApigeeDeveloperAppAttributes>? attributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'org_id': orgId,
           'developer_email': developerEmail,
           'callback_url': callbackUrl,
           'api_products': ?apiProducts,
           'scopes': ?scopes,
           'key_expires_in': ?keyExpiresIn,
           'consumer_key': ?consumerKey,
           'consumer_secret': ?consumerSecret,
           if (attributes != null)
             'attributes': TfArg.literal([
               for (final e in attributes) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeDeveloperAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeDeveloperApp>`.
  RefTo<GoogleApigeeDeveloperApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `credentials` attribute.
  TfRef<List<Map<String, Object?>>> get credentials =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'credentials');

  /// Reference to `developer_id` attribute.
  TfRef<String> get developerId =>
      TfRef.attribute<String>(this, 'developer_id');

  /// Reference to `last_modified_at` attribute.
  TfRef<String> get lastModifiedAt =>
      TfRef.attribute<String>(this, 'last_modified_at');

  /// Reference to `api_products` attribute.
  TfRef<List<String>> get apiProducts =>
      TfRef.attribute<List<String>>(this, 'api_products');

  /// Reference to `app_family` attribute.
  TfRef<String> get appFamily => TfRef.attribute<String>(this, 'app_family');

  /// Reference to `callback_url` attribute.
  TfRef<String> get callbackUrl =>
      TfRef.attribute<String>(this, 'callback_url');

  /// Reference to `consumer_key` attribute.
  TfRef<String> get consumerKey =>
      TfRef.attribute<String>(this, 'consumer_key');

  /// Reference to `consumer_secret` attribute.
  TfRef<String> get consumerSecret =>
      TfRef.attribute<String>(this, 'consumer_secret');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `developer_email` attribute.
  TfRef<String> get developerEmail =>
      TfRef.attribute<String>(this, 'developer_email');

  /// Reference to `key_expires_in` attribute.
  TfRef<String> get keyExpiresIn =>
      TfRef.attribute<String>(this, 'key_expires_in');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
