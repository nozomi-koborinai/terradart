// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_network`.
const Set<String> _awsOdbNetworkSensitive = <String>{};

/// Factory wrapper for `aws_odb_network`.
final class AwsOdbNetwork extends Resource {
  static const String tfType = 'aws_odb_network';

  AwsOdbNetwork({
    required super.localName,
    TfArg<String>? availabilityZone,
    required TfArg<String> availabilityZoneId,
    required TfArg<String> backupSubnetCidr,
    required TfArg<String> clientSubnetCidr,
    TfArg<List<String>>? crossRegionS3RestoreSourcesAccess,
    TfArg<String>? customDomainName,
    TfArg<String>? defaultDnsPrefix,
    TfArg<bool>? deleteAssociatedResources,
    required TfArg<String> displayName,
    TfArg<String>? kmsAccess,
    TfArg<String>? kmsPolicyDocument,
    TfArg<String>? region,
    required TfArg<String> s3Access,
    TfArg<String>? s3PolicyDocument,
    TfArg<String>? stsAccess,
    TfArg<String>? stsPolicyDocument,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> zeroEtlAccess,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           'availability_zone_id': availabilityZoneId,
           'backup_subnet_cidr': backupSubnetCidr,
           'client_subnet_cidr': clientSubnetCidr,
           if (crossRegionS3RestoreSourcesAccess != null)
             'cross_region_s3_restore_sources_access':
                 crossRegionS3RestoreSourcesAccess,
           if (customDomainName != null) 'custom_domain_name': customDomainName,
           if (defaultDnsPrefix != null) 'default_dns_prefix': defaultDnsPrefix,
           if (deleteAssociatedResources != null)
             'delete_associated_resources': deleteAssociatedResources,
           'display_name': displayName,
           if (kmsAccess != null) 'kms_access': kmsAccess,
           if (kmsPolicyDocument != null)
             'kms_policy_document': kmsPolicyDocument,
           if (region != null) 'region': region,
           's3_access': s3Access,
           if (s3PolicyDocument != null) 's3_policy_document': s3PolicyDocument,
           if (stsAccess != null) 'sts_access': stsAccess,
           if (stsPolicyDocument != null)
             'sts_policy_document': stsPolicyDocument,
           if (tags != null) 'tags': tags,
           'zero_etl_access': zeroEtlAccess,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbNetworkSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

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

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
