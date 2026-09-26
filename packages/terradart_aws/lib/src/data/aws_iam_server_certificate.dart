// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_server_certificate`.
const Set<String> _awsIamServerCertificateSensitive = <String>{};

/// Factory wrapper for `aws_iam_server_certificate`.
final class DataAwsIamServerCertificate extends Data {
  static const String tfType = 'aws_iam_server_certificate';

  DataAwsIamServerCertificate({
    required super.localName,
    TfArg<bool>? latest,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? pathPrefix,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (latest != null) 'latest': latest,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (pathPrefix != null) 'path_prefix': pathPrefix,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamServerCertificateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate_body` attribute.
  TfRef<String> get certificateBody =>
      TfRef.attribute<String>(this, 'certificate_body');

  /// Reference to `certificate_chain` attribute.
  TfRef<String> get certificateChain =>
      TfRef.attribute<String>(this, 'certificate_chain');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `upload_date` attribute.
  TfRef<String> get uploadDate => TfRef.attribute<String>(this, 'upload_date');
}
