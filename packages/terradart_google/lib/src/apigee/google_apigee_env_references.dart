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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'env_id': envId,
           'refers': refers,
           'resource_type': resourceType,
           'description': ?description,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvReferencesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeEnvReferences>`.
  RefTo<GoogleApigeeEnvReferences> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `env_id` attribute.
  TfRef<String> get envId => TfRef.attribute<String>(this, 'env_id');

  /// Reference to `refers` attribute.
  TfRef<String> get refers => TfRef.attribute<String>(this, 'refers');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');
}
