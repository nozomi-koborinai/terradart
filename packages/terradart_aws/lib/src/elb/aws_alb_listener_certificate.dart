// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_alb_listener_certificate`.
const Set<String> _awsAlbListenerCertificateSensitive = <String>{};

/// Factory wrapper for `aws_alb_listener_certificate`.
final class AwsAlbListenerCertificate extends Resource {
  static const String tfType = 'aws_alb_listener_certificate';

  AwsAlbListenerCertificate({
    required super.localName,
    required TfArg<String> certificateArn,
    required TfArg<String> listenerArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_arn': certificateArn,
           'listener_arn': listenerArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAlbListenerCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
