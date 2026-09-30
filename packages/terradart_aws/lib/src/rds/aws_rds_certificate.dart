// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_certificate`.
const Set<String> _awsRdsCertificateSensitive = <String>{};

/// Factory wrapper for `aws_rds_certificate`.
final class AwsRdsCertificate extends Resource {
  static const String tfType = 'aws_rds_certificate';

  AwsRdsCertificate({
    required super.localName,
    required TfArg<String> certificateIdentifier,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_identifier': certificateIdentifier,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsCertificate>`.
  RefTo<AwsRdsCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_identifier` attribute.
  TfRef<String> get certificateIdentifierRef =>
      TfRef.attribute<String>(this, 'certificate_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
