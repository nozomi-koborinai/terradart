// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_customer_gateway`.
const Set<String> _awsCustomerGatewaySensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_customer_gateway` (derived from provider schema).
@immutable
final class DataCustomerGatewayFilter {
  const DataCustomerGatewayFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_customer_gateway`.
final class DataAwsCustomerGateway extends Data {
  static const String tfType = 'aws_customer_gateway';

  DataAwsCustomerGateway({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataCustomerGatewayFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCustomerGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `bgp_asn` attribute.
  TfRef<num> get bgpAsn => TfRef.attribute<num>(this, 'bgp_asn');

  /// Reference to `bgp_asn_extended` attribute.
  TfRef<num> get bgpAsnExtended =>
      TfRef.attribute<num>(this, 'bgp_asn_extended');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `device_name` attribute.
  TfRef<String> get deviceName => TfRef.attribute<String>(this, 'device_name');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
