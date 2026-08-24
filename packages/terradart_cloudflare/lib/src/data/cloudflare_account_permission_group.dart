// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_permission_group`.
const Set<String> _cloudflareAccountPermissionGroupSensitive = <String>{};

/// Factory wrapper for `cloudflare_account_permission_group`.
///
/// Accepted Permissions
///
/// - `Account Firewall Access Rules Read` - `Account Firewall Access Rules
/// Write` - `Account Settings Read` - `Account Settings Write` - `Billing Read`
/// - `Billing Write` - `DDoS Botnet Feed Read` - `DDoS Botnet Feed Write` -
/// `DDoS Protection Read` - `DDoS Protection Write` - `DNS Firewall Read` -
/// `DNS Firewall Write` - `DNS View Read` - `DNS View Write` - `Load Balancers
/// Account Read` - `Load Balancers Account Write` - `Load Balancing: Monitors
/// and Pools Read` - `Load Balancing: Monitors and Pools Write` - `SCIM
/// Provisioning` - `Trust and Safety Read` - `Trust and Safety Write` -
/// `Workers KV Storage Read` - `Workers KV Storage Write` - `Workers R2 Storage
/// Read` - `Workers R2 Storage Write` - `Workers Scripts Read` - `Workers
/// Scripts Write` - `Workers Tail Read` - `Zero Trust: PII Read`
final class DataCloudflareAccountPermissionGroup extends Data {
  static const String tfType = 'cloudflare_account_permission_group';

  DataCloudflareAccountPermissionGroup({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> permissionGroupId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'permission_group_id': permissionGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountPermissionGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
