// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_spot_price`.
const Set<String> _awsEc2SpotPriceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_spot_price` (derived from provider schema).
@immutable
final class DataEc2SpotPriceFilter {
  const DataEc2SpotPriceFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_spot_price`.
final class DataAwsEc2SpotPrice extends Data {
  static const String tfType = 'aws_ec2_spot_price';

  DataAwsEc2SpotPrice({
    required super.localName,
    TfArg<String>? availabilityZone,
    TfArg<String>? instanceType,
    TfArg<String>? region,
    List<DataEc2SpotPriceFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (instanceType != null) 'instance_type': instanceType,
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2SpotPriceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `spot_price` attribute.
  TfRef<String> get spotPrice => TfRef.attribute<String>(this, 'spot_price');

  /// Reference to `spot_price_timestamp` attribute.
  TfRef<String> get spotPriceTimestamp =>
      TfRef.attribute<String>(this, 'spot_price_timestamp');
}
