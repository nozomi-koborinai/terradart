// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_signer_signing_profile`.
const Set<String> _awsSignerSigningProfileSensitive = <String>{};

/// Signer Signing Profile Platform enum for `platform_id`.
extension type const SignerSigningProfilePlatformId._(TfArg<String> _)
    implements TfArg<String> {
  SignerSigningProfilePlatformId.variable(String name)
    : this._(TfArg.variable(name));
  SignerSigningProfilePlatformId.expression(String template)
    : this._(TfArg.expression(template));
  const SignerSigningProfilePlatformId.arg(TfArg<String> arg) : this._(arg);

  static const awslambdaSha384Ecdsa = SignerSigningProfilePlatformId._(
    TfArgLiteral('AWSLambda-SHA384-ECDSA'),
  );
  static const notationOciSha384Ecdsa = SignerSigningProfilePlatformId._(
    TfArgLiteral('Notation-OCI-SHA384-ECDSA'),
  );
  static const awsiotdevicemanagementSha256Ecdsa =
      SignerSigningProfilePlatformId._(
        TfArgLiteral('AWSIoTDeviceManagement-SHA256-ECDSA'),
      );
  static const amazonfreertosTiCc3220sf = SignerSigningProfilePlatformId._(
    TfArgLiteral('AmazonFreeRTOS-TI-CC3220SF'),
  );
  static const amazonfreertosDefault = SignerSigningProfilePlatformId._(
    TfArgLiteral('AmazonFreeRTOS-Default'),
  );

  static const List<SignerSigningProfilePlatformId> values = [
    awslambdaSha384Ecdsa,
    notationOciSha384Ecdsa,
    awsiotdevicemanagementSha256Ecdsa,
    amazonfreertosTiCc3220sf,
    amazonfreertosDefault,
  ];
}

/// At most one of `name`, `name_prefix` on `aws_signer_signing_profile`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class SignerSigningProfileName {
  const SignerSigningProfileName();

  /// Sets `name`.
  const factory SignerSigningProfileName.name(TfArg<String> name) =
      SignerSigningProfileNameChoice;

  /// Sets `name_prefix`.
  const factory SignerSigningProfileName.namePrefix(TfArg<String> namePrefix) =
      SignerSigningProfileNamePrefix;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SignerSigningProfileName.name] choice: sets `name`.
final class SignerSigningProfileNameChoice extends SignerSigningProfileName {
  const SignerSigningProfileNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SignerSigningProfileName.namePrefix] choice: sets `name_prefix`.
final class SignerSigningProfileNamePrefix extends SignerSigningProfileName {
  const SignerSigningProfileNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `signature_validity_period` block of
/// `aws_signer_signing_profile` (derived from provider schema).
@immutable
final class SignerSigningProfileSignatureValidityPeriod {
  const SignerSigningProfileSignatureValidityPeriod({
    required this.type,
    required this.value,
  });

  final SignerSigningProfileType type;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const SignerSigningProfileType._(TfArg<String> _)
    implements TfArg<String> {
  SignerSigningProfileType.variable(String name) : this._(TfArg.variable(name));
  SignerSigningProfileType.expression(String template)
    : this._(TfArg.expression(template));
  const SignerSigningProfileType.arg(TfArg<String> arg) : this._(arg);

  static const days = SignerSigningProfileType._(TfArgLiteral('DAYS'));
  static const months = SignerSigningProfileType._(TfArgLiteral('MONTHS'));
  static const years = SignerSigningProfileType._(TfArgLiteral('YEARS'));

  static const List<SignerSigningProfileType> values = [days, months, years];
}

/// Typed helper for the `signing_material` block of
/// `aws_signer_signing_profile` (derived from provider schema).
@immutable
final class SignerSigningProfileSigningMaterial {
  const SignerSigningProfileSigningMaterial({required this.certificateArn});

  final TfArg<String> certificateArn;

  @internal
  Map<String, Object?> encode() => {
    'certificate_arn': certificateArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_signer_signing_profile`.
final class AwsSignerSigningProfile extends Resource {
  static const String tfType = 'aws_signer_signing_profile';

  AwsSignerSigningProfile(
    super.localName, {
    SignerSigningProfileName? name,
    required SignerSigningProfilePlatformId platformId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? signingParameters,
    TfArg<Map<String, String>>? tags,
    SignerSigningProfileSignatureValidityPeriod? signatureValidityPeriod,
    SignerSigningProfileSigningMaterial? signingMaterial,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?name?.argMap,
           'platform_id': platformId,
           'region': ?region,
           'signing_parameters': ?signingParameters,
           'tags': ?tags,
           if (signatureValidityPeriod != null)
             'signature_validity_period': TfArg.literal(
               signatureValidityPeriod.encode(),
             ),
           if (signingMaterial != null)
             'signing_material': TfArg.literal(signingMaterial.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSignerSigningProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSignerSigningProfile>`.
  RefTo<AwsSignerSigningProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `platform_display_name` attribute.
  TfRef<String> get platformDisplayName =>
      TfRef.attribute<String>(this, 'platform_display_name');

  /// Reference to `revocation_record` attribute.
  TfRef<List<Map<String, Object?>>> get revocationRecord =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'revocation_record');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `version_arn` attribute.
  TfRef<String> get versionArn => TfRef.attribute<String>(this, 'version_arn');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `platform_id` attribute.
  TfRef<String> get platformId => TfRef.attribute<String>(this, 'platform_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `signing_parameters` attribute.
  TfRef<Map<String, String>> get signingParameters =>
      TfRef.attribute<Map<String, String>>(this, 'signing_parameters');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
