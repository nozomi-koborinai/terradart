// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_lb_certificate_attachment`.
const Set<String> _awsLightsailLbCertificateAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_lightsail_lb_certificate_attachment`.
final class AwsLightsailLbCertificateAttachment extends Resource {
  static const String tfType = 'aws_lightsail_lb_certificate_attachment';

  AwsLightsailLbCertificateAttachment({
    required super.localName,
    required TfArg<String> certificateName,
    required TfArg<String> lbName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_name': certificateName,
           'lb_name': lbName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsLightsailLbCertificateAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
