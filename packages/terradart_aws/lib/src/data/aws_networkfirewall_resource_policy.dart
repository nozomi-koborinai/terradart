// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkfirewall_resource_policy`.
const Set<String> _awsNetworkfirewallResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_networkfirewall_resource_policy`.
final class DataAwsNetworkfirewallResourcePolicy extends Data {
  static const String tfType = 'aws_networkfirewall_resource_policy';

  DataAwsNetworkfirewallResourcePolicy({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkfirewallResourcePolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');
}
