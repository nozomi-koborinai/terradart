// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_multicast_domain`.
const Set<String> _awsEc2TransitGatewayMulticastDomainSensitive = <String>{};

/// Ec2 Transit Gateway Multicast Domain Auto Accept Shared enum for `auto_accept_shared_associations`.
extension type const Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations.variable(
    String name,
  ) : this._(TfArg.variable(name));
  Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enable =
      Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations._(
        TfArgLiteral('enable'),
      );
  static const disable =
      Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations._(
        TfArgLiteral('disable'),
      );

  static const List<
    Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations
  >
  values = [enable, disable];
}

/// Ec2 Transit Gateway Multicast Domain Igmpv2 enum for `igmpv2_support`.
extension type const Ec2TransitGatewayMulticastDomainIgmpv2Support._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayMulticastDomainIgmpv2Support.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayMulticastDomainIgmpv2Support.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayMulticastDomainIgmpv2Support.arg(TfArg<String> arg)
    : this._(arg);

  static const enable = Ec2TransitGatewayMulticastDomainIgmpv2Support._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewayMulticastDomainIgmpv2Support._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewayMulticastDomainIgmpv2Support> values = [
    enable,
    disable,
  ];
}

/// Ec2 Transit Gateway Multicast Domain Static Sources enum for `static_sources_support`.
extension type const Ec2TransitGatewayMulticastDomainStaticSourcesSupport._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2TransitGatewayMulticastDomainStaticSourcesSupport.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayMulticastDomainStaticSourcesSupport.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const Ec2TransitGatewayMulticastDomainStaticSourcesSupport.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enable = Ec2TransitGatewayMulticastDomainStaticSourcesSupport._(
    TfArgLiteral('enable'),
  );
  static const disable = Ec2TransitGatewayMulticastDomainStaticSourcesSupport._(
    TfArgLiteral('disable'),
  );

  static const List<Ec2TransitGatewayMulticastDomainStaticSourcesSupport>
  values = [enable, disable];
}

/// Factory wrapper for `aws_ec2_transit_gateway_multicast_domain`.
final class AwsEc2TransitGatewayMulticastDomain extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_multicast_domain';

  AwsEc2TransitGatewayMulticastDomain(
    super.localName, {
    Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations?
    autoAcceptSharedAssociations,
    Ec2TransitGatewayMulticastDomainIgmpv2Support? igmpv2Support,
    TfArg<String>? region,
    Ec2TransitGatewayMulticastDomainStaticSourcesSupport? staticSourcesSupport,
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

  /// Reference to `auto_accept_shared_associations` attribute.
  TfRef<String> get autoAcceptSharedAssociations =>
      TfRef.attribute<String>(this, 'auto_accept_shared_associations');

  /// Reference to `igmpv2_support` attribute.
  TfRef<String> get igmpv2Support =>
      TfRef.attribute<String>(this, 'igmpv2_support');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `static_sources_support` attribute.
  TfRef<String> get staticSourcesSupport =>
      TfRef.attribute<String>(this, 'static_sources_support');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');
}
