// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_keystores_aliases_key_cert_file`.
const Set<String> _googleApigeeKeystoresAliasesKeyCertFileSensitive = <String>{
  'key',
  'password',
};

/// Factory wrapper for `google_apigee_keystores_aliases_key_cert_file`.
///
/// An alias from a key/cert file.
///
/// Apigee **keystore key+cert alias** — uploads a certificate (and
/// optional private key) into an environment keystore.
///
/// **Cost / apply:** gcp-cost: no Alias/Keystore SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Alias/Keystore → 0).
/// billing-behavior: requires never_apply [GoogleApigeeOrganization] /
/// [GoogleApigeeEnvironment] / [GoogleApigeeEnvKeystore]. Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// [cert] / [key] / [password] may contain PEM material — treat as
/// sensitive.
final class GoogleApigeeKeystoresAliasesKeyCertFile extends Resource {
  static const String tfType = 'google_apigee_keystores_aliases_key_cert_file';

  GoogleApigeeKeystoresAliasesKeyCertFile({
    required super.localName,
    required TfArg<String> alias,
    required TfArg<String> orgId,
    required TfArg<String> environment,
    required TfArg<String> keystore,
    required TfArg<String> cert,
    TfArg<String>? key,
    TfArg<String>? password,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias': alias,
           'org_id': orgId,
           'environment': environment,
           'keystore': keystore,
           'cert': cert,
           if (key != null) 'key': key,
           if (password != null) 'password': password,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeKeystoresAliasesKeyCertFileSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certs_info` attribute.
  TfRef<List<Map<String, Object?>>> get certsInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'certs_info');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `alias` attribute.
  TfRef<String> get aliasRef => TfRef.attribute<String>(this, 'alias');
}
