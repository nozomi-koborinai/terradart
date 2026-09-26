// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_instance_type_offerings`.
const Set<String> _awsEc2InstanceTypeOfferingsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_instance_type_offerings` (derived from provider schema).
@immutable
final class DataEc2InstanceTypeOfferingsFilter {
  const DataEc2InstanceTypeOfferingsFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_instance_type_offerings`.
final class DataAwsEc2InstanceTypeOfferings extends Data {
  static const String tfType = 'aws_ec2_instance_type_offerings';

  DataAwsEc2InstanceTypeOfferings({
    required super.localName,
    TfArg<String>? locationType,
    TfArg<String>? region,
    List<DataEc2InstanceTypeOfferingsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (locationType != null) 'location_type': locationType,
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2InstanceTypeOfferingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_types` attribute.
  TfRef<List<String>> get instanceTypes =>
      TfRef.attribute<List<String>>(this, 'instance_types');

  /// Reference to `location_types` attribute.
  TfRef<List<String>> get locationTypes =>
      TfRef.attribute<List<String>>(this, 'location_types');

  /// Reference to `locations` attribute.
  TfRef<List<String>> get locations =>
      TfRef.attribute<List<String>>(this, 'locations');
}
