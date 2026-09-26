// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedaccess_endpoint`.
const Set<String> _awsVerifiedaccessEndpointSensitive = <String>{};

/// Typed helper for the `cidr_options` block of
/// `aws_verifiedaccess_endpoint` (derived from provider schema).
@immutable
final class VerifiedaccessEndpointCidrOptions {
  const VerifiedaccessEndpointCidrOptions({
    required this.cidr,
    this.protocol,
    this.subnetIds,
    required this.portRange,
  });

  final TfArg<String> cidr;

  final TfArg<String>? protocol;

  final TfArg<List<Object?>>? subnetIds;

  final List<VerifiedaccessEndpointCidrOptionsPortRange> portRange;

  Map<String, Object?> encode() => {
    'cidr': cidr.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.toTfJson(),
    'port_range': [for (final e in portRange) e.encode()],
  };
}

/// Typed helper for the `cidr_options.port_range` block of
/// `aws_verifiedaccess_endpoint` (derived from provider schema).
@immutable
final class VerifiedaccessEndpointCidrOptionsPortRange {
  const VerifiedaccessEndpointCidrOptionsPortRange({
    required this.fromPort,
    required this.toPort,
  });

  final TfArg<num> fromPort;

  final TfArg<num> toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    'to_port': toPort.toTfJson(),
  };
}

/// Typed helper for the `load_balancer_options` block of
/// `aws_verifiedaccess_endpoint` (derived from provider schema).
@immutable
final class VerifiedaccessEndpointLoadBalancerOptions {
  const VerifiedaccessEndpointLoadBalancerOptions({
    this.loadBalancerArn,
    this.port,
    this.protocol,
    this.subnetIds,
    this.portRange,
  });

  final TfArg<String>? loadBalancerArn;

  final TfArg<num>? port;

  final TfArg<String>? protocol;

  final TfArg<List<Object?>>? subnetIds;

  final List<VerifiedaccessEndpointLoadBalancerOptionsPortRange>? portRange;

  Map<String, Object?> encode() => {
    if (loadBalancerArn != null)
      'load_balancer_arn': loadBalancerArn!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.toTfJson(),
    if (portRange != null)
      'port_range': [for (final e in portRange!) e.encode()],
  };
}

/// Typed helper for the `load_balancer_options.port_range` block of
/// `aws_verifiedaccess_endpoint` (derived from provider schema).
@immutable
final class VerifiedaccessEndpointLoadBalancerOptionsPortRange {
  const VerifiedaccessEndpointLoadBalancerOptionsPortRange({
    required this.fromPort,
    required this.toPort,
  });

  final TfArg<num> fromPort;

  final TfArg<num> toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    'to_port': toPort.toTfJson(),
  };
}

/// Typed helper for the `network_interface_options` block of
/// `aws_verifiedaccess_endpoint` (derived from provider schema).
@immutable
final class VerifiedaccessEndpointNetworkInterfaceOptions {
  const VerifiedaccessEndpointNetworkInterfaceOptions({
    this.networkInterfaceId,
    this.port,
    this.protocol,
    this.portRange,
  });

  final TfArg<String>? networkInterfaceId;

  final TfArg<num>? port;

  final TfArg<String>? protocol;

  final List<VerifiedaccessEndpointNetworkInterfaceOptionsPortRange>? portRange;

  Map<String, Object?> encode() => {
    if (networkInterfaceId != null)
      'network_interface_id': networkInterfaceId!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (portRange != null)
      'port_range': [for (final e in portRange!) e.encode()],
  };
}

/// Typed helper for the `network_interface_options.port_range` block of
/// `aws_verifiedaccess_endpoint` (derived from provider schema).
@immutable
final class VerifiedaccessEndpointNetworkInterfaceOptionsPortRange {
  const VerifiedaccessEndpointNetworkInterfaceOptionsPortRange({
    required this.fromPort,
    required this.toPort,
  });

  final TfArg<num> fromPort;

  final TfArg<num> toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    'to_port': toPort.toTfJson(),
  };
}

/// Typed helper for the `rds_options` block of
/// `aws_verifiedaccess_endpoint` (derived from provider schema).
@immutable
final class VerifiedaccessEndpointRdsOptions {
  const VerifiedaccessEndpointRdsOptions({
    this.port,
    this.protocol,
    this.rdsDbClusterArn,
    this.rdsDbInstanceArn,
    this.rdsDbProxyArn,
    this.rdsEndpoint,
    this.subnetIds,
  });

  final TfArg<num>? port;

  final TfArg<String>? protocol;

  final TfArg<String>? rdsDbClusterArn;

  final TfArg<String>? rdsDbInstanceArn;

  final TfArg<String>? rdsDbProxyArn;

  final TfArg<String>? rdsEndpoint;

  final TfArg<List<Object?>>? subnetIds;

  Map<String, Object?> encode() => {
    if (port != null) 'port': port!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (rdsDbClusterArn != null)
      'rds_db_cluster_arn': rdsDbClusterArn!.toTfJson(),
    if (rdsDbInstanceArn != null)
      'rds_db_instance_arn': rdsDbInstanceArn!.toTfJson(),
    if (rdsDbProxyArn != null) 'rds_db_proxy_arn': rdsDbProxyArn!.toTfJson(),
    if (rdsEndpoint != null) 'rds_endpoint': rdsEndpoint!.toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.toTfJson(),
  };
}

/// Typed helper for the `sse_specification` block of
/// `aws_verifiedaccess_endpoint` (derived from provider schema).
@immutable
final class VerifiedaccessEndpointSseSpecification {
  const VerifiedaccessEndpointSseSpecification({
    this.customerManagedKeyEnabled,
    this.kmsKeyArn,
  });

  final TfArg<bool>? customerManagedKeyEnabled;

  final TfArg<String>? kmsKeyArn;

  Map<String, Object?> encode() => {
    if (customerManagedKeyEnabled != null)
      'customer_managed_key_enabled': customerManagedKeyEnabled!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_verifiedaccess_endpoint`.
final class AwsVerifiedaccessEndpoint extends Resource {
  static const String tfType = 'aws_verifiedaccess_endpoint';

  AwsVerifiedaccessEndpoint({
    required super.localName,
    TfArg<String>? applicationDomain,
    required TfArg<String> attachmentType,
    TfArg<String>? description,
    TfArg<String>? domainCertificateArn,
    TfArg<String>? endpointDomainPrefix,
    required TfArg<String> endpointType,
    TfArg<String>? policyDocument,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> verifiedAccessGroupId,
    VerifiedaccessEndpointCidrOptions? cidrOptions,
    VerifiedaccessEndpointLoadBalancerOptions? loadBalancerOptions,
    VerifiedaccessEndpointNetworkInterfaceOptions? networkInterfaceOptions,
    VerifiedaccessEndpointRdsOptions? rdsOptions,
    VerifiedaccessEndpointSseSpecification? sseSpecification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applicationDomain != null)
             'application_domain': applicationDomain,
           'attachment_type': attachmentType,
           if (description != null) 'description': description,
           if (domainCertificateArn != null)
             'domain_certificate_arn': domainCertificateArn,
           if (endpointDomainPrefix != null)
             'endpoint_domain_prefix': endpointDomainPrefix,
           'endpoint_type': endpointType,
           if (policyDocument != null) 'policy_document': policyDocument,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (tags != null) 'tags': tags,
           'verified_access_group_id': verifiedAccessGroupId,
           if (cidrOptions != null)
             'cidr_options': TfArg.literal(cidrOptions.encode()),
           if (loadBalancerOptions != null)
             'load_balancer_options': TfArg.literal(
               loadBalancerOptions.encode(),
             ),
           if (networkInterfaceOptions != null)
             'network_interface_options': TfArg.literal(
               networkInterfaceOptions.encode(),
             ),
           if (rdsOptions != null)
             'rds_options': TfArg.literal(rdsOptions.encode()),
           if (sseSpecification != null)
             'sse_specification': TfArg.literal(sseSpecification.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVerifiedaccessEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `device_validation_domain` attribute.
  TfRef<String> get deviceValidationDomain =>
      TfRef.attribute<String>(this, 'device_validation_domain');

  /// Reference to `endpoint_domain` attribute.
  TfRef<String> get endpointDomain =>
      TfRef.attribute<String>(this, 'endpoint_domain');

  /// Reference to `verified_access_instance_id` attribute.
  TfRef<String> get verifiedAccessInstanceId =>
      TfRef.attribute<String>(this, 'verified_access_instance_id');
}
