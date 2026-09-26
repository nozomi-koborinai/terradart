// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_signing_certificate`.
const Set<String> _awsIamSigningCertificateSensitive = <String>{};

/// Factory wrapper for `aws_iam_signing_certificate`.
final class AwsIamSigningCertificate extends Resource {
  static const String tfType = 'aws_iam_signing_certificate';

  AwsIamSigningCertificate({
    required super.localName,
    required TfArg<String> certificateBody,
    TfArg<String>? status,
    required TfArg<String> userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_body': certificateBody,
           if (status != null) 'status': status,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamSigningCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_id` attribute.
  TfRef<String> get certificateId =>
      TfRef.attribute<String>(this, 'certificate_id');
}
