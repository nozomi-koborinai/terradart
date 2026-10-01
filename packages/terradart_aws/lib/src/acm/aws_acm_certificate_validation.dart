// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../acm/aws_acm_certificate.dart' show AwsAcmCertificate;

/// Sensitive field paths for `aws_acm_certificate_validation`.
const Set<String> _awsAcmCertificateValidationSensitive = <String>{};

/// Factory wrapper for `aws_acm_certificate_validation`.
final class AwsAcmCertificateValidation extends Resource {
  static const String tfType = 'aws_acm_certificate_validation';

  AwsAcmCertificateValidation({
    required super.localName,
    required RefTo<AwsAcmCertificate> certificateArn,
    TfArg<String>? region,
    TfArg<List<String>>? validationRecordFqdns,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_arn': certificateArn.encodeAs('arn'),
           'region': ?region,
           'validation_record_fqdns': ?validationRecordFqdns,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAcmCertificateValidationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAcmCertificateValidation>`.
  RefTo<AwsAcmCertificateValidation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArnRef =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `validation_record_fqdns` attribute.
  TfRef<List<String>> get validationRecordFqdnsRef =>
      TfRef.attribute<List<String>>(this, 'validation_record_fqdns');
}
