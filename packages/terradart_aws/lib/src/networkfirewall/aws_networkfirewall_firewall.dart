// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkfirewall_firewall`.
const Set<String> _awsNetworkfirewallFirewallSensitive = <String>{};

/// Networkfirewall Firewall Enabled Analysis enum for `enabled_analysis_types`.
enum NetworkfirewallFirewallEnabledAnalysisTypes implements TerraformEnum {
  tlsSni('TLS_SNI'),
  httpHost('HTTP_HOST');

  const NetworkfirewallFirewallEnabledAnalysisTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `transit_gateway_id`, `vpc_id` on `aws_networkfirewall_firewall`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.transitGatewayId(...)`.
sealed class NetworkfirewallFirewallTransitGatewayIdOrVpcId {
  const NetworkfirewallFirewallTransitGatewayIdOrVpcId();

  /// Sets `transit_gateway_id`.
  const factory NetworkfirewallFirewallTransitGatewayIdOrVpcId.transitGatewayId(
    TfArg<String> transitGatewayId,
  ) = NetworkfirewallFirewallTransitGatewayIdOrVpcIdTransitGatewayId;

  /// Sets `vpc_id`.
  const factory NetworkfirewallFirewallTransitGatewayIdOrVpcId.vpcId(
    TfArg<String> vpcId,
  ) = NetworkfirewallFirewallTransitGatewayIdOrVpcIdVpcId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkfirewallFirewallTransitGatewayIdOrVpcId.transitGatewayId] choice: sets `transit_gateway_id`.
final class NetworkfirewallFirewallTransitGatewayIdOrVpcIdTransitGatewayId
    extends NetworkfirewallFirewallTransitGatewayIdOrVpcId {
  const NetworkfirewallFirewallTransitGatewayIdOrVpcIdTransitGatewayId(
    this.transitGatewayId,
  );

  final TfArg<String> transitGatewayId;

  @override
  String get blockKey => 'transit_gateway_id';

  @override
  Map<String, Object?> encode() => {
    'transit_gateway_id': transitGatewayId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'transit_gateway_id': transitGatewayId,
  };
}

/// The [NetworkfirewallFirewallTransitGatewayIdOrVpcId.vpcId] choice: sets `vpc_id`.
final class NetworkfirewallFirewallTransitGatewayIdOrVpcIdVpcId
    extends NetworkfirewallFirewallTransitGatewayIdOrVpcId {
  const NetworkfirewallFirewallTransitGatewayIdOrVpcIdVpcId(this.vpcId);

  final TfArg<String> vpcId;

  @override
  String get blockKey => 'vpc_id';

  @override
  Map<String, Object?> encode() => {'vpc_id': vpcId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'vpc_id': vpcId};
}

/// Typed helper for the `availability_zone_mapping` block of
/// `aws_networkfirewall_firewall` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallAvailabilityZoneMapping {
  const NetworkfirewallFirewallAvailabilityZoneMapping({
    required this.availabilityZoneId,
  });

  final TfArg<String> availabilityZoneId;

  Map<String, Object?> encode() => {
    'availability_zone_id': availabilityZoneId.toTfJson(),
  };
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_networkfirewall_firewall` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallEncryptionConfiguration {
  const NetworkfirewallFirewallEncryptionConfiguration({
    this.keyId,
    required this.type,
  });

  final TfArg<String>? keyId;

  final TfArg<NetworkfirewallFirewallEncryptionConfigurationType> type;

  Map<String, Object?> encode() => {
    if (keyId != null) 'key_id': keyId!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum NetworkfirewallFirewallEncryptionConfigurationType
    implements TerraformEnum {
  customerKms('CUSTOMER_KMS'),
  awsOwnedKmsKey('AWS_OWNED_KMS_KEY');

  const NetworkfirewallFirewallEncryptionConfigurationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `subnet_mapping` block of
/// `aws_networkfirewall_firewall` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallSubnetMapping {
  const NetworkfirewallFirewallSubnetMapping({
    this.ipAddressType,
    required this.subnetId,
  });

  final TfArg<NetworkfirewallFirewallSubnetMappingIpAddressType>? ipAddressType;

  final TfArg<String> subnetId;

  Map<String, Object?> encode() => {
    if (ipAddressType != null) 'ip_address_type': ipAddressType!.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
enum NetworkfirewallFirewallSubnetMappingIpAddressType
    implements TerraformEnum {
  dualstack('DUALSTACK'),
  ipv4('IPV4'),
  ipv6('IPV6');

  const NetworkfirewallFirewallSubnetMappingIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_networkfirewall_firewall`.
final class AwsNetworkfirewallFirewall extends Resource {
  static const String tfType = 'aws_networkfirewall_firewall';

  AwsNetworkfirewallFirewall({
    required super.localName,
    TfArg<bool>? availabilityZoneChangeProtection,
    TfArg<bool>? deleteProtection,
    TfArg<String>? description,
    List<TfArg<NetworkfirewallFirewallEnabledAnalysisTypes>>?
    enabledAnalysisTypes,
    required TfArg<String> firewallPolicyArn,
    TfArg<bool>? firewallPolicyChangeProtection,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? subnetChangeProtection,
    TfArg<Map<String, String>>? tags,
    required NetworkfirewallFirewallTransitGatewayIdOrVpcId
    transitGatewayIdOrVpcId,
    List<NetworkfirewallFirewallAvailabilityZoneMapping>?
    availabilityZoneMapping,
    NetworkfirewallFirewallEncryptionConfiguration? encryptionConfiguration,
    List<NetworkfirewallFirewallSubnetMapping>? subnetMapping,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZoneChangeProtection != null)
             'availability_zone_change_protection':
                 availabilityZoneChangeProtection,
           if (deleteProtection != null) 'delete_protection': deleteProtection,
           if (description != null) 'description': description,
           if (enabledAnalysisTypes != null)
             'enabled_analysis_types': TfArg.literal([
               for (final e in enabledAnalysisTypes) e.toTfJson(),
             ]),
           'firewall_policy_arn': firewallPolicyArn,
           if (firewallPolicyChangeProtection != null)
             'firewall_policy_change_protection':
                 firewallPolicyChangeProtection,
           'name': name,
           if (region != null) 'region': region,
           if (subnetChangeProtection != null)
             'subnet_change_protection': subnetChangeProtection,
           if (tags != null) 'tags': tags,
           ...transitGatewayIdOrVpcId.argMap,
           if (availabilityZoneMapping != null)
             'availability_zone_mapping': TfArg.literal([
               for (final e in availabilityZoneMapping) e.encode(),
             ]),
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
           if (subnetMapping != null)
             'subnet_mapping': TfArg.literal([
               for (final e in subnetMapping) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkfirewallFirewallSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkfirewallFirewall>`.
  RefTo<AwsNetworkfirewallFirewall> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `firewall_status` attribute.
  TfRef<List<Map<String, Object?>>> get firewallStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'firewall_status');

  /// Reference to `transit_gateway_owner_account_id` attribute.
  TfRef<String> get transitGatewayOwnerAccountId =>
      TfRef.attribute<String>(this, 'transit_gateway_owner_account_id');

  /// Reference to `update_token` attribute.
  TfRef<String> get updateToken =>
      TfRef.attribute<String>(this, 'update_token');
}
