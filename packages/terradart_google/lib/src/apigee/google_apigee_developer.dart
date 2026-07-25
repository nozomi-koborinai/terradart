// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_developer`.
const Set<String> _googleApigeeDeveloperSensitive = <String>{};

/// Typed helper for the `attributes` block of
/// `google_apigee_developer` (derived from provider schema).
@immutable
final class ApigeeDeveloperAttributes {
  const ApigeeDeveloperAttributes({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_developer`.
///
/// A `Developer` is an API consumer that can have apps registered in Apigee.
///
/// Apigee **developer** — registered app developer in an organization.
///
/// **Cost / apply:** gcp-cost: no Developer SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Developer → 0). billing-behavior:
/// requires a never_apply [GoogleApigeeOrganization] (Gateway Node Hours
/// `0136-18C1-DD41` **$1.025/h**). Debt-only on `terradart-validate`.
/// **Never** wire into apply-smoke.
final class GoogleApigeeDeveloper extends Resource {
  static const String tfType = 'google_apigee_developer';

  GoogleApigeeDeveloper({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> email,
    required TfArg<String> userName,
    required TfArg<String> firstName,
    required TfArg<String> lastName,
    List<ApigeeDeveloperAttributes>? attributes,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'email': email,
           'user_name': userName,
           'first_name': firstName,
           'last_name': lastName,
           if (attributes != null)
             'attributes': TfArg.literal([
               for (final e in attributes) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeDeveloperSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_modified_at` attribute.
  TfRef<String> get lastModifiedAt =>
      TfRef.attribute<String>(this, 'last_modified_at');

  /// Reference to `organizatio_name` attribute.
  TfRef<String> get organizatioName =>
      TfRef.attribute<String>(this, 'organizatio_name');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get emailRef => TfRef.attribute<String>(this, 'email');
}
