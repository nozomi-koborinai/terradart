// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_keystores_aliases_pkcs12`.
const Set<String> _googleApigeeKeystoresAliasesPkcs12Sensitive = <String>{};

/// Factory wrapper for `google_apigee_keystores_aliases_pkcs12`.
///
/// Apigee **keystore PKCS12 alias** — uploads a PKCS12 keystore file into
/// an environment keystore.
///
/// **Cost / apply:** gcp-cost: no Alias/Keystore SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Alias/Keystore/PKCS → 0).
/// billing-behavior: requires never_apply [GoogleApigeeOrganization] /
/// [GoogleApigeeEnvironment] / [GoogleApigeeEnvKeystore]. Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// [file] is a local PKCS12 path; [filehash] must match the file contents.
final class GoogleApigeeKeystoresAliasesPkcs12 extends Resource {
  static const String tfType = 'google_apigee_keystores_aliases_pkcs12';

  GoogleApigeeKeystoresAliasesPkcs12({
    required super.localName,
    required TfArg<String> alias,
    required TfArg<String> orgId,
    required TfArg<String> environment,
    required TfArg<String> keystore,
    required TfArg<String> file,
    required TfArg<String> filehash,
    TfArg<String>? password,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias': alias,
           'org_id': orgId,
           'environment': environment,
           'keystore': keystore,
           'file': file,
           'filehash': filehash,
           if (password != null) 'password': password,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeKeystoresAliasesPkcs12Sensitive;

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
