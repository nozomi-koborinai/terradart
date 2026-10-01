// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_pool`.
const Set<String> _awsVpcIpamPoolSensitive = <String>{};

/// Vpc Ipam Pool Address enum for `address_family`.
enum VpcIpamPoolAddressFamily implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6');

  const VpcIpamPoolAddressFamily(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpc Ipam Pool Aws enum for `aws_service`.
enum VpcIpamPoolAwsService implements TerraformEnum {
  ec2('ec2'),
  globalServices('global-services');

  const VpcIpamPoolAwsService(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpc Ipam Pool Public Ip enum for `public_ip_source`.
enum VpcIpamPoolPublicIpSource implements TerraformEnum {
  amazon('amazon'),
  byoip('byoip');

  const VpcIpamPoolPublicIpSource(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<VpcIpamPoolResourceType> resourceType;

  Map<String, Object?> encode() => {
    'resource_id': resourceId.toTfJson(),
    'resource_owner': resourceOwner.toTfJson(),
    'resource_region': resourceRegion.toTfJson(),
    'resource_type': resourceType.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
enum VpcIpamPoolResourceType implements TerraformEnum {
  vpc('vpc');

  const VpcIpamPoolResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_vpc_ipam_pool`.
final class AwsVpcIpamPool extends Resource {
  static const String tfType = 'aws_vpc_ipam_pool';

  AwsVpcIpamPool({
    required super.localName,
    required TfArg<VpcIpamPoolAddressFamily> addressFamily,
    TfArg<num>? allocationDefaultNetmaskLength,
    TfArg<num>? allocationMaxNetmaskLength,
    TfArg<num>? allocationMinNetmaskLength,
    TfArg<Map<String, String>>? allocationResourceTags,
    TfArg<bool>? autoImport,
    TfArg<VpcIpamPoolAwsService>? awsService,
    TfArg<bool>? cascade,
    TfArg<String>? description,
    required TfArg<String> ipamScopeId,
    TfArg<String>? locale,
    TfArg<VpcIpamPoolPublicIpSource>? publicIpSource,
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
           'allocation_default_netmask_length': ?allocationDefaultNetmaskLength,
           'allocation_max_netmask_length': ?allocationMaxNetmaskLength,
           'allocation_min_netmask_length': ?allocationMinNetmaskLength,
           'allocation_resource_tags': ?allocationResourceTags,
           'auto_import': ?autoImport,
           'aws_service': ?awsService,
           'cascade': ?cascade,
           'description': ?description,
           'ipam_scope_id': ipamScopeId,
           'locale': ?locale,
           'public_ip_source': ?publicIpSource,
           'publicly_advertisable': ?publiclyAdvertisable,
           'region': ?region,
           'source_ipam_pool_id': ?sourceIpamPoolId,
           'tags': ?tags,
           if (sourceResource != null)
             'source_resource': TfArg.literal(sourceResource.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcIpamPool>`.
  RefTo<AwsVpcIpamPool> get ref => RefTo.of(this);

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

  /// Reference to `address_family` attribute.
  TfRef<String> get addressFamily =>
      TfRef.attribute<String>(this, 'address_family');

  /// Reference to `allocation_default_netmask_length` attribute.
  TfRef<num> get allocationDefaultNetmaskLength =>
      TfRef.attribute<num>(this, 'allocation_default_netmask_length');

  /// Reference to `allocation_max_netmask_length` attribute.
  TfRef<num> get allocationMaxNetmaskLength =>
      TfRef.attribute<num>(this, 'allocation_max_netmask_length');

  /// Reference to `allocation_min_netmask_length` attribute.
  TfRef<num> get allocationMinNetmaskLength =>
      TfRef.attribute<num>(this, 'allocation_min_netmask_length');

  /// Reference to `allocation_resource_tags` attribute.
  TfRef<Map<String, String>> get allocationResourceTags =>
      TfRef.attribute<Map<String, String>>(this, 'allocation_resource_tags');

  /// Reference to `auto_import` attribute.
  TfRef<bool> get autoImport => TfRef.attribute<bool>(this, 'auto_import');

  /// Reference to `aws_service` attribute.
  TfRef<String> get awsService => TfRef.attribute<String>(this, 'aws_service');

  /// Reference to `cascade` attribute.
  TfRef<bool> get cascade => TfRef.attribute<bool>(this, 'cascade');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ipam_scope_id` attribute.
  TfRef<String> get ipamScopeId =>
      TfRef.attribute<String>(this, 'ipam_scope_id');

  /// Reference to `locale` attribute.
  TfRef<String> get locale => TfRef.attribute<String>(this, 'locale');

  /// Reference to `public_ip_source` attribute.
  TfRef<String> get publicIpSource =>
      TfRef.attribute<String>(this, 'public_ip_source');

  /// Reference to `publicly_advertisable` attribute.
  TfRef<bool> get publiclyAdvertisable =>
      TfRef.attribute<bool>(this, 'publicly_advertisable');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_ipam_pool_id` attribute.
  TfRef<String> get sourceIpamPoolId =>
      TfRef.attribute<String>(this, 'source_ipam_pool_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
