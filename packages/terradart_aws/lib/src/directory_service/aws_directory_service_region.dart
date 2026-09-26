// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<List<Object?>> subnetIds;

  final TfArg<String> vpcId;

  Map<String, Object?> encode() => {
    'subnet_ids': subnetIds.toTfJson(),
    'vpc_id': vpcId.toTfJson(),
  };
}

/// Factory wrapper for `aws_directory_service_region`.
final class AwsDirectoryServiceRegion extends Resource {
  static const String tfType = 'aws_directory_service_region';

  AwsDirectoryServiceRegion({
    required super.localName,
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
           if (desiredNumberOfDomainControllers != null)
             'desired_number_of_domain_controllers':
                 desiredNumberOfDomainControllers,
           'directory_id': directoryId,
           if (region != null) 'region': region,
           'region_name': regionName,
           if (tags != null) 'tags': tags,
           'vpc_settings': TfArg.literal(vpcSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDirectoryServiceRegionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
