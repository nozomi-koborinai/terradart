// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_system_center_virtual_machine_manager_virtual_machine_instance`.
const Set<String>
_azurermSystemCenterVirtualMachineManagerVirtualMachineInstanceSensitive =
    <String>{'operating_system.admin_password'};

/// Typed helper for the `hardware` block of
/// `azurerm_system_center_virtual_machine_manager_virtual_machine_instance` (derived from provider schema).
@immutable
final class SystemCenterVirtualMachineManagerVirtualMachineInstanceHardware {
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceHardware({
    this.cpuCount,
    this.dynamicMemoryMaxInMb,
    this.dynamicMemoryMinInMb,
    this.limitCpuForMigrationEnabled,
    this.memoryInMb,
  });

  final TfArg<num>? cpuCount;

  final TfArg<num>? dynamicMemoryMaxInMb;

  final TfArg<num>? dynamicMemoryMinInMb;

  final TfArg<bool>? limitCpuForMigrationEnabled;

  final TfArg<num>? memoryInMb;

  @internal
  Map<String, Object?> encode() => {
    'cpu_count': ?cpuCount?.toTfJson(),
    'dynamic_memory_max_in_mb': ?dynamicMemoryMaxInMb?.toTfJson(),
    'dynamic_memory_min_in_mb': ?dynamicMemoryMinInMb?.toTfJson(),
    'limit_cpu_for_migration_enabled': ?limitCpuForMigrationEnabled?.toTfJson(),
    'memory_in_mb': ?memoryInMb?.toTfJson(),
  };
}

/// Typed helper for the `infrastructure` block of
/// `azurerm_system_center_virtual_machine_manager_virtual_machine_instance` (derived from provider schema).
@immutable
final class SystemCenterVirtualMachineManagerVirtualMachineInstanceInfrastructure {
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceInfrastructure({
    this.checkpointType,
    this.systemCenterVirtualMachineManagerCloudId,
    this.systemCenterVirtualMachineManagerInventoryItemId,
    this.systemCenterVirtualMachineManagerTemplateId,
    this.systemCenterVirtualMachineManagerVirtualMachineServerId,
  });

  final SystemCenterVirtualMachineManagerVirtualMachineInstanceCheckpointType?
  checkpointType;

  final TfArg<String>? systemCenterVirtualMachineManagerCloudId;

  final TfArg<String>? systemCenterVirtualMachineManagerInventoryItemId;

  final TfArg<String>? systemCenterVirtualMachineManagerTemplateId;

  final TfArg<String>? systemCenterVirtualMachineManagerVirtualMachineServerId;

  @internal
  Map<String, Object?> encode() => {
    'checkpoint_type': ?checkpointType?.toTfJson(),
    'system_center_virtual_machine_manager_cloud_id':
        ?systemCenterVirtualMachineManagerCloudId?.toTfJson(),
    'system_center_virtual_machine_manager_inventory_item_id':
        ?systemCenterVirtualMachineManagerInventoryItemId?.toTfJson(),
    'system_center_virtual_machine_manager_template_id':
        ?systemCenterVirtualMachineManagerTemplateId?.toTfJson(),
    'system_center_virtual_machine_manager_virtual_machine_server_id':
        ?systemCenterVirtualMachineManagerVirtualMachineServerId?.toTfJson(),
  };
}

/// `checkpoint_type` — derived from the provider schema description.
extension type const SystemCenterVirtualMachineManagerVirtualMachineInstanceCheckpointType._(
  TfArg<String> _
) implements TfArg<String> {
  SystemCenterVirtualMachineManagerVirtualMachineInstanceCheckpointType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SystemCenterVirtualMachineManagerVirtualMachineInstanceCheckpointType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceCheckpointType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const disabled =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceCheckpointType._(
        TfArgLiteral('Disabled'),
      );
  static const production =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceCheckpointType._(
        TfArgLiteral('Production'),
      );
  static const productiononly =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceCheckpointType._(
        TfArgLiteral('ProductionOnly'),
      );
  static const standard =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceCheckpointType._(
        TfArgLiteral('Standard'),
      );

  static const List<
    SystemCenterVirtualMachineManagerVirtualMachineInstanceCheckpointType
  >
  values = [disabled, production, productiononly, standard];
}

/// Typed helper for the `network_interface` block of
/// `azurerm_system_center_virtual_machine_manager_virtual_machine_instance` (derived from provider schema).
@immutable
final class SystemCenterVirtualMachineManagerVirtualMachineInstanceNetworkInterface {
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceNetworkInterface({
    this.ipv4AddressType,
    this.ipv6AddressType,
    this.macAddressType,
    required this.name,
    this.virtualNetworkId,
  });

  final SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv4AddressType?
  ipv4AddressType;

  final SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv6AddressType?
  ipv6AddressType;

  final SystemCenterVirtualMachineManagerVirtualMachineInstanceMacAddressType?
  macAddressType;

  final TfArg<String> name;

  final TfArg<String>? virtualNetworkId;

  @internal
  Map<String, Object?> encode() => {
    'ipv4_address_type': ?ipv4AddressType?.toTfJson(),
    'ipv6_address_type': ?ipv6AddressType?.toTfJson(),
    'mac_address_type': ?macAddressType?.toTfJson(),
    'name': name.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
  };
}

/// `ipv4_address_type` — derived from the provider schema description.
extension type const SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv4AddressType._(
  TfArg<String> _
) implements TfArg<String> {
  SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv4AddressType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv4AddressType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv4AddressType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const dynamic =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv4AddressType._(
        TfArgLiteral('Dynamic'),
      );
  static const static =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv4AddressType._(
        TfArgLiteral('Static'),
      );

  static const List<
    SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv4AddressType
  >
  values = [dynamic, static];
}

/// `ipv6_address_type` — derived from the provider schema description.
extension type const SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv6AddressType._(
  TfArg<String> _
) implements TfArg<String> {
  SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv6AddressType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv6AddressType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv6AddressType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const dynamic =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv6AddressType._(
        TfArgLiteral('Dynamic'),
      );
  static const static =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv6AddressType._(
        TfArgLiteral('Static'),
      );

  static const List<
    SystemCenterVirtualMachineManagerVirtualMachineInstanceIpv6AddressType
  >
  values = [dynamic, static];
}

/// `mac_address_type` — derived from the provider schema description.
extension type const SystemCenterVirtualMachineManagerVirtualMachineInstanceMacAddressType._(
  TfArg<String> _
) implements TfArg<String> {
  SystemCenterVirtualMachineManagerVirtualMachineInstanceMacAddressType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SystemCenterVirtualMachineManagerVirtualMachineInstanceMacAddressType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceMacAddressType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const dynamic =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceMacAddressType._(
        TfArgLiteral('Dynamic'),
      );
  static const static =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceMacAddressType._(
        TfArgLiteral('Static'),
      );

  static const List<
    SystemCenterVirtualMachineManagerVirtualMachineInstanceMacAddressType
  >
  values = [dynamic, static];
}

/// Typed helper for the `operating_system` block of
/// `azurerm_system_center_virtual_machine_manager_virtual_machine_instance` (derived from provider schema).
@immutable
final class SystemCenterVirtualMachineManagerVirtualMachineInstanceOperatingSystem {
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceOperatingSystem({
    this.adminPassword,
    this.computerName,
  });

  final Sensitive<String>? adminPassword;

  final TfArg<String>? computerName;

  @internal
  Map<String, Object?> encode() => {
    'admin_password': ?adminPassword?.toTfJson(),
    'computer_name': ?computerName?.toTfJson(),
  };
}

/// Typed helper for the `storage_disk` block of
/// `azurerm_system_center_virtual_machine_manager_virtual_machine_instance` (derived from provider schema).
@immutable
final class SystemCenterVirtualMachineManagerVirtualMachineInstanceStorageDisk {
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceStorageDisk({
    this.bus,
    this.busType,
    this.diskSizeGb,
    this.lun,
    this.name,
    this.storageQosPolicyName,
    this.templateDiskId,
    this.vhdType,
  });

  final TfArg<num>? bus;

  final SystemCenterVirtualMachineManagerVirtualMachineInstanceBusType? busType;

  final TfArg<num>? diskSizeGb;

  final TfArg<num>? lun;

  final TfArg<String>? name;

  final TfArg<String>? storageQosPolicyName;

  final TfArg<String>? templateDiskId;

  final SystemCenterVirtualMachineManagerVirtualMachineInstanceVhdType? vhdType;

  @internal
  Map<String, Object?> encode() => {
    'bus': ?bus?.toTfJson(),
    'bus_type': ?busType?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'lun': ?lun?.toTfJson(),
    'name': ?name?.toTfJson(),
    'storage_qos_policy_name': ?storageQosPolicyName?.toTfJson(),
    'template_disk_id': ?templateDiskId?.toTfJson(),
    'vhd_type': ?vhdType?.toTfJson(),
  };
}

/// `bus_type` — derived from the provider schema description.
extension type const SystemCenterVirtualMachineManagerVirtualMachineInstanceBusType._(
  TfArg<String> _
) implements TfArg<String> {
  SystemCenterVirtualMachineManagerVirtualMachineInstanceBusType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SystemCenterVirtualMachineManagerVirtualMachineInstanceBusType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceBusType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const ide =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceBusType._(
        TfArgLiteral('IDE'),
      );
  static const scsi =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceBusType._(
        TfArgLiteral('SCSI'),
      );

  static const List<
    SystemCenterVirtualMachineManagerVirtualMachineInstanceBusType
  >
  values = [ide, scsi];
}

/// `vhd_type` — derived from the provider schema description.
extension type const SystemCenterVirtualMachineManagerVirtualMachineInstanceVhdType._(
  TfArg<String> _
) implements TfArg<String> {
  SystemCenterVirtualMachineManagerVirtualMachineInstanceVhdType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SystemCenterVirtualMachineManagerVirtualMachineInstanceVhdType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceVhdType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const dynamic =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceVhdType._(
        TfArgLiteral('Dynamic'),
      );
  static const fixed =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceVhdType._(
        TfArgLiteral('Fixed'),
      );

  static const List<
    SystemCenterVirtualMachineManagerVirtualMachineInstanceVhdType
  >
  values = [dynamic, fixed];
}

/// Factory wrapper for `azurerm_system_center_virtual_machine_manager_virtual_machine_instance`.
final class AzurermSystemCenterVirtualMachineManagerVirtualMachineInstance
    extends Resource {
  static const String tfType =
      'azurerm_system_center_virtual_machine_manager_virtual_machine_instance';

  AzurermSystemCenterVirtualMachineManagerVirtualMachineInstance(
    super.localName, {
    required TfArg<String> customLocationId,
    required TfArg<String> scopedResourceId,
    TfArg<List<String>>? systemCenterVirtualMachineManagerAvailabilitySetIds,
    SystemCenterVirtualMachineManagerVirtualMachineInstanceHardware? hardware,
    required SystemCenterVirtualMachineManagerVirtualMachineInstanceInfrastructure
    infrastructure,
    List<
      SystemCenterVirtualMachineManagerVirtualMachineInstanceNetworkInterface
    >?
    networkInterface,
    SystemCenterVirtualMachineManagerVirtualMachineInstanceOperatingSystem?
    operatingSystem,
    List<SystemCenterVirtualMachineManagerVirtualMachineInstanceStorageDisk>?
    storageDisk,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_location_id': customLocationId,
           'scoped_resource_id': scopedResourceId,
           'system_center_virtual_machine_manager_availability_set_ids':
               ?systemCenterVirtualMachineManagerAvailabilitySetIds,
           if (hardware != null) 'hardware': TfArg.literal(hardware.encode()),
           'infrastructure': TfArg.literal(infrastructure.encode()),
           if (networkInterface != null)
             'network_interface': TfArg.literal([
               for (final e in networkInterface) e.encode(),
             ]),
           if (operatingSystem != null)
             'operating_system': TfArg.literal(operatingSystem.encode()),
           if (storageDisk != null)
             'storage_disk': TfArg.literal([
               for (final e in storageDisk) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSystemCenterVirtualMachineManagerVirtualMachineInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSystemCenterVirtualMachineManagerVirtualMachineInstance>`.
  RefTo<AzurermSystemCenterVirtualMachineManagerVirtualMachineInstance>
  get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_location_id` attribute.
  TfRef<String> get customLocationId =>
      TfRef.attribute<String>(this, 'custom_location_id');

  /// Reference to `scoped_resource_id` attribute.
  TfRef<String> get scopedResourceId =>
      TfRef.attribute<String>(this, 'scoped_resource_id');

  /// Reference to `system_center_virtual_machine_manager_availability_set_ids` attribute.
  TfRef<List<String>> get systemCenterVirtualMachineManagerAvailabilitySetIds =>
      TfRef.attribute<List<String>>(
        this,
        'system_center_virtual_machine_manager_availability_set_ids',
      );
}
