// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_lb_certificate`.
const Set<String> _awsLightsailLbCertificateSensitive = <String>{};

/// Factory wrapper for `aws_lightsail_lb_certificate`.
final class AwsLightsailLbCertificate extends Resource {
  static const String tfType = 'aws_lightsail_lb_certificate';

  AwsLightsailLbCertificate({
    required super.localName,
    TfArg<String>? domainName,
    required TfArg<String> lbName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<List<String>>? subjectAlternativeNames,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (domainName != null) 'domain_name': domainName,
           'lb_name': lbName,
           'name': name,
           if (region != null) 'region': region,
           if (subjectAlternativeNames != null)
             'subject_alternative_names': subjectAlternativeNames,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailLbCertificateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `domain_validation_records` attribute.
  TfRef<List<Map<String, Object?>>> get domainValidationRecords =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'domain_validation_records',
      );

  /// Reference to `support_code` attribute.
  TfRef<String> get supportCode =>
      TfRef.attribute<String>(this, 'support_code');
}
