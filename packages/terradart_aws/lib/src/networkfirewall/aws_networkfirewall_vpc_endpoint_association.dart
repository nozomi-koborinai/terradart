// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_networkfirewall_vpc_endpoint_association`.
const Set<String> _awsNetworkfirewallVpcEndpointAssociationSensitive =
    <String>{};

/// Typed helper for the `subnet_mapping` block of
/// `aws_networkfirewall_vpc_endpoint_association` (derived from provider schema).
@immutable
final class NetworkfirewallVpcEndpointAssociationSubnetMapping {
  const NetworkfirewallVpcEndpointAssociationSubnetMapping({
    this.ipAddressType,
    required this.subnetId,
  });

  final NetworkfirewallVpcEndpointAssociationIpAddressType? ipAddressType;

  final RefTo<AwsSubnet> subnetId;

  Map<String, Object?> encode() => {
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'subnet_id': subnetId.encodeAs('id').toTfJson(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
extension type const NetworkfirewallVpcEndpointAssociationIpAddressType._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkfirewallVpcEndpointAssociationIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallVpcEndpointAssociationIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallVpcEndpointAssociationIpAddressType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const dualstack = NetworkfirewallVpcEndpointAssociationIpAddressType._(
    TfArgLiteral('DUALSTACK'),
  );
  static const ipv4 = NetworkfirewallVpcEndpointAssociationIpAddressType._(
    TfArgLiteral('IPV4'),
  );
  static const ipv6 = NetworkfirewallVpcEndpointAssociationIpAddressType._(
    TfArgLiteral('IPV6'),
  );

  static const List<NetworkfirewallVpcEndpointAssociationIpAddressType> values =
      [dualstack, ipv4, ipv6];
}

/// Factory wrapper for `aws_networkfirewall_vpc_endpoint_association`.
final class AwsNetworkfirewallVpcEndpointAssociation extends Resource {
  static const String tfType = 'aws_networkfirewall_vpc_endpoint_association';

  AwsNetworkfirewallVpcEndpointAssociation(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> firewallArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required RefTo<AwsVpc> vpcId,
    List<NetworkfirewallVpcEndpointAssociationSubnetMapping>? subnetMapping,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'firewall_arn': firewallArn,
           'region': ?region,
           'tags': ?tags,
           'vpc_id': vpcId.encodeAs('id'),
           if (subnetMapping != null)
             'subnet_mapping': TfArg.literal([
               for (final e in subnetMapping) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkfirewallVpcEndpointAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkfirewallVpcEndpointAssociation>`.
  RefTo<AwsNetworkfirewallVpcEndpointAssociation> get ref => RefTo.of(this);

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `vpc_endpoint_association_arn` attribute.
  TfRef<String> get vpcEndpointAssociationArn =>
      TfRef.attribute<String>(this, 'vpc_endpoint_association_arn');

  /// Reference to `vpc_endpoint_association_id` attribute.
  TfRef<String> get vpcEndpointAssociationId =>
      TfRef.attribute<String>(this, 'vpc_endpoint_association_id');

  /// Reference to `vpc_endpoint_association_status` attribute.
  TfRef<List<Map<String, Object?>>> get vpcEndpointAssociationStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'vpc_endpoint_association_status',
      );

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `firewall_arn` attribute.
  TfRef<String> get firewallArn =>
      TfRef.attribute<String>(this, 'firewall_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
