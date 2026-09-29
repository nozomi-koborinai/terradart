// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_auth_policy`.
const Set<String> _awsVpclatticeAuthPolicySensitive = <String>{};

/// Factory wrapper for `aws_vpclattice_auth_policy`.
final class AwsVpclatticeAuthPolicy extends Resource {
  static const String tfType = 'aws_vpclattice_auth_policy';

  AwsVpclatticeAuthPolicy({
    required super.localName,
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> resourceIdentifier,
    TfArg<String>? state,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy': policy,
           'region': ?region,
           'resource_identifier': resourceIdentifier,
           'state': ?state,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeAuthPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpclatticeAuthPolicy>`.
  RefTo<AwsVpclatticeAuthPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
