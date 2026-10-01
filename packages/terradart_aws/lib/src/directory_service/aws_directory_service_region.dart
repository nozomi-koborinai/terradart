// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_directory_service_region`.
const Set<String> _awsDirectoryServiceRegionSensitive = <String>{};

/// Typed helper for the `vpc_settings` block of
/// `aws_directory_service_region` (derived from provider schema).
@immutable
final class DirectoryServiceRegionVpcSettings {
  const DirectoryServiceRegionVpcSettings({
    required this.subnetIds,
    required this.vpcId,
  });

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  final RefTo<AwsVpc> vpcId;

  Map<String, Object?> encode() => {
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
    'vpc_id': vpcId.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_directory_service_region`.
final class AwsDirectoryServiceRegion extends Resource {
  static const String tfType = 'aws_directory_service_region';

  AwsDirectoryServiceRegion(
    super.localName, {
    TfArg<num>? desiredNumberOfDomainControllers,
    required TfArg<String> directoryId,
    TfArg<String>? region,
    required TfArg<String> regionName,
    TfArg<Map<String, String>>? tags,
    required DirectoryServiceRegionVpcSettings vpcSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'desired_number_of_domain_controllers':
               ?desiredNumberOfDomainControllers,
           'directory_id': directoryId,
           'region': ?region,
           'region_name': regionName,
           'tags': ?tags,
           'vpc_settings': TfArg.literal(vpcSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDirectoryServiceRegionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryServiceRegion>`.
  RefTo<AwsDirectoryServiceRegion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `desired_number_of_domain_controllers` attribute.
  TfRef<num> get desiredNumberOfDomainControllers =>
      TfRef.attribute<num>(this, 'desired_number_of_domain_controllers');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `region_name` attribute.
  TfRef<String> get regionName => TfRef.attribute<String>(this, 'region_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
