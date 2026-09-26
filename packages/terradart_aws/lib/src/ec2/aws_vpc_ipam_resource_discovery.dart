// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_resource_discovery`.
const Set<String> _awsVpcIpamResourceDiscoverySensitive = <String>{};

/// Typed helper for the `operating_regions` block of
/// `aws_vpc_ipam_resource_discovery` (derived from provider schema).
@immutable
final class VpcIpamResourceDiscoveryOperatingRegions {
  const VpcIpamResourceDiscoveryOperatingRegions({required this.regionName});

  final TfArg<String> regionName;

  Map<String, Object?> encode() => {'region_name': regionName.toTfJson()};
}

/// Typed helper for the `organizational_unit_exclusion` block of
/// `aws_vpc_ipam_resource_discovery` (derived from provider schema).
@immutable
final class VpcIpamResourceDiscoveryOrganizationalUnitExclusion {
  const VpcIpamResourceDiscoveryOrganizationalUnitExclusion({
    required this.organizationsEntityPath,
  });

  final TfArg<String> organizationsEntityPath;

  Map<String, Object?> encode() => {
    'organizations_entity_path': organizationsEntityPath.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_ipam_resource_discovery`.
final class AwsVpcIpamResourceDiscovery extends Resource {
  static const String tfType = 'aws_vpc_ipam_resource_discovery';

  AwsVpcIpamResourceDiscovery({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<VpcIpamResourceDiscoveryOperatingRegions> operatingRegions,
    List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>?
    organizationalUnitExclusion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'operating_regions': TfArg.literal([
             for (final e in operatingRegions) e.encode(),
           ]),
           if (organizationalUnitExclusion != null)
             'organizational_unit_exclusion': TfArg.literal([
               for (final e in organizationalUnitExclusion) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamResourceDiscoverySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ipam_resource_discovery_region` attribute.
  TfRef<String> get ipamResourceDiscoveryRegion =>
      TfRef.attribute<String>(this, 'ipam_resource_discovery_region');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
