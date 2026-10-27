// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_managed_instance_failover_group`.
const Set<String> _azurermMssqlManagedInstanceFailoverGroupSensitive =
    <String>{};

/// Mssql Managed Instance Failover Group Secondary enum for `secondary_type`.
extension type const MssqlManagedInstanceFailoverGroupSecondaryType._(
  TfArg<String> _
) implements TfArg<String> {
  MssqlManagedInstanceFailoverGroupSecondaryType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceFailoverGroupSecondaryType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceFailoverGroupSecondaryType.arg(TfArg<String> arg)
    : this._(arg);

  static const geo = MssqlManagedInstanceFailoverGroupSecondaryType._(
    TfArgLiteral('Geo'),
  );
  static const standby = MssqlManagedInstanceFailoverGroupSecondaryType._(
    TfArgLiteral('Standby'),
  );

  static const List<MssqlManagedInstanceFailoverGroupSecondaryType> values = [
    geo,
    standby,
  ];
}

/// Typed helper for the `read_write_endpoint_failover_policy` block of
/// `azurerm_mssql_managed_instance_failover_group` (derived from provider schema).
@immutable
final class MssqlManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy {
  const MssqlManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy({
    this.graceMinutes,
    required this.mode,
  });

  final TfArg<num>? graceMinutes;

  final MssqlManagedInstanceFailoverGroupMode mode;

  @internal
  Map<String, Object?> encode() => {
    'grace_minutes': ?graceMinutes?.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const MssqlManagedInstanceFailoverGroupMode._(TfArg<String> _)
    implements TfArg<String> {
  MssqlManagedInstanceFailoverGroupMode.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceFailoverGroupMode.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceFailoverGroupMode.arg(TfArg<String> arg)
    : this._(arg);

  static const automatic = MssqlManagedInstanceFailoverGroupMode._(
    TfArgLiteral('Automatic'),
  );
  static const manual = MssqlManagedInstanceFailoverGroupMode._(
    TfArgLiteral('Manual'),
  );

  static const List<MssqlManagedInstanceFailoverGroupMode> values = [
    automatic,
    manual,
  ];
}

/// Factory wrapper for `azurerm_mssql_managed_instance_failover_group`.
final class AzurermMssqlManagedInstanceFailoverGroup extends Resource {
  static const String tfType = 'azurerm_mssql_managed_instance_failover_group';

  AzurermMssqlManagedInstanceFailoverGroup(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> managedInstanceId,
    required TfArg<String> name,
    required TfArg<String> partnerManagedInstanceId,
    TfArg<bool>? readonlyEndpointFailoverPolicyEnabled,
    MssqlManagedInstanceFailoverGroupSecondaryType? secondaryType,
    required MssqlManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy
    readWriteEndpointFailoverPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'managed_instance_id': managedInstanceId,
           'name': name,
           'partner_managed_instance_id': partnerManagedInstanceId,
           'readonly_endpoint_failover_policy_enabled':
               ?readonlyEndpointFailoverPolicyEnabled,
           'secondary_type': ?secondaryType,
           'read_write_endpoint_failover_policy': TfArg.literal(
             readWriteEndpointFailoverPolicy.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMssqlManagedInstanceFailoverGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlManagedInstanceFailoverGroup>`.
  RefTo<AzurermMssqlManagedInstanceFailoverGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `partner_region` attribute.
  TfRef<List<Map<String, Object?>>> get partnerRegion =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'partner_region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_instance_id` attribute.
  TfRef<String> get managedInstanceId =>
      TfRef.attribute<String>(this, 'managed_instance_id');

  /// Reference to `partner_managed_instance_id` attribute.
  TfRef<String> get partnerManagedInstanceId =>
      TfRef.attribute<String>(this, 'partner_managed_instance_id');

  /// Reference to `readonly_endpoint_failover_policy_enabled` attribute.
  TfRef<bool> get readonlyEndpointFailoverPolicyEnabled =>
      TfRef.attribute<bool>(this, 'readonly_endpoint_failover_policy_enabled');

  /// Reference to `secondary_type` attribute.
  TfRef<String> get secondaryType =>
      TfRef.attribute<String>(this, 'secondary_type');
}
