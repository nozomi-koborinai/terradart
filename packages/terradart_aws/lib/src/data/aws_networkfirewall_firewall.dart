// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkfirewall_firewall`.
const Set<String> _awsNetworkfirewallFirewallSensitive = <String>{};

/// Factory wrapper for `aws_networkfirewall_firewall`.
final class DataAwsNetworkfirewallFirewall extends Data {
  static const String tfType = 'aws_networkfirewall_firewall';

  DataAwsNetworkfirewallFirewall({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkfirewallFirewallSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_zone_change_protection` attribute.
  TfRef<bool> get availabilityZoneChangeProtection =>
      TfRef.attribute<bool>(this, 'availability_zone_change_protection');

  /// Reference to `availability_zone_mapping` attribute.
  TfRef<List<Map<String, Object?>>> get availabilityZoneMapping =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'availability_zone_mapping',
      );

  /// Reference to `delete_protection` attribute.
  TfRef<bool> get deleteProtection =>
      TfRef.attribute<bool>(this, 'delete_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled_analysis_types` attribute.
  TfRef<List<String>> get enabledAnalysisTypes =>
      TfRef.attribute<List<String>>(this, 'enabled_analysis_types');

  /// Reference to `encryption_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'encryption_configuration',
      );

  /// Reference to `firewall_policy_arn` attribute.
  TfRef<String> get firewallPolicyArn =>
      TfRef.attribute<String>(this, 'firewall_policy_arn');

  /// Reference to `firewall_policy_change_protection` attribute.
  TfRef<bool> get firewallPolicyChangeProtection =>
      TfRef.attribute<bool>(this, 'firewall_policy_change_protection');

  /// Reference to `firewall_status` attribute.
  TfRef<List<Map<String, Object?>>> get firewallStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'firewall_status');

  /// Reference to `subnet_change_protection` attribute.
  TfRef<bool> get subnetChangeProtection =>
      TfRef.attribute<bool>(this, 'subnet_change_protection');

  /// Reference to `subnet_mapping` attribute.
  TfRef<List<Map<String, Object?>>> get subnetMapping =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'subnet_mapping');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `transit_gateway_owner_account_id` attribute.
  TfRef<String> get transitGatewayOwnerAccountId =>
      TfRef.attribute<String>(this, 'transit_gateway_owner_account_id');

  /// Reference to `update_token` attribute.
  TfRef<String> get updateToken =>
      TfRef.attribute<String>(this, 'update_token');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
