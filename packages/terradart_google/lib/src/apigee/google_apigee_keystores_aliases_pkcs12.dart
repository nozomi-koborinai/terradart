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

  GoogleApigeeKeystoresAliasesPkcs12(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias': alias,
           'org_id': orgId,
           'environment': environment,
           'keystore': keystore,
           'file': file,
           'filehash': filehash,
           'password': ?password,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeKeystoresAliasesPkcs12Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeKeystoresAliasesPkcs12>`.
  RefTo<GoogleApigeeKeystoresAliasesPkcs12> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certs_info` attribute.
  TfRef<List<Map<String, Object?>>> get certsInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'certs_info');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `file` attribute.
  TfRef<String> get file => TfRef.attribute<String>(this, 'file');

  /// Reference to `filehash` attribute.
  TfRef<String> get filehash => TfRef.attribute<String>(this, 'filehash');

  /// Reference to `keystore` attribute.
  TfRef<String> get keystore => TfRef.attribute<String>(this, 'keystore');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');
}
