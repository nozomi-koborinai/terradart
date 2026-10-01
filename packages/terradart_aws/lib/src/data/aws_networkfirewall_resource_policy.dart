// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../networkfirewall/aws_networkfirewall_resource_policy.dart';

/// Sensitive field paths for `aws_networkfirewall_resource_policy`.
const Set<String> _awsNetworkfirewallResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_networkfirewall_resource_policy`.
final class DataAwsNetworkfirewallResourcePolicy extends Data {
  static const String tfType = 'aws_networkfirewall_resource_policy';

  DataAwsNetworkfirewallResourcePolicy(
    super.localName, {
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'resource_arn': resourceArn},
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkfirewallResourcePolicySensitive;

  /// A reference to the `aws_networkfirewall_resource_policy` this data source reads, for
  /// arguments typed `RefTo<AwsNetworkfirewallResourcePolicy>`.
  RefTo<AwsNetworkfirewallResourcePolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
