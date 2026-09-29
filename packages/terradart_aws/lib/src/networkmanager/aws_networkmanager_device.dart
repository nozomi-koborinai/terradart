// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_device`.
const Set<String> _awsNetworkmanagerDeviceSensitive = <String>{};

/// Typed helper for the `aws_location` block of
/// `aws_networkmanager_device` (derived from provider schema).
@immutable
final class NetworkmanagerDeviceAwsLocation {
  const NetworkmanagerDeviceAwsLocation({this.subnetArnOrZone});

  final NetworkmanagerDeviceAwsLocationSubnetArnOrZone? subnetArnOrZone;

  Map<String, Object?> encode() => {...?subnetArnOrZone?.encode()};
}

/// At most one of `subnet_arn`, `zone` on the `aws_location` block of `aws_networkmanager_device`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class NetworkmanagerDeviceAwsLocationSubnetArnOrZone {
  const NetworkmanagerDeviceAwsLocationSubnetArnOrZone();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `subnet_arn` (one of the [NetworkmanagerDeviceAwsLocationSubnetArnOrZone] choices).
final class NetworkmanagerDeviceAwsLocationSubnetArnOption
    extends NetworkmanagerDeviceAwsLocationSubnetArnOrZone {
  const NetworkmanagerDeviceAwsLocationSubnetArnOption({
    required this.subnetArn,
  });

  final TfArg<String> subnetArn;

  @override
  String get blockKey => 'subnet_arn';

  @override
  Map<String, Object?> encode() => {'subnet_arn': subnetArn.toTfJson()};
}

/// Sets `zone` (one of the [NetworkmanagerDeviceAwsLocationSubnetArnOrZone] choices).
final class NetworkmanagerDeviceAwsLocationZoneOption
    extends NetworkmanagerDeviceAwsLocationSubnetArnOrZone {
  const NetworkmanagerDeviceAwsLocationZoneOption({required this.zone});

  final TfArg<String> zone;

  @override
  String get blockKey => 'zone';

  @override
  Map<String, Object?> encode() => {'zone': zone.toTfJson()};
}

/// Typed helper for the `location` block of
/// `aws_networkmanager_device` (derived from provider schema).
@immutable
final class NetworkmanagerDeviceLocation {
  const NetworkmanagerDeviceLocation({
    this.address,
    this.latitude,
    this.longitude,
  });

  final TfArg<String>? address;

  final TfArg<String>? latitude;

  final TfArg<String>? longitude;

  Map<String, Object?> encode() => {
    if (address != null) 'address': address!.toTfJson(),
    if (latitude != null) 'latitude': latitude!.toTfJson(),
    if (longitude != null) 'longitude': longitude!.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkmanager_device`.
final class AwsNetworkmanagerDevice extends Resource {
  static const String tfType = 'aws_networkmanager_device';

  AwsNetworkmanagerDevice({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> globalNetworkId,
    TfArg<String>? model,
    TfArg<String>? serialNumber,
    TfArg<String>? siteId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    TfArg<String>? vendor,
    NetworkmanagerDeviceAwsLocation? awsLocation,
    NetworkmanagerDeviceLocation? location,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'global_network_id': globalNetworkId,
           if (model != null) 'model': model,
           if (serialNumber != null) 'serial_number': serialNumber,
           if (siteId != null) 'site_id': siteId,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           if (vendor != null) 'vendor': vendor,
           if (awsLocation != null)
             'aws_location': TfArg.literal(awsLocation.encode()),
           if (location != null) 'location': TfArg.literal(location.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerDeviceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
