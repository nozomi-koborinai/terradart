// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_environment_keyvaluemaps_entries`.
const Set<String> _googleApigeeEnvironmentKeyvaluemapsEntriesSensitive =
    <String>{};

/// Factory wrapper for `google_apigee_environment_keyvaluemaps_entries`.
///
/// Creates key value entries in a key value map scoped to an environment.
///
/// Apigee **environment KVM entry** — one key/value inside an environment
/// key-value map.
///
/// **Cost / apply:** gcp-cost: no KeyValue/KVM SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword KeyValue/KVM → 0). billing-behavior:
/// requires never_apply [GoogleApigeeEnvironment] /
/// [GoogleApigeeEnvironmentKeyvaluemaps]. Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeEnvironmentKeyvaluemapsEntries extends Resource {
  static const String tfType = 'google_apigee_environment_keyvaluemaps_entries';

  GoogleApigeeEnvironmentKeyvaluemapsEntries({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> envKeyvaluemapId,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'env_keyvaluemap_id': envKeyvaluemapId,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeEnvironmentKeyvaluemapsEntriesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
