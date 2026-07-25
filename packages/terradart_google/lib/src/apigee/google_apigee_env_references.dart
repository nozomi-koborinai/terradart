// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_env_references`.
const Set<String> _googleApigeeEnvReferencesSensitive = <String>{};

/// Factory wrapper for `google_apigee_env_references`.
///
/// An `Environment Reference` in Apigee.
///
/// Apigee **environment reference** — named pointer to a keystore/truststore
/// (or other resource) inside an environment.
///
/// **Cost / apply:** gcp-cost: no Reference SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Reference → 0). billing-behavior:
/// requires a never_apply [GoogleApigeeEnvironment]. Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeEnvReferences extends Resource {
  static const String tfType = 'google_apigee_env_references';

  GoogleApigeeEnvReferences({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> envId,
    required TfArg<String> refers,
    required TfArg<String> resourceType,
    TfArg<String>? description,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'env_id': envId,
           'refers': refers,
           'resource_type': resourceType,
           if (description != null) 'description': description,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvReferencesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
