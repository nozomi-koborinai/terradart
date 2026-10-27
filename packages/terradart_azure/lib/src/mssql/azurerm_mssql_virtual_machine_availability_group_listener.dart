// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_virtual_machine_availability_group_listener`.
const Set<String>
_azurermMssqlVirtualMachineAvailabilityGroupListenerSensitive = <String>{};

/// Exactly one of `load_balancer_configuration`, `multi_subnet_ip_configuration` on `azurerm_mssql_virtual_machine_availability_group_listener`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.loadBalancerConfiguration(...)`.
sealed class MssqlVirtualMachineAvailabilityGroupListenerNetwork {
  const MssqlVirtualMachineAvailabilityGroupListenerNetwork();

  /// Sets `load_balancer_configuration`.
  const factory MssqlVirtualMachineAvailabilityGroupListenerNetwork.loadBalancerConfiguration(
    MssqlVirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration
    loadBalancerConfiguration,
  ) = MssqlVirtualMachineAvailabilityGroupListenerNetworkLoadBalancerConfiguration;

  /// Sets `multi_subnet_ip_configuration`.
  const factory MssqlVirtualMachineAvailabilityGroupListenerNetwork.multiSubnetIpConfiguration(
    List<MssqlVirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>
    multiSubnetIpConfiguration,
  ) = MssqlVirtualMachineAvailabilityGroupListenerNetworkMultiSubnetIpConfiguration;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MssqlVirtualMachineAvailabilityGroupListenerNetwork.loadBalancerConfiguration] choice: sets `load_balancer_configuration`.
final class MssqlVirtualMachineAvailabilityGroupListenerNetworkLoadBalancerConfiguration
    extends MssqlVirtualMachineAvailabilityGroupListenerNetwork {
  const MssqlVirtualMachineAvailabilityGroupListenerNetworkLoadBalancerConfiguration(
    this.loadBalancerConfiguration,
  );

  final MssqlVirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration
  loadBalancerConfiguration;

  @internal
  @override
  String get blockKey => 'load_balancer_configuration';

  @internal
  @override
  Map<String, Object?> encode() => {
    'load_balancer_configuration': loadBalancerConfiguration.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'load_balancer_configuration': TfArg.literal(
      loadBalancerConfiguration.encode(),
    ),
  };
}

/// The [MssqlVirtualMachineAvailabilityGroupListenerNetwork.multiSubnetIpConfiguration] choice: sets `multi_subnet_ip_configuration`.
final class MssqlVirtualMachineAvailabilityGroupListenerNetworkMultiSubnetIpConfiguration
    extends MssqlVirtualMachineAvailabilityGroupListenerNetwork {
  const MssqlVirtualMachineAvailabilityGroupListenerNetworkMultiSubnetIpConfiguration(
    this.multiSubnetIpConfiguration,
  );

  final List<
    MssqlVirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration
  >
  multiSubnetIpConfiguration;

  @internal
  @override
  String get blockKey => 'multi_subnet_ip_configuration';

  @internal
  @override
  Map<String, Object?> encode() => {
    'multi_subnet_ip_configuration': [
      for (final e in multiSubnetIpConfiguration) e.encode(),
    ],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'multi_subnet_ip_configuration': TfArg.literal([
      for (final e in multiSubnetIpConfiguration) e.encode(),
    ]),
  };
}

/// Typed helper for the `load_balancer_configuration` block of
/// `azurerm_mssql_virtual_machine_availability_group_listener` (derived from provider schema).
@immutable
final class MssqlVirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration {
  const MssqlVirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration({
    required this.loadBalancerId,
    required this.privateIpAddress,
    required this.probePort,
    required this.sqlVirtualMachineIds,
    required this.subnetId,
  });

  final TfArg<String> loadBalancerId;

  final TfArg<String> privateIpAddress;

  final TfArg<num> probePort;

  final TfArg<List<String>> sqlVirtualMachineIds;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'load_balancer_id': loadBalancerId.toTfJson(),
    'private_ip_address': privateIpAddress.toTfJson(),
    'probe_port': probePort.toTfJson(),
    'sql_virtual_machine_ids': sqlVirtualMachineIds.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Typed helper for the `multi_subnet_ip_configuration` block of
/// `azurerm_mssql_virtual_machine_availability_group_listener` (derived from provider schema).
@immutable
final class MssqlVirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration {
  const MssqlVirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration({
    required this.privateIpAddress,
    required this.sqlVirtualMachineId,
    required this.subnetId,
  });

  final TfArg<String> privateIpAddress;

  final TfArg<String> sqlVirtualMachineId;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'private_ip_address': privateIpAddress.toTfJson(),
    'sql_virtual_machine_id': sqlVirtualMachineId.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Typed helper for the `replica` block of
/// `azurerm_mssql_virtual_machine_availability_group_listener` (derived from provider schema).
@immutable
final class MssqlVirtualMachineAvailabilityGroupListenerReplica {
  const MssqlVirtualMachineAvailabilityGroupListenerReplica({
    required this.commit,
    required this.failoverMode,
    required this.readableSecondary,
    required this.role,
    required this.sqlVirtualMachineId,
  });

  final MssqlVirtualMachineAvailabilityGroupListenerCommit commit;

  final MssqlVirtualMachineAvailabilityGroupListenerFailoverMode failoverMode;

  final MssqlVirtualMachineAvailabilityGroupListenerReadableSecondary
  readableSecondary;

  final MssqlVirtualMachineAvailabilityGroupListenerRole role;

  final TfArg<String> sqlVirtualMachineId;

  @internal
  Map<String, Object?> encode() => {
    'commit': commit.toTfJson(),
    'failover_mode': failoverMode.toTfJson(),
    'readable_secondary': readableSecondary.toTfJson(),
    'role': role.toTfJson(),
    'sql_virtual_machine_id': sqlVirtualMachineId.toTfJson(),
  };
}

/// `commit` — derived from the provider schema description.
extension type const MssqlVirtualMachineAvailabilityGroupListenerCommit._(
  TfArg<String> _
) implements TfArg<String> {
  MssqlVirtualMachineAvailabilityGroupListenerCommit.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineAvailabilityGroupListenerCommit.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlVirtualMachineAvailabilityGroupListenerCommit.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const asynchronousCommit =
      MssqlVirtualMachineAvailabilityGroupListenerCommit._(
        TfArgLiteral('Asynchronous_Commit'),
      );
  static const synchronousCommit =
      MssqlVirtualMachineAvailabilityGroupListenerCommit._(
        TfArgLiteral('Synchronous_Commit'),
      );

  static const List<MssqlVirtualMachineAvailabilityGroupListenerCommit> values =
      [asynchronousCommit, synchronousCommit];
}

/// `failover_mode` — derived from the provider schema description.
extension type const MssqlVirtualMachineAvailabilityGroupListenerFailoverMode._(
  TfArg<String> _
) implements TfArg<String> {
  MssqlVirtualMachineAvailabilityGroupListenerFailoverMode.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineAvailabilityGroupListenerFailoverMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MssqlVirtualMachineAvailabilityGroupListenerFailoverMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const automatic =
      MssqlVirtualMachineAvailabilityGroupListenerFailoverMode._(
        TfArgLiteral('Automatic'),
      );
  static const manual =
      MssqlVirtualMachineAvailabilityGroupListenerFailoverMode._(
        TfArgLiteral('Manual'),
      );

  static const List<MssqlVirtualMachineAvailabilityGroupListenerFailoverMode>
  values = [automatic, manual];
}

/// `readable_secondary` — derived from the provider schema description.
extension type const MssqlVirtualMachineAvailabilityGroupListenerReadableSecondary._(
  TfArg<String> _
) implements TfArg<String> {
  MssqlVirtualMachineAvailabilityGroupListenerReadableSecondary.variable(
    String name,
  ) : this._(TfArg.variable(name));
  MssqlVirtualMachineAvailabilityGroupListenerReadableSecondary.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MssqlVirtualMachineAvailabilityGroupListenerReadableSecondary.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const all =
      MssqlVirtualMachineAvailabilityGroupListenerReadableSecondary._(
        TfArgLiteral('All'),
      );
  static const no =
      MssqlVirtualMachineAvailabilityGroupListenerReadableSecondary._(
        TfArgLiteral('No'),
      );
  static const readOnly =
      MssqlVirtualMachineAvailabilityGroupListenerReadableSecondary._(
        TfArgLiteral('Read_Only'),
      );

  static const List<
    MssqlVirtualMachineAvailabilityGroupListenerReadableSecondary
  >
  values = [all, no, readOnly];
}

/// `role` — derived from the provider schema description.
extension type const MssqlVirtualMachineAvailabilityGroupListenerRole._(
  TfArg<String> _
) implements TfArg<String> {
  MssqlVirtualMachineAvailabilityGroupListenerRole.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineAvailabilityGroupListenerRole.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlVirtualMachineAvailabilityGroupListenerRole.arg(TfArg<String> arg)
    : this._(arg);

  static const primary = MssqlVirtualMachineAvailabilityGroupListenerRole._(
    TfArgLiteral('Primary'),
  );
  static const secondary = MssqlVirtualMachineAvailabilityGroupListenerRole._(
    TfArgLiteral('Secondary'),
  );

  static const List<MssqlVirtualMachineAvailabilityGroupListenerRole> values = [
    primary,
    secondary,
  ];
}

/// Factory wrapper for `azurerm_mssql_virtual_machine_availability_group_listener`.
final class AzurermMssqlVirtualMachineAvailabilityGroupListener
    extends Resource {
  static const String tfType =
      'azurerm_mssql_virtual_machine_availability_group_listener';

  AzurermMssqlVirtualMachineAvailabilityGroupListener(
    super.localName, {
    TfArg<String>? availabilityGroupName,
    required TfArg<String> name,
    TfArg<num>? port,
    required TfArg<String> sqlVirtualMachineGroupId,
    required MssqlVirtualMachineAvailabilityGroupListenerNetwork network,
    required List<MssqlVirtualMachineAvailabilityGroupListenerReplica> replica,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_group_name': ?availabilityGroupName,
           'name': name,
           'port': ?port,
           'sql_virtual_machine_group_id': sqlVirtualMachineGroupId,
           ...network.argMap,
           'replica': TfArg.literal([for (final e in replica) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMssqlVirtualMachineAvailabilityGroupListenerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlVirtualMachineAvailabilityGroupListener>`.
  RefTo<AzurermMssqlVirtualMachineAvailabilityGroupListener> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_group_name` attribute.
  TfRef<String> get availabilityGroupName =>
      TfRef.attribute<String>(this, 'availability_group_name');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `sql_virtual_machine_group_id` attribute.
  TfRef<String> get sqlVirtualMachineGroupId =>
      TfRef.attribute<String>(this, 'sql_virtual_machine_group_id');
}
