// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_environment_keyvaluemaps`.
const Set<String> _googleApigeeEnvironmentKeyvaluemapsSensitive = <String>{};

/// Factory wrapper for `google_apigee_environment_keyvaluemaps`.
///
/// Collection of key/value string pairs.
///
/// Apigee **environment key-value map** — KVM container in an environment.
///
/// **Cost / apply:** gcp-cost: no KeyValue/KVM SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword KeyValue/KVM → 0). billing-behavior:
/// requires a never_apply [GoogleApigeeEnvironment]. Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeEnvironmentKeyvaluemaps extends Resource {
  static const String tfType = 'google_apigee_environment_keyvaluemaps';

  GoogleApigeeEnvironmentKeyvaluemaps({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> envId,
    super.lifecycle,
    super.dependsOn,
  }) : super(terraformType: tfType, argMap: {'name': name, 'env_id': envId});

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeEnvironmentKeyvaluemapsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
