// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_env_keystore`.
const Set<String> _googleApigeeEnvKeystoreSensitive = <String>{};

/// Factory wrapper for `google_apigee_env_keystore`.
///
/// An `Environment KeyStore` in Apigee.
///
/// Apigee **environment keystore** — TLS key/cert store for an environment.
///
/// **Cost / apply:** gcp-cost: no Keystore SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Keystore → 0). billing-behavior:
/// requires a never_apply [GoogleApigeeEnvironment] (Active Base
/// Environment Usage Hours `C112-9373-5FC4` **$0.50/h**+). Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeEnvKeystore extends Resource {
  static const String tfType = 'google_apigee_env_keystore';

  GoogleApigeeEnvKeystore(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> envId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name, 'env_id': envId});

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvKeystoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeEnvKeystore>`.
  RefTo<GoogleApigeeEnvKeystore> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aliases` attribute.
  TfRef<List<String>> get aliases =>
      TfRef.attribute<List<String>>(this, 'aliases');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `env_id` attribute.
  TfRef<String> get envId => TfRef.attribute<String>(this, 'env_id');
}
