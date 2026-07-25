// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_keystores_aliases_self_signed_cert`.
const Set<String> _googleApigeeKeystoresAliasesSelfSignedCertSensitive =
    <String>{};

/// Apigee Keystores Aliases Self Signed Cert enum for `type`.
enum ApigeeKeystoresAliasesSelfSignedCertType implements TerraformEnum {
  aliasTypeUnspecified('ALIAS_TYPE_UNSPECIFIED'),
  cert('CERT'),
  keyCert('KEY_CERT');

  const ApigeeKeystoresAliasesSelfSignedCertType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `subject` block of
/// `google_apigee_keystores_aliases_self_signed_cert` (derived from provider schema).
@immutable
final class ApigeeKeystoresAliasesSelfSignedCertSubject {
  const ApigeeKeystoresAliasesSelfSignedCertSubject({
    this.commonName,
    this.countryCode,
    this.email,
    this.locality,
    this.org,
    this.orgUnit,
    this.state,
  });

  final TfArg<String>? commonName;

  final TfArg<String>? countryCode;

  final TfArg<String>? email;

  final TfArg<String>? locality;

  final TfArg<String>? org;

  final TfArg<String>? orgUnit;

  final TfArg<String>? state;

  Map<String, Object?> encode() => {
    if (commonName != null) 'common_name': commonName!.toTfJson(),
    if (countryCode != null) 'country_code': countryCode!.toTfJson(),
    if (email != null) 'email': email!.toTfJson(),
    if (locality != null) 'locality': locality!.toTfJson(),
    if (org != null) 'org': org!.toTfJson(),
    if (orgUnit != null) 'org_unit': orgUnit!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
  };
}

/// Typed helper for the `subject_alternative_dns_names` block of
/// `google_apigee_keystores_aliases_self_signed_cert` (derived from provider schema).
@immutable
final class ApigeeKeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames {
  const ApigeeKeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames({
    this.subjectAlternativeName,
  });

  final TfArg<String>? subjectAlternativeName;

  Map<String, Object?> encode() => {
    if (subjectAlternativeName != null)
      'subject_alternative_name': subjectAlternativeName!.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_keystores_aliases_self_signed_cert`.
///
/// An Environment Keystore Alias for Self Signed Certificate Format in Apigee
///
/// Apigee **keystore self-signed cert alias** — generates a self-signed
/// certificate in an environment keystore.
///
/// **Cost / apply:** gcp-cost: no Alias/Keystore SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Alias/Keystore → 0).
/// billing-behavior: requires never_apply [GoogleApigeeOrganization] /
/// [GoogleApigeeEnvironment] / [GoogleApigeeEnvKeystore]. Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeKeystoresAliasesSelfSignedCert extends Resource {
  static const String tfType =
      'google_apigee_keystores_aliases_self_signed_cert';

  GoogleApigeeKeystoresAliasesSelfSignedCert({
    required super.localName,
    required TfArg<String> alias,
    required TfArg<String> orgId,
    required TfArg<String> environment,
    required TfArg<String> keystore,
    required TfArg<String> sigAlg,
    TfArg<String>? keySize,
    TfArg<num>? certValidityInDays,
    required ApigeeKeystoresAliasesSelfSignedCertSubject subject,
    ApigeeKeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames?
    subjectAlternativeDnsNames,
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
           'sig_alg': sigAlg,
           if (keySize != null) 'key_size': keySize,
           if (certValidityInDays != null)
             'cert_validity_in_days': certValidityInDays,
           'subject': TfArg.literal(subject.encode()),
           if (subjectAlternativeDnsNames != null)
             'subject_alternative_dns_names': TfArg.literal(
               subjectAlternativeDnsNames.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeKeystoresAliasesSelfSignedCertSensitive;

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
