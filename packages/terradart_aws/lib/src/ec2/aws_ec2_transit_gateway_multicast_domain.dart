// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_multicast_domain`.
const Set<String> _awsEc2TransitGatewayMulticastDomainSensitive = <String>{};

/// Ec2 Transit Gateway Multicast Domain Auto Accept Shared enum for `auto_accept_shared_associations`.
enum Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations
    implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Multicast Domain Igmpv2 enum for `igmpv2_support`.
enum Ec2TransitGatewayMulticastDomainIgmpv2Support implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayMulticastDomainIgmpv2Support(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Transit Gateway Multicast Domain Static Sources enum for `static_sources_support`.
enum Ec2TransitGatewayMulticastDomainStaticSourcesSupport
    implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayMulticastDomainStaticSourcesSupport(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_transit_gateway_multicast_domain`.
final class AwsEc2TransitGatewayMulticastDomain extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_multicast_domain';

  AwsEc2TransitGatewayMulticastDomain({
    required super.localName,
    TfArg<Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations>?
    autoAcceptSharedAssociations,
    TfArg<Ec2TransitGatewayMulticastDomainIgmpv2Support>? igmpv2Support,
    TfArg<String>? region,
    TfArg<Ec2TransitGatewayMulticastDomainStaticSourcesSupport>?
    staticSourcesSupport,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transitGatewayId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_accept_shared_associations': ?autoAcceptSharedAssociations,
           'igmpv2_support': ?igmpv2Support,
           'region': ?region,
           'static_sources_support': ?staticSourcesSupport,
           'tags': ?tags,
           'transit_gateway_id': transitGatewayId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayMulticastDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayMulticastDomain>`.
  RefTo<AwsEc2TransitGatewayMulticastDomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
