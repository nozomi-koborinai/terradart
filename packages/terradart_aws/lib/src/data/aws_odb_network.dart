// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_network`.
const Set<String> _awsOdbNetworkSensitive = <String>{};

/// Factory wrapper for `aws_odb_network`.
final class DataAwsOdbNetwork extends Data {
  static const String tfType = 'aws_odb_network';

  DataAwsOdbNetwork({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsOdbNetworkSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `backup_subnet_cidr` attribute.
  TfRef<String> get backupSubnetCidr =>
      TfRef.attribute<String>(this, 'backup_subnet_cidr');

  /// Reference to `client_subnet_cidr` attribute.
  TfRef<String> get clientSubnetCidr =>
      TfRef.attribute<String>(this, 'client_subnet_cidr');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `custom_domain_name` attribute.
  TfRef<String> get customDomainName =>
      TfRef.attribute<String>(this, 'custom_domain_name');

  /// Reference to `default_dns_prefix` attribute.
  TfRef<String> get defaultDnsPrefix =>
      TfRef.attribute<String>(this, 'default_dns_prefix');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `ec2_placement_group_ids` attribute.
  TfRef<List<String>> get ec2PlacementGroupIds =>
      TfRef.attribute<List<String>>(this, 'ec2_placement_group_ids');

  /// Reference to `managed_services` attribute.
  TfRef<List<Map<String, Object?>>> get managedServices =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'managed_services');

  /// Reference to `oci_dns_forwarding_configs` attribute.
  TfRef<List<Map<String, Object?>>> get ociDnsForwardingConfigs =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'oci_dns_forwarding_configs',
      );

  /// Reference to `oci_network_anchor_id` attribute.
  TfRef<String> get ociNetworkAnchorId =>
      TfRef.attribute<String>(this, 'oci_network_anchor_id');

  /// Reference to `oci_network_anchor_url` attribute.
  TfRef<String> get ociNetworkAnchorUrl =>
      TfRef.attribute<String>(this, 'oci_network_anchor_url');

  /// Reference to `oci_resource_anchor_name` attribute.
  TfRef<String> get ociResourceAnchorName =>
      TfRef.attribute<String>(this, 'oci_resource_anchor_name');

  /// Reference to `oci_vcn_id` attribute.
  TfRef<String> get ociVcnId => TfRef.attribute<String>(this, 'oci_vcn_id');

  /// Reference to `oci_vcn_url` attribute.
  TfRef<String> get ociVcnUrl => TfRef.attribute<String>(this, 'oci_vcn_url');

  /// Reference to `peered_cidrs` attribute.
  TfRef<List<String>> get peeredCidrs =>
      TfRef.attribute<List<String>>(this, 'peered_cidrs');

  /// Reference to `percent_progress` attribute.
  TfRef<num> get percentProgress =>
      TfRef.attribute<num>(this, 'percent_progress');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
