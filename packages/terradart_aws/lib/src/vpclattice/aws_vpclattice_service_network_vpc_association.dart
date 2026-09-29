// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;

/// Sensitive field paths for `aws_vpclattice_service_network_vpc_association`.
const Set<String> _awsVpclatticeServiceNetworkVpcAssociationSensitive =
    <String>{};

/// Typed helper for the `dns_options` block of
/// `aws_vpclattice_service_network_vpc_association` (derived from provider schema).
@immutable
final class VpclatticeServiceNetworkVpcAssociationDnsOptions {
  const VpclatticeServiceNetworkVpcAssociationDnsOptions({
    this.privateDnsPreference,
    this.privateDnsSpecifiedDomains,
  });

  final TfArg<
    VpclatticeServiceNetworkVpcAssociationDnsOptionsPrivateDnsPreference
  >?
  privateDnsPreference;

  final TfArg<List<Object?>>? privateDnsSpecifiedDomains;

  Map<String, Object?> encode() => {
    'private_dns_preference': ?privateDnsPreference?.toTfJson(),
    'private_dns_specified_domains': ?privateDnsSpecifiedDomains?.toTfJson(),
  };
}

/// `private_dns_preference` — derived from the provider schema description.
enum VpclatticeServiceNetworkVpcAssociationDnsOptionsPrivateDnsPreference
    implements TerraformEnum {
  verifiedDomainsOnly('VERIFIED_DOMAINS_ONLY'),
  allDomains('ALL_DOMAINS'),
  verifiedDomainsAndSpecifiedDomains('VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS'),
  specifiedDomainsOnly('SPECIFIED_DOMAINS_ONLY');

  const VpclatticeServiceNetworkVpcAssociationDnsOptionsPrivateDnsPreference(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_vpclattice_service_network_vpc_association`.
final class AwsVpclatticeServiceNetworkVpcAssociation extends Resource {
  static const String tfType = 'aws_vpclattice_service_network_vpc_association';

  AwsVpclatticeServiceNetworkVpcAssociation({
    required super.localName,
    TfArg<bool>? privateDnsEnabled,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    required TfArg<String> serviceNetworkIdentifier,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcIdentifier,
    VpclatticeServiceNetworkVpcAssociationDnsOptions? dnsOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'private_dns_enabled': ?privateDnsEnabled,
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'service_network_identifier': serviceNetworkIdentifier,
           'tags': ?tags,
           'vpc_identifier': vpcIdentifier,
           if (dnsOptions != null)
             'dns_options': TfArg.literal(dnsOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpclatticeServiceNetworkVpcAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpclatticeServiceNetworkVpcAssociation>`.
  RefTo<AwsVpclatticeServiceNetworkVpcAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
