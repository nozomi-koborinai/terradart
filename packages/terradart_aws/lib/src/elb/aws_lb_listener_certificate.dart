// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_listener_certificate`.
const Set<String> _awsLbListenerCertificateSensitive = <String>{};

/// Factory wrapper for `aws_lb_listener_certificate`.
final class AwsLbListenerCertificate extends Resource {
  static const String tfType = 'aws_lb_listener_certificate';

  AwsLbListenerCertificate(
    super.localName, {
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbListenerCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLbListenerCertificate>`.
  RefTo<AwsLbListenerCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `listener_arn` attribute.
  TfRef<String> get listenerArn =>
      TfRef.attribute<String>(this, 'listener_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
