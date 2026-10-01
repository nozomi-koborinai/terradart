// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_signing_certificate`.
const Set<String> _awsIamSigningCertificateSensitive = <String>{};

/// Iam Signing Certificate enum for `status`.
extension type const IamSigningCertificateStatus._(TfArg<String> _)
    implements TfArg<String> {
  IamSigningCertificateStatus.variable(String name)
    : this._(TfArg.variable(name));
  IamSigningCertificateStatus.expression(String template)
    : this._(TfArg.expression(template));
  const IamSigningCertificateStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = IamSigningCertificateStatus._(TfArgLiteral('Active'));
  static const inactive = IamSigningCertificateStatus._(
    TfArgLiteral('Inactive'),
  );
  static const expired = IamSigningCertificateStatus._(TfArgLiteral('Expired'));

  static const List<IamSigningCertificateStatus> values = [
    active,
    inactive,
    expired,
  ];
}

/// Factory wrapper for `aws_iam_signing_certificate`.
final class AwsIamSigningCertificate extends Resource {
  static const String tfType = 'aws_iam_signing_certificate';

  AwsIamSigningCertificate(
    super.localName, {
    required TfArg<String> certificateBody,
    IamSigningCertificateStatus? status,
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
  TfRef<String> get certificateBody =>
      TfRef.attribute<String>(this, 'certificate_body');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
