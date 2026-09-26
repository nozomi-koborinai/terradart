// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_instance`.
const Set<String> _awsLightsailInstanceSensitive = <String>{};

/// Typed helper for the `add_on` block of
/// `aws_lightsail_instance` (derived from provider schema).
@immutable
final class LightsailInstanceAddOn {
  const LightsailInstanceAddOn({
    required this.snapshotTime,
    required this.status,
    required this.type,
  });

  final TfArg<String> snapshotTime;

  final TfArg<String> status;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'snapshot_time': snapshotTime.toTfJson(),
    'status': status.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_lightsail_instance`.
final class AwsLightsailInstance extends Resource {
  static const String tfType = 'aws_lightsail_instance';

  AwsLightsailInstance({
    required super.localName,
    required TfArg<String> availabilityZone,
    required TfArg<String> blueprintId,
    required TfArg<String> bundleId,
    TfArg<String>? ipAddressType,
    TfArg<String>? keyPairName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? userData,
    LightsailInstanceAddOn? addOn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone': availabilityZone,
           'blueprint_id': blueprintId,
           'bundle_id': bundleId,
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           if (keyPairName != null) 'key_pair_name': keyPairName,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (userData != null) 'user_data': userData,
           if (addOn != null) 'add_on': TfArg.literal(addOn.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cpu_count` attribute.
  TfRef<num> get cpuCount => TfRef.attribute<num>(this, 'cpu_count');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `ipv6_addresses` attribute.
  TfRef<List<String>> get ipv6Addresses =>
      TfRef.attribute<List<String>>(this, 'ipv6_addresses');

  /// Reference to `is_static_ip` attribute.
  TfRef<bool> get isStaticIp => TfRef.attribute<bool>(this, 'is_static_ip');

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddress =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `public_ip_address` attribute.
  TfRef<String> get publicIpAddress =>
      TfRef.attribute<String>(this, 'public_ip_address');

  /// Reference to `ram_size` attribute.
  TfRef<num> get ramSize => TfRef.attribute<num>(this, 'ram_size');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
