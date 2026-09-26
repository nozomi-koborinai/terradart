// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_customer_gateway`.
const Set<String> _awsCustomerGatewaySensitive = <String>{};

/// Factory wrapper for `aws_customer_gateway`.
final class AwsCustomerGateway extends Resource {
  static const String tfType = 'aws_customer_gateway';

  AwsCustomerGateway({
    required super.localName,
    TfArg<String>? bgpAsn,
    TfArg<String>? bgpAsnExtended,
    TfArg<String>? certificateArn,
    TfArg<String>? deviceName,
    TfArg<String>? ipAddress,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (bgpAsn != null) 'bgp_asn': bgpAsn,
           if (bgpAsnExtended != null) 'bgp_asn_extended': bgpAsnExtended,
           if (certificateArn != null) 'certificate_arn': certificateArn,
           if (deviceName != null) 'device_name': deviceName,
           if (ipAddress != null) 'ip_address': ipAddress,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCustomerGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
