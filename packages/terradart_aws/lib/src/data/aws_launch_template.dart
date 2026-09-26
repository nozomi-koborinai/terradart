// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_launch_template`.
const Set<String> _awsLaunchTemplateSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class DataLaunchTemplateFilter {
  const DataLaunchTemplateFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_launch_template`.
final class DataAwsLaunchTemplate extends Data {
  static const String tfType = 'aws_launch_template';

  DataAwsLaunchTemplate({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataLaunchTemplateFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLaunchTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `block_device_mappings` attribute.
  TfRef<List<Map<String, Object?>>> get blockDeviceMappings =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'block_device_mappings',
      );

  /// Reference to `capacity_reservation_specification` attribute.
  TfRef<List<Map<String, Object?>>> get capacityReservationSpecification =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'capacity_reservation_specification',
      );

  /// Reference to `cpu_options` attribute.
  TfRef<List<Map<String, Object?>>> get cpuOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cpu_options');

  /// Reference to `credit_specification` attribute.
  TfRef<List<Map<String, Object?>>> get creditSpecification =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'credit_specification');

  /// Reference to `default_version` attribute.
  TfRef<num> get defaultVersion =>
      TfRef.attribute<num>(this, 'default_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_api_stop` attribute.
  TfRef<bool> get disableApiStop =>
      TfRef.attribute<bool>(this, 'disable_api_stop');

  /// Reference to `disable_api_termination` attribute.
  TfRef<bool> get disableApiTermination =>
      TfRef.attribute<bool>(this, 'disable_api_termination');

  /// Reference to `ebs_optimized` attribute.
  TfRef<String> get ebsOptimized =>
      TfRef.attribute<String>(this, 'ebs_optimized');

  /// Reference to `enclave_options` attribute.
  TfRef<List<Map<String, Object?>>> get enclaveOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'enclave_options');

  /// Reference to `hibernation_options` attribute.
  TfRef<List<Map<String, Object?>>> get hibernationOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hibernation_options');

  /// Reference to `iam_instance_profile` attribute.
  TfRef<List<Map<String, Object?>>> get iamInstanceProfile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'iam_instance_profile');

  /// Reference to `image_id` attribute.
  TfRef<String> get imageId => TfRef.attribute<String>(this, 'image_id');

  /// Reference to `instance_initiated_shutdown_behavior` attribute.
  TfRef<String> get instanceInitiatedShutdownBehavior =>
      TfRef.attribute<String>(this, 'instance_initiated_shutdown_behavior');

  /// Reference to `instance_market_options` attribute.
  TfRef<List<Map<String, Object?>>> get instanceMarketOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'instance_market_options',
      );

  /// Reference to `instance_requirements` attribute.
  TfRef<List<Map<String, Object?>>> get instanceRequirements =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'instance_requirements',
      );

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `kernel_id` attribute.
  TfRef<String> get kernelId => TfRef.attribute<String>(this, 'kernel_id');

  /// Reference to `key_name` attribute.
  TfRef<String> get keyName => TfRef.attribute<String>(this, 'key_name');

  /// Reference to `latest_version` attribute.
  TfRef<num> get latestVersion => TfRef.attribute<num>(this, 'latest_version');

  /// Reference to `license_specification` attribute.
  TfRef<List<Map<String, Object?>>> get licenseSpecification =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'license_specification',
      );

  /// Reference to `maintenance_options` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_options');

  /// Reference to `metadata_options` attribute.
  TfRef<List<Map<String, Object?>>> get metadataOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metadata_options');

  /// Reference to `monitoring` attribute.
  TfRef<List<Map<String, Object?>>> get monitoring =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'monitoring');

  /// Reference to `network_interfaces` attribute.
  TfRef<List<Map<String, Object?>>> get networkInterfaces =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_interfaces');

  /// Reference to `network_performance_options` attribute.
  TfRef<List<Map<String, Object?>>> get networkPerformanceOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'network_performance_options',
      );

  /// Reference to `placement` attribute.
  TfRef<List<Map<String, Object?>>> get placement =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'placement');

  /// Reference to `private_dns_name_options` attribute.
  TfRef<List<Map<String, Object?>>> get privateDnsNameOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_dns_name_options',
      );

  /// Reference to `ram_disk_id` attribute.
  TfRef<String> get ramDiskId => TfRef.attribute<String>(this, 'ram_disk_id');

  /// Reference to `secondary_interfaces` attribute.
  TfRef<List<Map<String, Object?>>> get secondaryInterfaces =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secondary_interfaces');

  /// Reference to `security_group_names` attribute.
  TfRef<List<String>> get securityGroupNames =>
      TfRef.attribute<List<String>>(this, 'security_group_names');

  /// Reference to `tag_specifications` attribute.
  TfRef<List<Map<String, Object?>>> get tagSpecifications =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tag_specifications');

  /// Reference to `user_data` attribute.
  TfRef<String> get userData => TfRef.attribute<String>(this, 'user_data');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
