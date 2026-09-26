// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_instance`.
const Set<String> _awsInstanceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class DataInstanceFilter {
  const DataInstanceFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_instance`.
final class DataAwsInstance extends Data {
  static const String tfType = 'aws_instance';

  DataAwsInstance({
    required super.localName,
    TfArg<bool>? getPasswordData,
    TfArg<bool>? getUserData,
    TfArg<String>? instanceId,
    TfArg<Map<String, String>>? instanceTags,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataInstanceFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (getPasswordData != null) 'get_password_data': getPasswordData,
           if (getUserData != null) 'get_user_data': getUserData,
           if (instanceId != null) 'instance_id': instanceId,
           if (instanceTags != null) 'instance_tags': instanceTags,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ami` attribute.
  TfRef<String> get ami => TfRef.attribute<String>(this, 'ami');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `associate_public_ip_address` attribute.
  TfRef<bool> get associatePublicIpAddress =>
      TfRef.attribute<bool>(this, 'associate_public_ip_address');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `credit_specification` attribute.
  TfRef<List<Map<String, Object?>>> get creditSpecification =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'credit_specification');

  /// Reference to `disable_api_stop` attribute.
  TfRef<bool> get disableApiStop =>
      TfRef.attribute<bool>(this, 'disable_api_stop');

  /// Reference to `disable_api_termination` attribute.
  TfRef<bool> get disableApiTermination =>
      TfRef.attribute<bool>(this, 'disable_api_termination');

  /// Reference to `ebs_block_device` attribute.
  TfRef<List<Map<String, Object?>>> get ebsBlockDevice =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ebs_block_device');

  /// Reference to `ebs_optimized` attribute.
  TfRef<bool> get ebsOptimized => TfRef.attribute<bool>(this, 'ebs_optimized');

  /// Reference to `enclave_options` attribute.
  TfRef<List<Map<String, Object?>>> get enclaveOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'enclave_options');

  /// Reference to `ephemeral_block_device` attribute.
  TfRef<List<Map<String, Object?>>> get ephemeralBlockDevice =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'ephemeral_block_device',
      );

  /// Reference to `host_id` attribute.
  TfRef<String> get hostId => TfRef.attribute<String>(this, 'host_id');

  /// Reference to `host_resource_group_arn` attribute.
  TfRef<String> get hostResourceGroupArn =>
      TfRef.attribute<String>(this, 'host_resource_group_arn');

  /// Reference to `iam_instance_profile` attribute.
  TfRef<String> get iamInstanceProfile =>
      TfRef.attribute<String>(this, 'iam_instance_profile');

  /// Reference to `instance_state` attribute.
  TfRef<String> get instanceState =>
      TfRef.attribute<String>(this, 'instance_state');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `ipv6_addresses` attribute.
  TfRef<List<String>> get ipv6Addresses =>
      TfRef.attribute<List<String>>(this, 'ipv6_addresses');

  /// Reference to `key_name` attribute.
  TfRef<String> get keyName => TfRef.attribute<String>(this, 'key_name');

  /// Reference to `launch_time` attribute.
  TfRef<String> get launchTime => TfRef.attribute<String>(this, 'launch_time');

  /// Reference to `maintenance_options` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_options');

  /// Reference to `metadata_options` attribute.
  TfRef<List<Map<String, Object?>>> get metadataOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metadata_options');

  /// Reference to `monitoring` attribute.
  TfRef<bool> get monitoring => TfRef.attribute<bool>(this, 'monitoring');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `password_data` attribute.
  TfRef<String> get passwordData =>
      TfRef.attribute<String>(this, 'password_data');

  /// Reference to `placement_group` attribute.
  TfRef<String> get placementGroup =>
      TfRef.attribute<String>(this, 'placement_group');

  /// Reference to `placement_group_id` attribute.
  TfRef<String> get placementGroupId =>
      TfRef.attribute<String>(this, 'placement_group_id');

  /// Reference to `placement_partition_number` attribute.
  TfRef<num> get placementPartitionNumber =>
      TfRef.attribute<num>(this, 'placement_partition_number');

  /// Reference to `private_dns` attribute.
  TfRef<String> get privateDns => TfRef.attribute<String>(this, 'private_dns');

  /// Reference to `private_dns_name_options` attribute.
  TfRef<List<Map<String, Object?>>> get privateDnsNameOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_dns_name_options',
      );

  /// Reference to `private_ip` attribute.
  TfRef<String> get privateIp => TfRef.attribute<String>(this, 'private_ip');

  /// Reference to `public_dns` attribute.
  TfRef<String> get publicDns => TfRef.attribute<String>(this, 'public_dns');

  /// Reference to `public_ip` attribute.
  TfRef<String> get publicIp => TfRef.attribute<String>(this, 'public_ip');

  /// Reference to `root_block_device` attribute.
  TfRef<List<Map<String, Object?>>> get rootBlockDevice =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'root_block_device');

  /// Reference to `secondary_private_ips` attribute.
  TfRef<List<String>> get secondaryPrivateIps =>
      TfRef.attribute<List<String>>(this, 'secondary_private_ips');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `source_dest_check` attribute.
  TfRef<bool> get sourceDestCheck =>
      TfRef.attribute<bool>(this, 'source_dest_check');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tenancy` attribute.
  TfRef<String> get tenancy => TfRef.attribute<String>(this, 'tenancy');

  /// Reference to `user_data` attribute.
  TfRef<String> get userData => TfRef.attribute<String>(this, 'user_data');

  /// Reference to `user_data_base64` attribute.
  TfRef<String> get userDataBase64 =>
      TfRef.attribute<String>(this, 'user_data_base64');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
