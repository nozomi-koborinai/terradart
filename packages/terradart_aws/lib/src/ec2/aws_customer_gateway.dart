// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_customer_gateway`.
const Set<String> _awsCustomerGatewaySensitive = <String>{};

/// Customer Gateway enum for `type`.
extension type const CustomerGatewayType._(TfArg<String> _)
    implements TfArg<String> {
  CustomerGatewayType.variable(String name) : this._(TfArg.variable(name));
  CustomerGatewayType.expression(String template)
    : this._(TfArg.expression(template));
  const CustomerGatewayType.arg(TfArg<String> arg) : this._(arg);

  static const ipsec1 = CustomerGatewayType._(TfArgLiteral('ipsec.1'));

  static const List<CustomerGatewayType> values = [ipsec1];
}

/// At most one of `bgp_asn`, `bgp_asn_extended` on `aws_customer_gateway`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.bgpAsn(...)`.
sealed class CustomerGatewayBgpAsn {
  const CustomerGatewayBgpAsn();

  /// Sets `bgp_asn`.
  const factory CustomerGatewayBgpAsn.bgpAsn(TfArg<String> bgpAsn) =
      CustomerGatewayBgpAsnChoice;

  /// Sets `bgp_asn_extended`.
  const factory CustomerGatewayBgpAsn.bgpAsnExtended(
    TfArg<String> bgpAsnExtended,
  ) = CustomerGatewayBgpAsnExtended;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CustomerGatewayBgpAsn.bgpAsn] choice: sets `bgp_asn`.
final class CustomerGatewayBgpAsnChoice extends CustomerGatewayBgpAsn {
  const CustomerGatewayBgpAsnChoice(this.bgpAsn);

  final TfArg<String> bgpAsn;

  @internal
  @override
  String get blockKey => 'bgp_asn';

  @internal
  @override
  Map<String, Object?> encode() => {'bgp_asn': bgpAsn.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'bgp_asn': bgpAsn};
}

/// The [CustomerGatewayBgpAsn.bgpAsnExtended] choice: sets `bgp_asn_extended`.
final class CustomerGatewayBgpAsnExtended extends CustomerGatewayBgpAsn {
  const CustomerGatewayBgpAsnExtended(this.bgpAsnExtended);

  final TfArg<String> bgpAsnExtended;

  @internal
  @override
  String get blockKey => 'bgp_asn_extended';

  @internal
  @override
  Map<String, Object?> encode() => {
    'bgp_asn_extended': bgpAsnExtended.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'bgp_asn_extended': bgpAsnExtended,
  };
}

/// Factory wrapper for `aws_customer_gateway`.
final class AwsCustomerGateway extends Resource {
  static const String tfType = 'aws_customer_gateway';

  AwsCustomerGateway(
    super.localName, {
    CustomerGatewayBgpAsn? bgpAsn,
    TfArg<String>? certificateArn,
    TfArg<String>? deviceName,
    TfArg<String>? ipAddress,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required CustomerGatewayType type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?bgpAsn?.argMap,
           'certificate_arn': ?certificateArn,
           'device_name': ?deviceName,
           'ip_address': ?ipAddress,
           'region': ?region,
           'tags': ?tags,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCustomerGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCustomerGateway>`.
  RefTo<AwsCustomerGateway> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `bgp_asn` attribute.
  TfRef<String> get bgpAsn => TfRef.attribute<String>(this, 'bgp_asn');

  /// Reference to `bgp_asn_extended` attribute.
  TfRef<String> get bgpAsnExtended =>
      TfRef.attribute<String>(this, 'bgp_asn_extended');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `device_name` attribute.
  TfRef<String> get deviceName => TfRef.attribute<String>(this, 'device_name');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
