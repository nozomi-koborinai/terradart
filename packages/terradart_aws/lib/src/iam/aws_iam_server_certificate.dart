// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_server_certificate`.
const Set<String> _awsIamServerCertificateSensitive = <String>{'private_key'};

/// Factory wrapper for `aws_iam_server_certificate`.
final class AwsIamServerCertificate extends Resource {
  static const String tfType = 'aws_iam_server_certificate';

  AwsIamServerCertificate({
    required super.localName,
    required TfArg<String> certificateBody,
    TfArg<String>? certificateChain,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? path,
    required TfArg<String> privateKey,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_body': certificateBody,
           if (certificateChain != null) 'certificate_chain': certificateChain,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (path != null) 'path': path,
           'private_key': privateKey,
           if (tags != null) 'tags': tags,
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

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');

  /// Reference to `upload_date` attribute.
  TfRef<String> get uploadDate => TfRef.attribute<String>(this, 'upload_date');
}
