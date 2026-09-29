// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_customer_gateway`.
const Set<String> _awsCustomerGatewaySensitive = <String>{};

/// Customer Gateway enum for `type`.
enum CustomerGatewayType implements TerraformEnum {
  ipsec1('ipsec.1');

  const CustomerGatewayType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `bgp_asn`, `bgp_asn_extended` on `aws_customer_gateway`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class CustomerGatewayBgpAsnOrBgpAsnExtended {
  const CustomerGatewayBgpAsnOrBgpAsnExtended();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `bgp_asn` (one of the [CustomerGatewayBgpAsnOrBgpAsnExtended] choices).
final class CustomerGatewayBgpAsnOption
    extends CustomerGatewayBgpAsnOrBgpAsnExtended {
  const CustomerGatewayBgpAsnOption({required this.bgpAsn});

  final TfArg<String> bgpAsn;

  @override
  String get blockKey => 'bgp_asn';

  @override
  Map<String, Object?> encode() => {'bgp_asn': bgpAsn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'bgp_asn': bgpAsn};
}

/// Sets `bgp_asn_extended` (one of the [CustomerGatewayBgpAsnOrBgpAsnExtended] choices).
final class CustomerGatewayBgpAsnExtendedOption
    extends CustomerGatewayBgpAsnOrBgpAsnExtended {
  const CustomerGatewayBgpAsnExtendedOption({required this.bgpAsnExtended});

  final TfArg<String> bgpAsnExtended;

  @override
  String get blockKey => 'bgp_asn_extended';

  @override
  Map<String, Object?> encode() => {
    'bgp_asn_extended': bgpAsnExtended.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'bgp_asn_extended': bgpAsnExtended,
  };
}

/// Factory wrapper for `aws_customer_gateway`.
final class AwsCustomerGateway extends Resource {
  static const String tfType = 'aws_customer_gateway';

  AwsCustomerGateway({
    required super.localName,
    CustomerGatewayBgpAsnOrBgpAsnExtended? bgpAsnOrBgpAsnExtended,
    TfArg<String>? certificateArn,
    TfArg<String>? deviceName,
    TfArg<String>? ipAddress,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<CustomerGatewayType> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?bgpAsnOrBgpAsnExtended?.argMap,
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
