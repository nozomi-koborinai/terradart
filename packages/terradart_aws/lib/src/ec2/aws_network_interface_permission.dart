// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_network_interface_permission`.
const Set<String> _awsNetworkInterfacePermissionSensitive = <String>{};

/// Network Interface enum for `permission`.
enum NetworkInterfacePermission implements TerraformEnum {
  instanceAttach('INSTANCE-ATTACH'),
  eipAssociate('EIP-ASSOCIATE');

  const NetworkInterfacePermission(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_network_interface_permission`.
final class AwsNetworkInterfacePermission extends Resource {
  static const String tfType = 'aws_network_interface_permission';

  AwsNetworkInterfacePermission(
    super.localName, {
    required TfArg<String> awsAccountId,
    required TfArg<String> networkInterfaceId,
    required TfArg<NetworkInterfacePermission> permission,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': awsAccountId,
           'network_interface_id': networkInterfaceId,
           'permission': permission,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkInterfacePermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkInterfacePermission>`.
  RefTo<AwsNetworkInterfacePermission> get ref => RefTo.of(this);

  /// Reference to `network_interface_permission_id` attribute.
  TfRef<String> get networkInterfacePermissionId =>
      TfRef.attribute<String>(this, 'network_interface_permission_id');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `permission` attribute.
  TfRef<String> get permission => TfRef.attribute<String>(this, 'permission');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
