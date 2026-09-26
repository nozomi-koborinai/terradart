// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_connection_accepter`.
const Set<String> _awsVpcEndpointConnectionAccepterSensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_connection_accepter`.
final class AwsVpcEndpointConnectionAccepter extends Resource {
  static const String tfType = 'aws_vpc_endpoint_connection_accepter';

  AwsVpcEndpointConnectionAccepter({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> vpcEndpointId,
    required TfArg<String> vpcEndpointServiceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'vpc_endpoint_id': vpcEndpointId,
           'vpc_endpoint_service_id': vpcEndpointServiceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointConnectionAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `vpc_endpoint_state` attribute.
  TfRef<String> get vpcEndpointState =>
      TfRef.attribute<String>(this, 'vpc_endpoint_state');
}
