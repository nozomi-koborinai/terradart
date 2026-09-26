// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? ipAddressType;

  final TfArg<String> subnetId;

  Map<String, Object?> encode() => {
    if (ipAddressType != null) 'ip_address_type': ipAddressType!.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkfirewall_vpc_endpoint_association`.
final class AwsNetworkfirewallVpcEndpointAssociation extends Resource {
  static const String tfType = 'aws_networkfirewall_vpc_endpoint_association';

  AwsNetworkfirewallVpcEndpointAssociation({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> firewallArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcId,
    List<NetworkfirewallVpcEndpointAssociationSubnetMapping>? subnetMapping,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'firewall_arn': firewallArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId,
           if (subnetMapping != null)
             'subnet_mapping': TfArg.literal([
               for (final e in subnetMapping) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkfirewallVpcEndpointAssociationSensitive;

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
}
