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
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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

  GoogleApigeeDeveloperApp({
    required super.localName,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'org_id': orgId,
           'developer_email': developerEmail,
           'callback_url': callbackUrl,
           if (apiProducts != null) 'api_products': apiProducts,
           if (scopes != null) 'scopes': scopes,
           if (keyExpiresIn != null) 'key_expires_in': keyExpiresIn,
           if (consumerKey != null) 'consumer_key': consumerKey,
           if (consumerSecret != null) 'consumer_secret': consumerSecret,
           if (attributes != null)
             'attributes': TfArg.literal([
               for (final e in attributes) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeDeveloperAppSensitive;

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
