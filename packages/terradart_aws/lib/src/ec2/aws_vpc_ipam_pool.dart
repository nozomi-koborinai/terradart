// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_pool`.
const Set<String> _awsVpcIpamPoolSensitive = <String>{};

/// Typed helper for the `source_resource` block of
/// `aws_vpc_ipam_pool` (derived from provider schema).
@immutable
final class VpcIpamPoolSourceResource {
  const VpcIpamPoolSourceResource({
    required this.resourceId,
    required this.resourceOwner,
    required this.resourceRegion,
    required this.resourceType,
  });

  final TfArg<String> resourceId;

  final TfArg<String> resourceOwner;

  final TfArg<String> resourceRegion;

  final TfArg<String> resourceType;

  Map<String, Object?> encode() => {
    'resource_id': resourceId.toTfJson(),
    'resource_owner': resourceOwner.toTfJson(),
    'resource_region': resourceRegion.toTfJson(),
    'resource_type': resourceType.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_ipam_pool`.
final class AwsVpcIpamPool extends Resource {
  static const String tfType = 'aws_vpc_ipam_pool';

  AwsVpcIpamPool({
    required super.localName,
    required TfArg<String> addressFamily,
    TfArg<num>? allocationDefaultNetmaskLength,
    TfArg<num>? allocationMaxNetmaskLength,
    TfArg<num>? allocationMinNetmaskLength,
    TfArg<Map<String, String>>? allocationResourceTags,
    TfArg<bool>? autoImport,
    TfArg<String>? awsService,
    TfArg<bool>? cascade,
    TfArg<String>? description,
    required TfArg<String> ipamScopeId,
    TfArg<String>? locale,
    TfArg<String>? publicIpSource,
    TfArg<bool>? publiclyAdvertisable,
    TfArg<String>? region,
    TfArg<String>? sourceIpamPoolId,
    TfArg<Map<String, String>>? tags,
    VpcIpamPoolSourceResource? sourceResource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address_family': addressFamily,
           if (allocationDefaultNetmaskLength != null)
             'allocation_default_netmask_length':
                 allocationDefaultNetmaskLength,
           if (allocationMaxNetmaskLength != null)
             'allocation_max_netmask_length': allocationMaxNetmaskLength,
           if (allocationMinNetmaskLength != null)
             'allocation_min_netmask_length': allocationMinNetmaskLength,
           if (allocationResourceTags != null)
             'allocation_resource_tags': allocationResourceTags,
           if (autoImport != null) 'auto_import': autoImport,
           if (awsService != null) 'aws_service': awsService,
           if (cascade != null) 'cascade': cascade,
           if (description != null) 'description': description,
           'ipam_scope_id': ipamScopeId,
           if (locale != null) 'locale': locale,
           if (publicIpSource != null) 'public_ip_source': publicIpSource,
           if (publiclyAdvertisable != null)
             'publicly_advertisable': publiclyAdvertisable,
           if (region != null) 'region': region,
           if (sourceIpamPoolId != null)
             'source_ipam_pool_id': sourceIpamPoolId,
           if (tags != null) 'tags': tags,
           if (sourceResource != null)
             'source_resource': TfArg.literal(sourceResource.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamPoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ipam_scope_type` attribute.
  TfRef<String> get ipamScopeType =>
      TfRef.attribute<String>(this, 'ipam_scope_type');

  /// Reference to `pool_depth` attribute.
  TfRef<num> get poolDepth => TfRef.attribute<num>(this, 'pool_depth');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
