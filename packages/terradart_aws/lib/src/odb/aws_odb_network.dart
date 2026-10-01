// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_network`.
const Set<String> _awsOdbNetworkSensitive = <String>{};

/// Odb Network Kms enum for `kms_access`.
extension type const OdbNetworkKmsAccess._(TfArg<String> _)
    implements TfArg<String> {
  OdbNetworkKmsAccess.variable(String name) : this._(TfArg.variable(name));
  OdbNetworkKmsAccess.expression(String template)
    : this._(TfArg.expression(template));
  const OdbNetworkKmsAccess.arg(TfArg<String> arg) : this._(arg);

  static const enabled = OdbNetworkKmsAccess._(TfArgLiteral('ENABLED'));
  static const disabled = OdbNetworkKmsAccess._(TfArgLiteral('DISABLED'));

  static const List<OdbNetworkKmsAccess> values = [enabled, disabled];
}

/// Odb Network S3 enum for `s3_access`.
extension type const OdbNetworkS3Access._(TfArg<String> _)
    implements TfArg<String> {
  OdbNetworkS3Access.variable(String name) : this._(TfArg.variable(name));
  OdbNetworkS3Access.expression(String template)
    : this._(TfArg.expression(template));
  const OdbNetworkS3Access.arg(TfArg<String> arg) : this._(arg);

  static const enabled = OdbNetworkS3Access._(TfArgLiteral('ENABLED'));
  static const disabled = OdbNetworkS3Access._(TfArgLiteral('DISABLED'));

  static const List<OdbNetworkS3Access> values = [enabled, disabled];
}

/// Odb Network Sts enum for `sts_access`.
extension type const OdbNetworkStsAccess._(TfArg<String> _)
    implements TfArg<String> {
  OdbNetworkStsAccess.variable(String name) : this._(TfArg.variable(name));
  OdbNetworkStsAccess.expression(String template)
    : this._(TfArg.expression(template));
  const OdbNetworkStsAccess.arg(TfArg<String> arg) : this._(arg);

  static const enabled = OdbNetworkStsAccess._(TfArgLiteral('ENABLED'));
  static const disabled = OdbNetworkStsAccess._(TfArgLiteral('DISABLED'));

  static const List<OdbNetworkStsAccess> values = [enabled, disabled];
}

/// Odb Network Zero Etl enum for `zero_etl_access`.
extension type const OdbNetworkZeroEtlAccess._(TfArg<String> _)
    implements TfArg<String> {
  OdbNetworkZeroEtlAccess.variable(String name) : this._(TfArg.variable(name));
  OdbNetworkZeroEtlAccess.expression(String template)
    : this._(TfArg.expression(template));
  const OdbNetworkZeroEtlAccess.arg(TfArg<String> arg) : this._(arg);

  static const enabled = OdbNetworkZeroEtlAccess._(TfArgLiteral('ENABLED'));
  static const disabled = OdbNetworkZeroEtlAccess._(TfArgLiteral('DISABLED'));

  static const List<OdbNetworkZeroEtlAccess> values = [enabled, disabled];
}

/// Factory wrapper for `aws_odb_network`.
final class AwsOdbNetwork extends Resource {
  static const String tfType = 'aws_odb_network';

  AwsOdbNetwork(
    super.localName, {
    TfArg<String>? availabilityZone,
    required TfArg<String> availabilityZoneId,
    required TfArg<String> backupSubnetCidr,
    required TfArg<String> clientSubnetCidr,
    TfArg<List<String>>? crossRegionS3RestoreSourcesAccess,
    TfArg<String>? customDomainName,
    TfArg<String>? defaultDnsPrefix,
    TfArg<bool>? deleteAssociatedResources,
    required TfArg<String> displayName,
    OdbNetworkKmsAccess? kmsAccess,
    TfArg<String>? kmsPolicyDocument,
    TfArg<String>? region,
    required OdbNetworkS3Access s3Access,
    TfArg<String>? s3PolicyDocument,
    OdbNetworkStsAccess? stsAccess,
    TfArg<String>? stsPolicyDocument,
    TfArg<Map<String, String>>? tags,
    required OdbNetworkZeroEtlAccess zeroEtlAccess,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone': ?availabilityZone,
           'availability_zone_id': availabilityZoneId,
           'backup_subnet_cidr': backupSubnetCidr,
           'client_subnet_cidr': clientSubnetCidr,
           'cross_region_s3_restore_sources_access':
               ?crossRegionS3RestoreSourcesAccess,
           'custom_domain_name': ?customDomainName,
           'default_dns_prefix': ?defaultDnsPrefix,
           'delete_associated_resources': ?deleteAssociatedResources,
           'display_name': displayName,
           'kms_access': ?kmsAccess,
           'kms_policy_document': ?kmsPolicyDocument,
           'region': ?region,
           's3_access': s3Access,
           's3_policy_document': ?s3PolicyDocument,
           'sts_access': ?stsAccess,
           'sts_policy_document': ?stsPolicyDocument,
           'tags': ?tags,
           'zero_etl_access': zeroEtlAccess,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOdbNetwork>`.
  RefTo<AwsOdbNetwork> get ref => RefTo.of(this);

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

  /// Reference to `cross_region_s3_restore_sources_access` attribute.
  TfRef<List<String>> get crossRegionS3RestoreSourcesAccess =>
      TfRef.attribute<List<String>>(
        this,
        'cross_region_s3_restore_sources_access',
      );

  /// Reference to `custom_domain_name` attribute.
  TfRef<String> get customDomainName =>
      TfRef.attribute<String>(this, 'custom_domain_name');

  /// Reference to `default_dns_prefix` attribute.
  TfRef<String> get defaultDnsPrefix =>
      TfRef.attribute<String>(this, 'default_dns_prefix');

  /// Reference to `delete_associated_resources` attribute.
  TfRef<bool> get deleteAssociatedResources =>
      TfRef.attribute<bool>(this, 'delete_associated_resources');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `kms_access` attribute.
  TfRef<String> get kmsAccess => TfRef.attribute<String>(this, 'kms_access');

  /// Reference to `kms_policy_document` attribute.
  TfRef<String> get kmsPolicyDocument =>
      TfRef.attribute<String>(this, 'kms_policy_document');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `s3_access` attribute.
  TfRef<String> get s3Access => TfRef.attribute<String>(this, 's3_access');

  /// Reference to `s3_policy_document` attribute.
  TfRef<String> get s3PolicyDocument =>
      TfRef.attribute<String>(this, 's3_policy_document');

  /// Reference to `sts_access` attribute.
  TfRef<String> get stsAccess => TfRef.attribute<String>(this, 'sts_access');

  /// Reference to `sts_policy_document` attribute.
  TfRef<String> get stsPolicyDocument =>
      TfRef.attribute<String>(this, 'sts_policy_document');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zero_etl_access` attribute.
  TfRef<String> get zeroEtlAccess =>
      TfRef.attribute<String>(this, 'zero_etl_access');
}
