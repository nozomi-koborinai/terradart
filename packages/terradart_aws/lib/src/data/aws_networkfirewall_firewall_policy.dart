// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkfirewall_firewall_policy`.
const Set<String> _awsNetworkfirewallFirewallPolicySensitive = <String>{};

/// Factory wrapper for `aws_networkfirewall_firewall_policy`.
final class DataAwsNetworkfirewallFirewallPolicy extends Data {
  static const String tfType = 'aws_networkfirewall_firewall_policy';

  DataAwsNetworkfirewallFirewallPolicy({
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
  Set<String> get sensitiveFields => _awsNetworkfirewallFirewallPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `firewall_policy` attribute.
  TfRef<List<Map<String, Object?>>> get firewallPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'firewall_policy');

  /// Reference to `update_token` attribute.
  TfRef<String> get updateToken =>
      TfRef.attribute<String>(this, 'update_token');
}
