// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../vpclattice/aws_vpclattice_resource_policy.dart';

/// Sensitive field paths for `aws_vpclattice_resource_policy`.
const Set<String> _awsVpclatticeResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_vpclattice_resource_policy`.
final class DataAwsVpclatticeResourcePolicy extends Data {
  static const String tfType = 'aws_vpclattice_resource_policy';

  DataAwsVpclatticeResourcePolicy({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'resource_arn': resourceArn},
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeResourcePolicySensitive;

  /// A reference to the `aws_vpclattice_resource_policy` this data source reads, for
  /// arguments typed `RefTo<AwsVpclatticeResourcePolicy>`.
  RefTo<AwsVpclatticeResourcePolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');
}
