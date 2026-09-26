// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_network_interface_permission`.
const Set<String> _awsNetworkInterfacePermissionSensitive = <String>{};

/// Factory wrapper for `aws_network_interface_permission`.
final class AwsNetworkInterfacePermission extends Resource {
  static const String tfType = 'aws_network_interface_permission';

  AwsNetworkInterfacePermission({
    required super.localName,
    required TfArg<String> awsAccountId,
    required TfArg<String> networkInterfaceId,
    required TfArg<String> permission,
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
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkInterfacePermissionSensitive;

  /// Reference to `network_interface_permission_id` attribute.
  TfRef<String> get networkInterfacePermissionId =>
      TfRef.attribute<String>(this, 'network_interface_permission_id');
}
