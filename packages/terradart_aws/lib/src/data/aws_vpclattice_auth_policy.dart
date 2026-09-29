// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../vpclattice/aws_vpclattice_auth_policy.dart';

/// Sensitive field paths for `aws_vpclattice_auth_policy`.
const Set<String> _awsVpclatticeAuthPolicySensitive = <String>{};

/// Factory wrapper for `aws_vpclattice_auth_policy`.
final class DataAwsVpclatticeAuthPolicy extends Data {
  static const String tfType = 'aws_vpclattice_auth_policy';

  DataAwsVpclatticeAuthPolicy({
    required super.localName,
    TfArg<String>? policy,
    TfArg<String>? region,
    required TfArg<String> resourceIdentifier,
    TfArg<String>? state,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (policy != null) 'policy': policy,
           if (region != null) 'region': region,
           'resource_identifier': resourceIdentifier,
           if (state != null) 'state': state,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeAuthPolicySensitive;

  /// A reference to the `aws_vpclattice_auth_policy` this data source reads, for
  /// arguments typed `RefTo<AwsVpclatticeAuthPolicy>`.
  RefTo<AwsVpclatticeAuthPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
