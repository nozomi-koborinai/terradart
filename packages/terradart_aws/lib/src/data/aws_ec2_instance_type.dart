// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_instance_type`.
const Set<String> _awsEc2InstanceTypeSensitive = <String>{};

/// Factory wrapper for `aws_ec2_instance_type`.
final class DataAwsEc2InstanceType extends Data {
  static const String tfType = 'aws_ec2_instance_type';

  DataAwsEc2InstanceType({
    required super.localName,
    required TfArg<String> instanceType,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_type': instanceType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2InstanceTypeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_recovery_supported` attribute.
  TfRef<bool> get autoRecoverySupported =>
      TfRef.attribute<bool>(this, 'auto_recovery_supported');

  /// Reference to `bandwidth_weightings` attribute.
  TfRef<List<String>> get bandwidthWeightings =>
      TfRef.attribute<List<String>>(this, 'bandwidth_weightings');

  /// Reference to `bare_metal` attribute.
  TfRef<bool> get bareMetal => TfRef.attribute<bool>(this, 'bare_metal');

  /// Reference to `boot_modes` attribute.
  TfRef<List<String>> get bootModes =>
      TfRef.attribute<List<String>>(this, 'boot_modes');

  /// Reference to `burstable_performance_supported` attribute.
  TfRef<bool> get burstablePerformanceSupported =>
      TfRef.attribute<bool>(this, 'burstable_performance_supported');

  /// Reference to `current_generation` attribute.
  TfRef<bool> get currentGeneration =>
      TfRef.attribute<bool>(this, 'current_generation');

  /// Reference to `dedicated_hosts_supported` attribute.
  TfRef<bool> get dedicatedHostsSupported =>
      TfRef.attribute<bool>(this, 'dedicated_hosts_supported');

  /// Reference to `default_cores` attribute.
  TfRef<num> get defaultCores => TfRef.attribute<num>(this, 'default_cores');

  /// Reference to `default_network_card_index` attribute.
  TfRef<num> get defaultNetworkCardIndex =>
      TfRef.attribute<num>(this, 'default_network_card_index');

  /// Reference to `default_threads_per_core` attribute.
  TfRef<num> get defaultThreadsPerCore =>
      TfRef.attribute<num>(this, 'default_threads_per_core');

  /// Reference to `default_vcpus` attribute.
  TfRef<num> get defaultVcpus => TfRef.attribute<num>(this, 'default_vcpus');

  /// Reference to `ebs_encryption_support` attribute.
  TfRef<String> get ebsEncryptionSupport =>
      TfRef.attribute<String>(this, 'ebs_encryption_support');

  /// Reference to `ebs_nvme_support` attribute.
  TfRef<String> get ebsNvmeSupport =>
      TfRef.attribute<String>(this, 'ebs_nvme_support');

  /// Reference to `ebs_optimized_support` attribute.
  TfRef<String> get ebsOptimizedSupport =>
      TfRef.attribute<String>(this, 'ebs_optimized_support');

  /// Reference to `ebs_performance_baseline_bandwidth` attribute.
  TfRef<num> get ebsPerformanceBaselineBandwidth =>
      TfRef.attribute<num>(this, 'ebs_performance_baseline_bandwidth');

  /// Reference to `ebs_performance_baseline_iops` attribute.
  TfRef<num> get ebsPerformanceBaselineIops =>
      TfRef.attribute<num>(this, 'ebs_performance_baseline_iops');

  /// Reference to `ebs_performance_baseline_throughput` attribute.
  TfRef<num> get ebsPerformanceBaselineThroughput =>
      TfRef.attribute<num>(this, 'ebs_performance_baseline_throughput');

  /// Reference to `ebs_performance_maximum_bandwidth` attribute.
  TfRef<num> get ebsPerformanceMaximumBandwidth =>
      TfRef.attribute<num>(this, 'ebs_performance_maximum_bandwidth');

  /// Reference to `ebs_performance_maximum_iops` attribute.
  TfRef<num> get ebsPerformanceMaximumIops =>
      TfRef.attribute<num>(this, 'ebs_performance_maximum_iops');

  /// Reference to `ebs_performance_maximum_throughput` attribute.
  TfRef<num> get ebsPerformanceMaximumThroughput =>
      TfRef.attribute<num>(this, 'ebs_performance_maximum_throughput');

  /// Reference to `efa_maximum_interfaces` attribute.
  TfRef<num> get efaMaximumInterfaces =>
      TfRef.attribute<num>(this, 'efa_maximum_interfaces');

  /// Reference to `efa_supported` attribute.
  TfRef<bool> get efaSupported => TfRef.attribute<bool>(this, 'efa_supported');

  /// Reference to `ena_srd_supported` attribute.
  TfRef<bool> get enaSrdSupported =>
      TfRef.attribute<bool>(this, 'ena_srd_supported');

  /// Reference to `ena_support` attribute.
  TfRef<String> get enaSupport => TfRef.attribute<String>(this, 'ena_support');

  /// Reference to `encryption_in_transit_supported` attribute.
  TfRef<bool> get encryptionInTransitSupported =>
      TfRef.attribute<bool>(this, 'encryption_in_transit_supported');

  /// Reference to `fpgas` attribute.
  TfRef<List<Map<String, Object?>>> get fpgas =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'fpgas');

  /// Reference to `free_tier_eligible` attribute.
  TfRef<bool> get freeTierEligible =>
      TfRef.attribute<bool>(this, 'free_tier_eligible');

  /// Reference to `gpus` attribute.
  TfRef<List<Map<String, Object?>>> get gpus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'gpus');

  /// Reference to `hibernation_supported` attribute.
  TfRef<bool> get hibernationSupported =>
      TfRef.attribute<bool>(this, 'hibernation_supported');

  /// Reference to `hypervisor` attribute.
  TfRef<String> get hypervisor => TfRef.attribute<String>(this, 'hypervisor');

  /// Reference to `inference_accelerators` attribute.
  TfRef<List<Map<String, Object?>>> get inferenceAccelerators =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'inference_accelerators',
      );

  /// Reference to `instance_disks` attribute.
  TfRef<List<Map<String, Object?>>> get instanceDisks =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'instance_disks');

  /// Reference to `instance_storage_supported` attribute.
  TfRef<bool> get instanceStorageSupported =>
      TfRef.attribute<bool>(this, 'instance_storage_supported');

  /// Reference to `ipv6_supported` attribute.
  TfRef<bool> get ipv6Supported =>
      TfRef.attribute<bool>(this, 'ipv6_supported');

  /// Reference to `maximum_ipv4_addresses_per_interface` attribute.
  TfRef<num> get maximumIpv4AddressesPerInterface =>
      TfRef.attribute<num>(this, 'maximum_ipv4_addresses_per_interface');

  /// Reference to `maximum_ipv6_addresses_per_interface` attribute.
  TfRef<num> get maximumIpv6AddressesPerInterface =>
      TfRef.attribute<num>(this, 'maximum_ipv6_addresses_per_interface');

  /// Reference to `maximum_network_cards` attribute.
  TfRef<num> get maximumNetworkCards =>
      TfRef.attribute<num>(this, 'maximum_network_cards');

  /// Reference to `maximum_network_interfaces` attribute.
  TfRef<num> get maximumNetworkInterfaces =>
      TfRef.attribute<num>(this, 'maximum_network_interfaces');

  /// Reference to `media_accelerators` attribute.
  TfRef<List<Map<String, Object?>>> get mediaAccelerators =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'media_accelerators');

  /// Reference to `memory_size` attribute.
  TfRef<num> get memorySize => TfRef.attribute<num>(this, 'memory_size');

  /// Reference to `network_cards` attribute.
  TfRef<List<Map<String, Object?>>> get networkCards =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_cards');

  /// Reference to `network_performance` attribute.
  TfRef<String> get networkPerformance =>
      TfRef.attribute<String>(this, 'network_performance');

  /// Reference to `neuron_devices` attribute.
  TfRef<List<Map<String, Object?>>> get neuronDevices =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'neuron_devices');

  /// Reference to `nitro_enclaves_support` attribute.
  TfRef<String> get nitroEnclavesSupport =>
      TfRef.attribute<String>(this, 'nitro_enclaves_support');

  /// Reference to `nitro_tpm_support` attribute.
  TfRef<String> get nitroTpmSupport =>
      TfRef.attribute<String>(this, 'nitro_tpm_support');

  /// Reference to `nitro_tpm_supported_versions` attribute.
  TfRef<List<String>> get nitroTpmSupportedVersions =>
      TfRef.attribute<List<String>>(this, 'nitro_tpm_supported_versions');

  /// Reference to `phc_support` attribute.
  TfRef<String> get phcSupport => TfRef.attribute<String>(this, 'phc_support');

  /// Reference to `supported_architectures` attribute.
  TfRef<List<String>> get supportedArchitectures =>
      TfRef.attribute<List<String>>(this, 'supported_architectures');

  /// Reference to `supported_cpu_features` attribute.
  TfRef<List<String>> get supportedCpuFeatures =>
      TfRef.attribute<List<String>>(this, 'supported_cpu_features');

  /// Reference to `supported_placement_strategies` attribute.
  TfRef<List<String>> get supportedPlacementStrategies =>
      TfRef.attribute<List<String>>(this, 'supported_placement_strategies');

  /// Reference to `supported_root_device_types` attribute.
  TfRef<List<String>> get supportedRootDeviceTypes =>
      TfRef.attribute<List<String>>(this, 'supported_root_device_types');

  /// Reference to `supported_usages_classes` attribute.
  TfRef<List<String>> get supportedUsagesClasses =>
      TfRef.attribute<List<String>>(this, 'supported_usages_classes');

  /// Reference to `supported_virtualization_types` attribute.
  TfRef<List<String>> get supportedVirtualizationTypes =>
      TfRef.attribute<List<String>>(this, 'supported_virtualization_types');

  /// Reference to `sustained_clock_speed` attribute.
  TfRef<num> get sustainedClockSpeed =>
      TfRef.attribute<num>(this, 'sustained_clock_speed');

  /// Reference to `total_fpga_memory` attribute.
  TfRef<num> get totalFpgaMemory =>
      TfRef.attribute<num>(this, 'total_fpga_memory');

  /// Reference to `total_gpu_memory` attribute.
  TfRef<num> get totalGpuMemory =>
      TfRef.attribute<num>(this, 'total_gpu_memory');

  /// Reference to `total_inference_memory` attribute.
  TfRef<num> get totalInferenceMemory =>
      TfRef.attribute<num>(this, 'total_inference_memory');

  /// Reference to `total_instance_storage` attribute.
  TfRef<num> get totalInstanceStorage =>
      TfRef.attribute<num>(this, 'total_instance_storage');

  /// Reference to `total_media_memory` attribute.
  TfRef<num> get totalMediaMemory =>
      TfRef.attribute<num>(this, 'total_media_memory');

  /// Reference to `total_neuron_device_memory` attribute.
  TfRef<num> get totalNeuronDeviceMemory =>
      TfRef.attribute<num>(this, 'total_neuron_device_memory');

  /// Reference to `valid_cores` attribute.
  TfRef<List<num>> get validCores =>
      TfRef.attribute<List<num>>(this, 'valid_cores');

  /// Reference to `valid_threads_per_core` attribute.
  TfRef<List<num>> get validThreadsPerCore =>
      TfRef.attribute<List<num>>(this, 'valid_threads_per_core');
}
