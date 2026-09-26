// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_instance_type_offering`.
const Set<String> _awsEc2InstanceTypeOfferingSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_instance_type_offering` (derived from provider schema).
@immutable
final class DataEc2InstanceTypeOfferingFilter {
  const DataEc2InstanceTypeOfferingFilter({
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

/// Factory wrapper for `aws_ec2_instance_type_offering`.
final class DataAwsEc2InstanceTypeOffering extends Data {
  static const String tfType = 'aws_ec2_instance_type_offering';

  DataAwsEc2InstanceTypeOffering({
    required super.localName,
    TfArg<String>? locationType,
    TfArg<List<String>>? preferredInstanceTypes,
    TfArg<String>? region,
    List<DataEc2InstanceTypeOfferingFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (locationType != null) 'location_type': locationType,
           if (preferredInstanceTypes != null)
             'preferred_instance_types': preferredInstanceTypes,
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2InstanceTypeOfferingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');
}
