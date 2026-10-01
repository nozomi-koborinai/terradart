// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_service_private_dns_verification`.
const Set<String> _awsVpcEndpointServicePrivateDnsVerificationSensitive =
    <String>{};

/// Factory wrapper for `aws_vpc_endpoint_service_private_dns_verification`.
final class AwsVpcEndpointServicePrivateDnsVerification extends Resource {
  static const String tfType =
      'aws_vpc_endpoint_service_private_dns_verification';

  AwsVpcEndpointServicePrivateDnsVerification(
    super.localName, {
    TfArg<String>? region,
    required TfArg<String> serviceId,
    TfArg<bool>? waitForVerification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'service_id': serviceId,
           'wait_for_verification': ?waitForVerification,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcEndpointServicePrivateDnsVerificationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcEndpointServicePrivateDnsVerification>`.
  RefTo<AwsVpcEndpointServicePrivateDnsVerification> get ref => RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');

  /// Reference to `wait_for_verification` attribute.
  TfRef<bool> get waitForVerification =>
      TfRef.attribute<bool>(this, 'wait_for_verification');
}
