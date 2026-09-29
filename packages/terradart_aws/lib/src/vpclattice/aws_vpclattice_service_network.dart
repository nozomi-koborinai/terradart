// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_service_network`.
const Set<String> _awsVpclatticeServiceNetworkSensitive = <String>{};

/// Vpclattice Service Network Auth enum for `auth_type`.
enum VpclatticeServiceNetworkAuthType implements TerraformEnum {
  none('NONE'),
  awsIam('AWS_IAM');

  const VpclatticeServiceNetworkAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_vpclattice_service_network`.
final class AwsVpclatticeServiceNetwork extends Resource {
  static const String tfType = 'aws_vpclattice_service_network';

  AwsVpclatticeServiceNetwork({
    required super.localName,
    TfArg<VpclatticeServiceNetworkAuthType>? authType,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auth_type': ?authType,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeServiceNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpclatticeServiceNetwork>`.
  RefTo<AwsVpclatticeServiceNetwork> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
