// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_signing_certificate`.
const Set<String> _awsIamSigningCertificateSensitive = <String>{};

/// Iam Signing Certificate enum for `status`.
enum IamSigningCertificateStatus implements TerraformEnum {
  active('Active'),
  inactive('Inactive'),
  expired('Expired');

  const IamSigningCertificateStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_iam_signing_certificate`.
final class AwsIamSigningCertificate extends Resource {
  static const String tfType = 'aws_iam_signing_certificate';

  AwsIamSigningCertificate({
    required super.localName,
    required TfArg<String> certificateBody,
    TfArg<IamSigningCertificateStatus>? status,
    required TfArg<String> userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_body': certificateBody,
           'status': ?status,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamSigningCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamSigningCertificate>`.
  RefTo<AwsIamSigningCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_id` attribute.
  TfRef<String> get certificateId =>
      TfRef.attribute<String>(this, 'certificate_id');

  /// Reference to `certificate_body` attribute.
  TfRef<String> get certificateBodyRef =>
      TfRef.attribute<String>(this, 'certificate_body');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');

  /// Reference to `user_name` attribute.
  TfRef<String> get userNameRef => TfRef.attribute<String>(this, 'user_name');
}
