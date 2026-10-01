// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_device`.
const Set<String> _awsNetworkmanagerDeviceSensitive = <String>{};

/// At most one of `subnet_arn`, `zone` on the `aws_location` block of `aws_networkmanager_device`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.subnetArn(...)`.
sealed class NetworkmanagerDeviceAwsLocation {
  const NetworkmanagerDeviceAwsLocation();

  /// Sets `subnet_arn`.
  const factory NetworkmanagerDeviceAwsLocation.subnetArn(
    TfArg<String> subnetArn,
  ) = NetworkmanagerDeviceAwsLocationSubnetArn;

  /// Sets `zone`.
  const factory NetworkmanagerDeviceAwsLocation.zone(TfArg<String> zone) =
      NetworkmanagerDeviceAwsLocationZone;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [NetworkmanagerDeviceAwsLocation.subnetArn] choice: sets `subnet_arn`.
final class NetworkmanagerDeviceAwsLocationSubnetArn
    extends NetworkmanagerDeviceAwsLocation {
  const NetworkmanagerDeviceAwsLocationSubnetArn(this.subnetArn);

  final TfArg<String> subnetArn;

  @internal
  @override
  String get blockKey => 'subnet_arn';

  @internal
  @override
  Map<String, Object?> encode() => {'subnet_arn': subnetArn.toTfJson()};
}

/// The [NetworkmanagerDeviceAwsLocation.zone] choice: sets `zone`.
final class NetworkmanagerDeviceAwsLocationZone
    extends NetworkmanagerDeviceAwsLocation {
  const NetworkmanagerDeviceAwsLocationZone(this.zone);

  final TfArg<String> zone;

  @internal
  @override
  String get blockKey => 'zone';

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'address': ?address?.toTfJson(),
    'latitude': ?latitude?.toTfJson(),
    'longitude': ?longitude?.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkmanager_device`.
final class AwsNetworkmanagerDevice extends Resource {
  static const String tfType = 'aws_networkmanager_device';

  AwsNetworkmanagerDevice(
    super.localName, {
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
           'description': ?description,
           'global_network_id': globalNetworkId,
           'model': ?model,
           'serial_number': ?serialNumber,
           'site_id': ?siteId,
           'tags': ?tags,
           'type': ?type,
           'vendor': ?vendor,
           if (awsLocation != null)
             'aws_location': TfArg.literal(awsLocation.encode()),
           if (location != null) 'location': TfArg.literal(location.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerDeviceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmanagerDevice>`.
  RefTo<AwsNetworkmanagerDevice> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `global_network_id` attribute.
  TfRef<String> get globalNetworkId =>
      TfRef.attribute<String>(this, 'global_network_id');

  /// Reference to `model` attribute.
  TfRef<String> get model => TfRef.attribute<String>(this, 'model');

  /// Reference to `serial_number` attribute.
  TfRef<String> get serialNumber =>
      TfRef.attribute<String>(this, 'serial_number');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `vendor` attribute.
  TfRef<String> get vendor => TfRef.attribute<String>(this, 'vendor');
}
