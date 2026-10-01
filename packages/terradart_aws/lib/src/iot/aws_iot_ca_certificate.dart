// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_iot_ca_certificate`.
const Set<String> _awsIotCaCertificateSensitive = <String>{
  'ca_certificate_pem',
  'verification_certificate_pem',
};

/// Iot Ca Certificate enum for `certificate_mode`.
enum IotCaCertificateMode implements TerraformEnum {
  defaultCase('DEFAULT'),
  sniOnly('SNI_ONLY');

  const IotCaCertificateMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `registration_config` block of
/// `aws_iot_ca_certificate` (derived from provider schema).
@immutable
final class IotCaCertificateRegistrationConfig {
  const IotCaCertificateRegistrationConfig({
    this.roleArn,
    this.templateBody,
    this.templateName,
  });

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<String>? templateBody;

  final TfArg<String>? templateName;

  Map<String, Object?> encode() => {
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'template_body': ?templateBody?.toTfJson(),
    'template_name': ?templateName?.toTfJson(),
  };
}

/// Factory wrapper for `aws_iot_ca_certificate`.
final class AwsIotCaCertificate extends Resource {
  static const String tfType = 'aws_iot_ca_certificate';

  AwsIotCaCertificate({
    required super.localName,
    required TfArg<bool> active,
    required TfArg<bool> allowAutoRegistration,
    required TfArg<String> caCertificatePem,
    TfArg<IotCaCertificateMode>? certificateMode,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? verificationCertificatePem,
    IotCaCertificateRegistrationConfig? registrationConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'active': active,
           'allow_auto_registration': allowAutoRegistration,
           'ca_certificate_pem': caCertificatePem,
           'certificate_mode': ?certificateMode,
           'region': ?region,
           'tags': ?tags,
           'verification_certificate_pem': ?verificationCertificatePem,
           if (registrationConfig != null)
             'registration_config': TfArg.literal(registrationConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotCaCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotCaCertificate>`.
  RefTo<AwsIotCaCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `customer_version` attribute.
  TfRef<num> get customerVersion =>
      TfRef.attribute<num>(this, 'customer_version');

  /// Reference to `generation_id` attribute.
  TfRef<String> get generationId =>
      TfRef.attribute<String>(this, 'generation_id');

  /// Reference to `validity` attribute.
  TfRef<List<Map<String, Object?>>> get validity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'validity');

  /// Reference to `active` attribute.
  TfRef<bool> get active => TfRef.attribute<bool>(this, 'active');

  /// Reference to `allow_auto_registration` attribute.
  TfRef<bool> get allowAutoRegistration =>
      TfRef.attribute<bool>(this, 'allow_auto_registration');

  /// Reference to `ca_certificate_pem` attribute.
  TfRef<String> get caCertificatePem =>
      TfRef.attribute<String>(this, 'ca_certificate_pem');

  /// Reference to `certificate_mode` attribute.
  TfRef<String> get certificateMode =>
      TfRef.attribute<String>(this, 'certificate_mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `verification_certificate_pem` attribute.
  TfRef<String> get verificationCertificatePem =>
      TfRef.attribute<String>(this, 'verification_certificate_pem');
}
