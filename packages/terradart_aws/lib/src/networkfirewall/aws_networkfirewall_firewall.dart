// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkfirewall_firewall`.
const Set<String> _awsNetworkfirewallFirewallSensitive = <String>{};

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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (keyId != null) 'key_id': keyId!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `subnet_mapping` block of
/// `aws_networkfirewall_firewall` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallSubnetMapping {
  const NetworkfirewallFirewallSubnetMapping({
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

/// Factory wrapper for `aws_networkfirewall_firewall`.
final class AwsNetworkfirewallFirewall extends Resource {
  static const String tfType = 'aws_networkfirewall_firewall';

  AwsNetworkfirewallFirewall({
    required super.localName,
    TfArg<bool>? availabilityZoneChangeProtection,
    TfArg<bool>? deleteProtection,
    TfArg<String>? description,
    TfArg<List<String>>? enabledAnalysisTypes,
    required TfArg<String> firewallPolicyArn,
    TfArg<bool>? firewallPolicyChangeProtection,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? subnetChangeProtection,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transitGatewayId,
    TfArg<String>? vpcId,
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
             'enabled_analysis_types': enabledAnalysisTypes,
           'firewall_policy_arn': firewallPolicyArn,
           if (firewallPolicyChangeProtection != null)
             'firewall_policy_change_protection':
                 firewallPolicyChangeProtection,
           'name': name,
           if (region != null) 'region': region,
           if (subnetChangeProtection != null)
             'subnet_change_protection': subnetChangeProtection,
           if (tags != null) 'tags': tags,
           if (transitGatewayId != null) 'transit_gateway_id': transitGatewayId,
           if (vpcId != null) 'vpc_id': vpcId,
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
