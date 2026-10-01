// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_keystores_aliases_self_signed_cert`.
const Set<String> _googleApigeeKeystoresAliasesSelfSignedCertSensitive =
    <String>{};

/// Apigee Keystores Aliases Self Signed Cert enum for `type`.
extension type const ApigeeKeystoresAliasesSelfSignedCertType._(TfArg<String> _)
    implements TfArg<String> {
  ApigeeKeystoresAliasesSelfSignedCertType.variable(String name)
    : this._(TfArg.variable(name));
  ApigeeKeystoresAliasesSelfSignedCertType.expression(String template)
    : this._(TfArg.expression(template));
  const ApigeeKeystoresAliasesSelfSignedCertType.arg(TfArg<String> arg)
    : this._(arg);

  static const aliasTypeUnspecified =
      ApigeeKeystoresAliasesSelfSignedCertType._(
        TfArgLiteral('ALIAS_TYPE_UNSPECIFIED'),
      );
  static const cert = ApigeeKeystoresAliasesSelfSignedCertType._(
    TfArgLiteral('CERT'),
  );
  static const keyCert = ApigeeKeystoresAliasesSelfSignedCertType._(
    TfArgLiteral('KEY_CERT'),
  );

  static const List<ApigeeKeystoresAliasesSelfSignedCertType> values = [
    aliasTypeUnspecified,
    cert,
    keyCert,
  ];
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
    'common_name': ?commonName?.toTfJson(),
    'country_code': ?countryCode?.toTfJson(),
    'email': ?email?.toTfJson(),
    'locality': ?locality?.toTfJson(),
    'org': ?org?.toTfJson(),
    'org_unit': ?orgUnit?.toTfJson(),
    'state': ?state?.toTfJson(),
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
    'subject_alternative_name': ?subjectAlternativeName?.toTfJson(),
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

  GoogleApigeeKeystoresAliasesSelfSignedCert(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias': alias,
           'org_id': orgId,
           'environment': environment,
           'keystore': keystore,
           'sig_alg': sigAlg,
           'key_size': ?keySize,
           'cert_validity_in_days': ?certValidityInDays,
           'subject': TfArg.literal(subject.encode()),
           if (subjectAlternativeDnsNames != null)
             'subject_alternative_dns_names': TfArg.literal(
               subjectAlternativeDnsNames.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeKeystoresAliasesSelfSignedCertSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeKeystoresAliasesSelfSignedCert>`.
  RefTo<GoogleApigeeKeystoresAliasesSelfSignedCert> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certs_info` attribute.
  TfRef<List<Map<String, Object?>>> get certsInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'certs_info');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `cert_validity_in_days` attribute.
  TfRef<num> get certValidityInDays =>
      TfRef.attribute<num>(this, 'cert_validity_in_days');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `key_size` attribute.
  TfRef<String> get keySize => TfRef.attribute<String>(this, 'key_size');

  /// Reference to `keystore` attribute.
  TfRef<String> get keystore => TfRef.attribute<String>(this, 'keystore');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `sig_alg` attribute.
  TfRef<String> get sigAlg => TfRef.attribute<String>(this, 'sig_alg');
}
