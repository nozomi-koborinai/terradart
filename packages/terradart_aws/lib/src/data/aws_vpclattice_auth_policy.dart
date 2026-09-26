// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
