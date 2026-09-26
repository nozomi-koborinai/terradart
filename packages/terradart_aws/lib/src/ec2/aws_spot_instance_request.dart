// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_spot_instance_request`.
const Set<String> _awsSpotInstanceRequestSensitive = <String>{};

/// Typed helper for the `capacity_reservation_specification` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestCapacityReservationSpecification {
  const SpotInstanceRequestCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  final TfArg<String>? capacityReservationPreference;

  final SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget?
  capacityReservationTarget;

  Map<String, Object?> encode() => {
    if (capacityReservationPreference != null)
      'capacity_reservation_preference': capacityReservationPreference!
          .toTfJson(),
    if (capacityReservationTarget != null)
      'capacity_reservation_target': capacityReservationTarget!.encode(),
  };
}

/// Typed helper for the `capacity_reservation_specification.capacity_reservation_target` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget({
    this.capacityReservationId,
    this.capacityReservationResourceGroupArn,
  });

  final TfArg<String>? capacityReservationId;

  final TfArg<String>? capacityReservationResourceGroupArn;

  Map<String, Object?> encode() => {
    if (capacityReservationId != null)
      'capacity_reservation_id': capacityReservationId!.toTfJson(),
    if (capacityReservationResourceGroupArn != null)
      'capacity_reservation_resource_group_arn':
          capacityReservationResourceGroupArn!.toTfJson(),
  };
}

/// Typed helper for the `cpu_options` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestCpuOptions {
  const SpotInstanceRequestCpuOptions({
    this.amdSevSnp,
    this.coreCount,
    this.nestedVirtualization,
    this.threadsPerCore,
  });

  final TfArg<String>? amdSevSnp;

  final TfArg<num>? coreCount;

  final TfArg<String>? nestedVirtualization;

  final TfArg<num>? threadsPerCore;

  Map<String, Object?> encode() => {
    if (amdSevSnp != null) 'amd_sev_snp': amdSevSnp!.toTfJson(),
    if (coreCount != null) 'core_count': coreCount!.toTfJson(),
    if (nestedVirtualization != null)
      'nested_virtualization': nestedVirtualization!.toTfJson(),
    if (threadsPerCore != null) 'threads_per_core': threadsPerCore!.toTfJson(),
  };
}

/// Typed helper for the `credit_specification` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestCreditSpecification {
  const SpotInstanceRequestCreditSpecification({this.cpuCredits});

  final TfArg<String>? cpuCredits;

  Map<String, Object?> encode() => {
    if (cpuCredits != null) 'cpu_credits': cpuCredits!.toTfJson(),
  };
}

/// Typed helper for the `ebs_block_device` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestEbsBlockDevice {
  const SpotInstanceRequestEbsBlockDevice({
    this.deleteOnTermination,
    required this.deviceName,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.snapshotId,
    this.tags,
    this.tagsAll,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<String> deviceName;

  final TfArg<bool>? encrypted;

  final TfArg<num>? iops;

  final TfArg<String>? kmsKeyId;

  final TfArg<String>? snapshotId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<Map<String, String>>? tagsAll;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<String>? volumeType;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    'device_name': deviceName.toTfJson(),
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (snapshotId != null) 'snapshot_id': snapshotId!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (tagsAll != null) 'tags_all': tagsAll!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// Typed helper for the `enclave_options` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestEnclaveOptions {
  const SpotInstanceRequestEnclaveOptions({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `ephemeral_block_device` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestEphemeralBlockDevice {
  const SpotInstanceRequestEphemeralBlockDevice({
    required this.deviceName,
    this.noDevice,
    this.virtualName,
  });

  final TfArg<String> deviceName;

  final TfArg<bool>? noDevice;

  final TfArg<String>? virtualName;

  Map<String, Object?> encode() => {
    'device_name': deviceName.toTfJson(),
    if (noDevice != null) 'no_device': noDevice!.toTfJson(),
    if (virtualName != null) 'virtual_name': virtualName!.toTfJson(),
  };
}

/// Typed helper for the `launch_template` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestLaunchTemplate {
  const SpotInstanceRequestLaunchTemplate({this.id, this.name, this.version});

  final TfArg<String>? id;

  final TfArg<String>? name;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `maintenance_options` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestMaintenanceOptions {
  const SpotInstanceRequestMaintenanceOptions({this.autoRecovery});

  final TfArg<String>? autoRecovery;

  Map<String, Object?> encode() => {
    if (autoRecovery != null) 'auto_recovery': autoRecovery!.toTfJson(),
  };
}

/// Typed helper for the `metadata_options` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestMetadataOptions {
  const SpotInstanceRequestMetadataOptions({
    this.httpEndpoint,
    this.httpProtocolIpv6,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.instanceMetadataTags,
  });

  final TfArg<String>? httpEndpoint;

  final TfArg<String>? httpProtocolIpv6;

  final TfArg<num>? httpPutResponseHopLimit;

  final TfArg<String>? httpTokens;

  final TfArg<String>? instanceMetadataTags;

  Map<String, Object?> encode() => {
    if (httpEndpoint != null) 'http_endpoint': httpEndpoint!.toTfJson(),
    if (httpProtocolIpv6 != null)
      'http_protocol_ipv6': httpProtocolIpv6!.toTfJson(),
    if (httpPutResponseHopLimit != null)
      'http_put_response_hop_limit': httpPutResponseHopLimit!.toTfJson(),
    if (httpTokens != null) 'http_tokens': httpTokens!.toTfJson(),
    if (instanceMetadataTags != null)
      'instance_metadata_tags': instanceMetadataTags!.toTfJson(),
  };
}

/// Typed helper for the `network_interface` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestNetworkInterface {
  const SpotInstanceRequestNetworkInterface({
    this.deleteOnTermination,
    required this.deviceIndex,
    required this.networkInterfaceId,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<num> deviceIndex;

  final TfArg<String> networkInterfaceId;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    'device_index': deviceIndex.toTfJson(),
    'network_interface_id': networkInterfaceId.toTfJson(),
  };
}

/// Typed helper for the `private_dns_name_options` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestPrivateDnsNameOptions {
  const SpotInstanceRequestPrivateDnsNameOptions({
    this.enableResourceNameDnsARecord,
    this.enableResourceNameDnsAaaaRecord,
    this.hostnameType,
  });

  final TfArg<bool>? enableResourceNameDnsARecord;

  final TfArg<bool>? enableResourceNameDnsAaaaRecord;

  final TfArg<String>? hostnameType;

  Map<String, Object?> encode() => {
    if (enableResourceNameDnsARecord != null)
      'enable_resource_name_dns_a_record': enableResourceNameDnsARecord!
          .toTfJson(),
    if (enableResourceNameDnsAaaaRecord != null)
      'enable_resource_name_dns_aaaa_record': enableResourceNameDnsAaaaRecord!
          .toTfJson(),
    if (hostnameType != null) 'hostname_type': hostnameType!.toTfJson(),
  };
}

/// Typed helper for the `root_block_device` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestRootBlockDevice {
  const SpotInstanceRequestRootBlockDevice({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.tags,
    this.tagsAll,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<bool>? encrypted;

  final TfArg<num>? iops;

  final TfArg<String>? kmsKeyId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<Map<String, String>>? tagsAll;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<String>? volumeType;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (tagsAll != null) 'tags_all': tagsAll!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// Typed helper for the `secondary_network_interface` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestSecondaryNetworkInterface {
  const SpotInstanceRequestSecondaryNetworkInterface({
    this.deleteOnTermination,
    this.deviceIndex,
    this.interfaceType,
    required this.networkCardIndex,
    this.privateIpAddressCount,
    required this.secondarySubnetId,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<num>? deviceIndex;

  final TfArg<String>? interfaceType;

  final TfArg<num> networkCardIndex;

  final TfArg<num>? privateIpAddressCount;

  final TfArg<String> secondarySubnetId;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    if (deviceIndex != null) 'device_index': deviceIndex!.toTfJson(),
    if (interfaceType != null) 'interface_type': interfaceType!.toTfJson(),
    'network_card_index': networkCardIndex.toTfJson(),
    if (privateIpAddressCount != null)
      'private_ip_address_count': privateIpAddressCount!.toTfJson(),
    'secondary_subnet_id': secondarySubnetId.toTfJson(),
  };
}

/// Factory wrapper for `aws_spot_instance_request`.
final class AwsSpotInstanceRequest extends Resource {
  static const String tfType = 'aws_spot_instance_request';

  AwsSpotInstanceRequest({
    required super.localName,
    TfArg<String>? ami,
    TfArg<bool>? associatePublicIpAddress,
    TfArg<String>? availabilityZone,
    TfArg<bool>? disableApiStop,
    TfArg<bool>? disableApiTermination,
    TfArg<bool>? ebsOptimized,
    TfArg<bool>? enablePrimaryIpv6,
    TfArg<bool>? forceDestroy,
    TfArg<bool>? getPasswordData,
    TfArg<bool>? hibernation,
    TfArg<String>? hostId,
    TfArg<String>? hostResourceGroupArn,
    TfArg<String>? iamInstanceProfile,
    TfArg<String>? instanceInitiatedShutdownBehavior,
    TfArg<String>? instanceInterruptionBehavior,
    TfArg<String>? instanceType,
    TfArg<num>? ipv6AddressCount,
    TfArg<List<String>>? ipv6Addresses,
    TfArg<String>? keyName,
    TfArg<String>? launchGroup,
    TfArg<bool>? monitoring,
    TfArg<String>? placementGroup,
    TfArg<String>? placementGroupId,
    TfArg<num>? placementPartitionNumber,
    TfArg<String>? privateIp,
    TfArg<String>? region,
    TfArg<List<String>>? secondaryPrivateIps,
    TfArg<List<String>>? securityGroups,
    TfArg<bool>? sourceDestCheck,
    TfArg<String>? spotPrice,
    TfArg<String>? spotType,
    TfArg<String>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tenancy,
    TfArg<String>? userData,
    TfArg<String>? userDataBase64,
    TfArg<bool>? userDataReplaceOnChange,
    TfArg<String>? validFrom,
    TfArg<String>? validUntil,
    TfArg<Map<String, String>>? volumeTags,
    TfArg<List<String>>? vpcSecurityGroupIds,
    TfArg<bool>? waitForFulfillment,
    SpotInstanceRequestCapacityReservationSpecification?
    capacityReservationSpecification,
    SpotInstanceRequestCpuOptions? cpuOptions,
    SpotInstanceRequestCreditSpecification? creditSpecification,
    List<SpotInstanceRequestEbsBlockDevice>? ebsBlockDevice,
    SpotInstanceRequestEnclaveOptions? enclaveOptions,
    List<SpotInstanceRequestEphemeralBlockDevice>? ephemeralBlockDevice,
    SpotInstanceRequestLaunchTemplate? launchTemplate,
    SpotInstanceRequestMaintenanceOptions? maintenanceOptions,
    SpotInstanceRequestMetadataOptions? metadataOptions,
    List<SpotInstanceRequestNetworkInterface>? networkInterface,
    SpotInstanceRequestPrivateDnsNameOptions? privateDnsNameOptions,
    SpotInstanceRequestRootBlockDevice? rootBlockDevice,
    List<SpotInstanceRequestSecondaryNetworkInterface>?
    secondaryNetworkInterface,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (ami != null) 'ami': ami,
           if (associatePublicIpAddress != null)
             'associate_public_ip_address': associatePublicIpAddress,
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (disableApiStop != null) 'disable_api_stop': disableApiStop,
           if (disableApiTermination != null)
             'disable_api_termination': disableApiTermination,
           if (ebsOptimized != null) 'ebs_optimized': ebsOptimized,
           if (enablePrimaryIpv6 != null)
             'enable_primary_ipv6': enablePrimaryIpv6,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (getPasswordData != null) 'get_password_data': getPasswordData,
           if (hibernation != null) 'hibernation': hibernation,
           if (hostId != null) 'host_id': hostId,
           if (hostResourceGroupArn != null)
             'host_resource_group_arn': hostResourceGroupArn,
           if (iamInstanceProfile != null)
             'iam_instance_profile': iamInstanceProfile,
           if (instanceInitiatedShutdownBehavior != null)
             'instance_initiated_shutdown_behavior':
                 instanceInitiatedShutdownBehavior,
           if (instanceInterruptionBehavior != null)
             'instance_interruption_behavior': instanceInterruptionBehavior,
           if (instanceType != null) 'instance_type': instanceType,
           if (ipv6AddressCount != null) 'ipv6_address_count': ipv6AddressCount,
           if (ipv6Addresses != null) 'ipv6_addresses': ipv6Addresses,
           if (keyName != null) 'key_name': keyName,
           if (launchGroup != null) 'launch_group': launchGroup,
           if (monitoring != null) 'monitoring': monitoring,
           if (placementGroup != null) 'placement_group': placementGroup,
           if (placementGroupId != null) 'placement_group_id': placementGroupId,
           if (placementPartitionNumber != null)
             'placement_partition_number': placementPartitionNumber,
           if (privateIp != null) 'private_ip': privateIp,
           if (region != null) 'region': region,
           if (secondaryPrivateIps != null)
             'secondary_private_ips': secondaryPrivateIps,
           if (securityGroups != null) 'security_groups': securityGroups,
           if (sourceDestCheck != null) 'source_dest_check': sourceDestCheck,
           if (spotPrice != null) 'spot_price': spotPrice,
           if (spotType != null) 'spot_type': spotType,
           if (subnetId != null) 'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
           if (tenancy != null) 'tenancy': tenancy,
           if (userData != null) 'user_data': userData,
           if (userDataBase64 != null) 'user_data_base64': userDataBase64,
           if (userDataReplaceOnChange != null)
             'user_data_replace_on_change': userDataReplaceOnChange,
           if (validFrom != null) 'valid_from': validFrom,
           if (validUntil != null) 'valid_until': validUntil,
           if (volumeTags != null) 'volume_tags': volumeTags,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
           if (waitForFulfillment != null)
             'wait_for_fulfillment': waitForFulfillment,
           if (capacityReservationSpecification != null)
             'capacity_reservation_specification': TfArg.literal(
               capacityReservationSpecification.encode(),
             ),
           if (cpuOptions != null)
             'cpu_options': TfArg.literal(cpuOptions.encode()),
           if (creditSpecification != null)
             'credit_specification': TfArg.literal(
               creditSpecification.encode(),
             ),
           if (ebsBlockDevice != null)
             'ebs_block_device': TfArg.literal([
               for (final e in ebsBlockDevice) e.encode(),
             ]),
           if (enclaveOptions != null)
             'enclave_options': TfArg.literal(enclaveOptions.encode()),
           if (ephemeralBlockDevice != null)
             'ephemeral_block_device': TfArg.literal([
               for (final e in ephemeralBlockDevice) e.encode(),
             ]),
           if (launchTemplate != null)
             'launch_template': TfArg.literal(launchTemplate.encode()),
           if (maintenanceOptions != null)
             'maintenance_options': TfArg.literal(maintenanceOptions.encode()),
           if (metadataOptions != null)
             'metadata_options': TfArg.literal(metadataOptions.encode()),
           if (networkInterface != null)
             'network_interface': TfArg.literal([
               for (final e in networkInterface) e.encode(),
             ]),
           if (privateDnsNameOptions != null)
             'private_dns_name_options': TfArg.literal(
               privateDnsNameOptions.encode(),
             ),
           if (rootBlockDevice != null)
             'root_block_device': TfArg.literal(rootBlockDevice.encode()),
           if (secondaryNetworkInterface != null)
             'secondary_network_interface': TfArg.literal([
               for (final e in secondaryNetworkInterface) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSpotInstanceRequestSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `instance_state` attribute.
  TfRef<String> get instanceState =>
      TfRef.attribute<String>(this, 'instance_state');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `password_data` attribute.
  TfRef<String> get passwordData =>
      TfRef.attribute<String>(this, 'password_data');

  /// Reference to `primary_network_interface` attribute.
  TfRef<List<Map<String, Object?>>> get primaryNetworkInterface =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'primary_network_interface',
      );

  /// Reference to `primary_network_interface_id` attribute.
  TfRef<String> get primaryNetworkInterfaceId =>
      TfRef.attribute<String>(this, 'primary_network_interface_id');

  /// Reference to `private_dns` attribute.
  TfRef<String> get privateDns => TfRef.attribute<String>(this, 'private_dns');

  /// Reference to `public_dns` attribute.
  TfRef<String> get publicDns => TfRef.attribute<String>(this, 'public_dns');

  /// Reference to `public_ip` attribute.
  TfRef<String> get publicIp => TfRef.attribute<String>(this, 'public_ip');

  /// Reference to `spot_bid_status` attribute.
  TfRef<String> get spotBidStatus =>
      TfRef.attribute<String>(this, 'spot_bid_status');

  /// Reference to `spot_instance_id` attribute.
  TfRef<String> get spotInstanceId =>
      TfRef.attribute<String>(this, 'spot_instance_id');

  /// Reference to `spot_request_state` attribute.
  TfRef<String> get spotRequestState =>
      TfRef.attribute<String>(this, 'spot_request_state');
}
