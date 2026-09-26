// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acm_certificate_validation`.
const Set<String> _awsAcmCertificateValidationSensitive = <String>{};

/// Factory wrapper for `aws_acm_certificate_validation`.
final class AwsAcmCertificateValidation extends Resource {
  static const String tfType = 'aws_acm_certificate_validation';

  AwsAcmCertificateValidation({
    required super.localName,
    required TfArg<String> certificateArn,
    TfArg<String>? region,
    TfArg<List<String>>? validationRecordFqdns,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_arn': certificateArn,
           if (region != null) 'region': region,
           if (validationRecordFqdns != null)
             'validation_record_fqdns': validationRecordFqdns,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAcmCertificateValidationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
