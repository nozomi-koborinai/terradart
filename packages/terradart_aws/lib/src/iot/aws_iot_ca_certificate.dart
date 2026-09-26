// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_ca_certificate`.
const Set<String> _awsIotCaCertificateSensitive = <String>{
  'ca_certificate_pem',
  'verification_certificate_pem',
};

/// Typed helper for the `registration_config` block of
/// `aws_iot_ca_certificate` (derived from provider schema).
@immutable
final class IotCaCertificateRegistrationConfig {
  const IotCaCertificateRegistrationConfig({
    this.roleArn,
    this.templateBody,
    this.templateName,
  });

  final TfArg<String>? roleArn;

  final TfArg<String>? templateBody;

  final TfArg<String>? templateName;

  Map<String, Object?> encode() => {
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (templateBody != null) 'template_body': templateBody!.toTfJson(),
    if (templateName != null) 'template_name': templateName!.toTfJson(),
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
    TfArg<String>? certificateMode,
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
           if (certificateMode != null) 'certificate_mode': certificateMode,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (verificationCertificatePem != null)
             'verification_certificate_pem': verificationCertificatePem,
           if (registrationConfig != null)
             'registration_config': TfArg.literal(registrationConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotCaCertificateSensitive;

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
}
