// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_verifiedaccess_endpoint`.
const Set<String> _awsVerifiedaccessEndpointSensitive = <String>{};

/// Verifiedaccess Endpoint Attachment enum for `attachment_type`.
extension type const VerifiedaccessEndpointAttachmentType._(TfArg<String> _)
    implements TfArg<String> {
  VerifiedaccessEndpointAttachmentType.variable(String name)
    : this._(TfArg.variable(name));
  VerifiedaccessEndpointAttachmentType.expression(String template)
    : this._(TfArg.expression(template));
  const VerifiedaccessEndpointAttachmentType.arg(TfArg<String> arg)
    : this._(arg);

  static const vpc = VerifiedaccessEndpointAttachmentType._(
    TfArgLiteral('vpc'),
  );

  static const List<VerifiedaccessEndpointAttachmentType> values = [vpc];
}

/// Verifiedaccess Endpoint enum for `endpoint_type`.
extension type const VerifiedaccessEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  VerifiedaccessEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  VerifiedaccessEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const VerifiedaccessEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const loadBalancer = VerifiedaccessEndpointType._(
    TfArgLiteral('load-balancer'),
  );
  static const networkInterface = VerifiedaccessEndpointType._(
    TfArgLiteral('network-interface'),
  );
  static const rds = VerifiedaccessEndpointType._(TfArgLiteral('rds'));
  static const cidr = VerifiedaccessEndpointType._(TfArgLiteral('cidr'));

  static const List<VerifiedaccessEndpointType> values = [
    loadBalancer,
    networkInterface,
    rds,
    cidr,
  ];
}

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

  final VerifiedaccessEndpointCidrOptionsProtocol? protocol;

  final TfArg<List<RefTo<AwsSubnet>>>? subnetIds;

  final List<VerifiedaccessEndpointPortRange> portRange;

  Map<String, Object?> encode() => {
    'cidr': cidr.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'subnet_ids': ?subnetIds?.encodeAs('id').toTfJson(),
    'port_range': [for (final e in portRange) e.encode()],
  };
}

/// `protocol` — derived from the provider schema description.
extension type const VerifiedaccessEndpointCidrOptionsProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  VerifiedaccessEndpointCidrOptionsProtocol.variable(String name)
    : this._(TfArg.variable(name));
  VerifiedaccessEndpointCidrOptionsProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const VerifiedaccessEndpointCidrOptionsProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const tcp = VerifiedaccessEndpointCidrOptionsProtocol._(
    TfArgLiteral('tcp'),
  );

  static const List<VerifiedaccessEndpointCidrOptionsProtocol> values = [tcp];
}

/// Typed helper for the `cidr_options.port_range` block of
/// `aws_verifiedaccess_endpoint` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class VerifiedaccessEndpointPortRange {
  const VerifiedaccessEndpointPortRange({
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

  final VerifiedaccessEndpointLoadBalancerOptionsProtocol? protocol;

  final TfArg<List<RefTo<AwsSubnet>>>? subnetIds;

  final List<VerifiedaccessEndpointPortRange>? portRange;

  Map<String, Object?> encode() => {
    'load_balancer_arn': ?loadBalancerArn?.toTfJson(),
    'port': ?port?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'subnet_ids': ?subnetIds?.encodeAs('id').toTfJson(),
    if (portRange != null)
      'port_range': [for (final e in portRange!) e.encode()],
  };
}

/// `protocol` — derived from the provider schema description.
extension type const VerifiedaccessEndpointLoadBalancerOptionsProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  VerifiedaccessEndpointLoadBalancerOptionsProtocol.variable(String name)
    : this._(TfArg.variable(name));
  VerifiedaccessEndpointLoadBalancerOptionsProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const VerifiedaccessEndpointLoadBalancerOptionsProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const http = VerifiedaccessEndpointLoadBalancerOptionsProtocol._(
    TfArgLiteral('http'),
  );
  static const https = VerifiedaccessEndpointLoadBalancerOptionsProtocol._(
    TfArgLiteral('https'),
  );
  static const tcp = VerifiedaccessEndpointLoadBalancerOptionsProtocol._(
    TfArgLiteral('tcp'),
  );

  static const List<VerifiedaccessEndpointLoadBalancerOptionsProtocol> values =
      [http, https, tcp];
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

  final VerifiedaccessEndpointLoadBalancerOptionsProtocol? protocol;

  final List<VerifiedaccessEndpointPortRange>? portRange;

  Map<String, Object?> encode() => {
    'network_interface_id': ?networkInterfaceId?.toTfJson(),
    'port': ?port?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    if (portRange != null)
      'port_range': [for (final e in portRange!) e.encode()],
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

  final VerifiedaccessEndpointCidrOptionsProtocol? protocol;

  final TfArg<String>? rdsDbClusterArn;

  final TfArg<String>? rdsDbInstanceArn;

  final TfArg<String>? rdsDbProxyArn;

  final TfArg<String>? rdsEndpoint;

  final TfArg<List<RefTo<AwsSubnet>>>? subnetIds;

  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'rds_db_cluster_arn': ?rdsDbClusterArn?.toTfJson(),
    'rds_db_instance_arn': ?rdsDbInstanceArn?.toTfJson(),
    'rds_db_proxy_arn': ?rdsDbProxyArn?.toTfJson(),
    'rds_endpoint': ?rdsEndpoint?.toTfJson(),
    'subnet_ids': ?subnetIds?.encodeAs('id').toTfJson(),
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

  final RefTo<AwsKmsKey>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'customer_managed_key_enabled': ?customerManagedKeyEnabled?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_verifiedaccess_endpoint`.
final class AwsVerifiedaccessEndpoint extends Resource {
  static const String tfType = 'aws_verifiedaccess_endpoint';

  AwsVerifiedaccessEndpoint(
    super.localName, {
    TfArg<String>? applicationDomain,
    required VerifiedaccessEndpointAttachmentType attachmentType,
    TfArg<String>? description,
    TfArg<String>? domainCertificateArn,
    TfArg<String>? endpointDomainPrefix,
    required VerifiedaccessEndpointType endpointType,
    TfArg<String>? policyDocument,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
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
           'application_domain': ?applicationDomain,
           'attachment_type': attachmentType,
           'description': ?description,
           'domain_certificate_arn': ?domainCertificateArn,
           'endpoint_domain_prefix': ?endpointDomainPrefix,
           'endpoint_type': endpointType,
           'policy_document': ?policyDocument,
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVerifiedaccessEndpoint>`.
  RefTo<AwsVerifiedaccessEndpoint> get ref => RefTo.of(this);

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

  /// Reference to `application_domain` attribute.
  TfRef<String> get applicationDomain =>
      TfRef.attribute<String>(this, 'application_domain');

  /// Reference to `attachment_type` attribute.
  TfRef<String> get attachmentType =>
      TfRef.attribute<String>(this, 'attachment_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `domain_certificate_arn` attribute.
  TfRef<String> get domainCertificateArn =>
      TfRef.attribute<String>(this, 'domain_certificate_arn');

  /// Reference to `endpoint_domain_prefix` attribute.
  TfRef<String> get endpointDomainPrefix =>
      TfRef.attribute<String>(this, 'endpoint_domain_prefix');

  /// Reference to `endpoint_type` attribute.
  TfRef<String> get endpointType =>
      TfRef.attribute<String>(this, 'endpoint_type');

  /// Reference to `policy_document` attribute.
  TfRef<String> get policyDocument =>
      TfRef.attribute<String>(this, 'policy_document');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `verified_access_group_id` attribute.
  TfRef<String> get verifiedAccessGroupId =>
      TfRef.attribute<String>(this, 'verified_access_group_id');
}
