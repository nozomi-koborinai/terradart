// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_failover_group`.
const Set<String> _azurermMssqlFailoverGroupSensitive = <String>{};

/// Typed helper for the `partner_server` block of
/// `azurerm_mssql_failover_group` (derived from provider schema).
@immutable
final class MssqlFailoverGroupPartnerServer {
  const MssqlFailoverGroupPartnerServer({required this.id});

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `read_write_endpoint_failover_policy` block of
/// `azurerm_mssql_failover_group` (derived from provider schema).
@immutable
final class MssqlFailoverGroupReadWriteEndpointFailoverPolicy {
  const MssqlFailoverGroupReadWriteEndpointFailoverPolicy({
    this.graceMinutes,
    required this.mode,
  });

  final TfArg<num>? graceMinutes;

  final MssqlFailoverGroupMode mode;

  @internal
  Map<String, Object?> encode() => {
    'grace_minutes': ?graceMinutes?.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const MssqlFailoverGroupMode._(TfArg<String> _)
    implements TfArg<String> {
  MssqlFailoverGroupMode.variable(String name) : this._(TfArg.variable(name));
  MssqlFailoverGroupMode.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlFailoverGroupMode.arg(TfArg<String> arg) : this._(arg);

  static const automatic = MssqlFailoverGroupMode._(TfArgLiteral('Automatic'));
  static const manual = MssqlFailoverGroupMode._(TfArgLiteral('Manual'));

  static const List<MssqlFailoverGroupMode> values = [automatic, manual];
}

/// Factory wrapper for `azurerm_mssql_failover_group`.
final class AzurermMssqlFailoverGroup extends Resource {
  static const String tfType = 'azurerm_mssql_failover_group';

  AzurermMssqlFailoverGroup(
    super.localName, {
    TfArg<List<String>>? databases,
    required TfArg<String> name,
    TfArg<bool>? readonlyEndpointFailoverPolicyEnabled,
    required TfArg<String> serverId,
    TfArg<Map<String, String>>? tags,
    required List<MssqlFailoverGroupPartnerServer> partnerServer,
    required MssqlFailoverGroupReadWriteEndpointFailoverPolicy
    readWriteEndpointFailoverPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'databases': ?databases,
           'name': name,
           'readonly_endpoint_failover_policy_enabled':
               ?readonlyEndpointFailoverPolicyEnabled,
           'server_id': serverId,
           'tags': ?tags,
           'partner_server': TfArg.literal([
             for (final e in partnerServer) e.encode(),
           ]),
           'read_write_endpoint_failover_policy': TfArg.literal(
             readWriteEndpointFailoverPolicy.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlFailoverGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlFailoverGroup>`.
  RefTo<AzurermMssqlFailoverGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `databases` attribute.
  TfRef<List<String>> get databases =>
      TfRef.attribute<List<String>>(this, 'databases');

  /// Reference to `readonly_endpoint_failover_policy_enabled` attribute.
  TfRef<bool> get readonlyEndpointFailoverPolicyEnabled =>
      TfRef.attribute<bool>(this, 'readonly_endpoint_failover_policy_enabled');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
