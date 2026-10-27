// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_maintenance_assignment_dynamic_scope`.
const Set<String> _azurermMaintenanceAssignmentDynamicScopeSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `azurerm_maintenance_assignment_dynamic_scope` (derived from provider schema).
@immutable
final class MaintenanceAssignmentDynamicScopeFilter {
  const MaintenanceAssignmentDynamicScopeFilter({
    this.locations,
    this.osTypes,
    this.resourceGroups,
    this.resourceTypes,
    this.tagFilter,
    this.tags,
  });

  final TfArg<List<String>>? locations;

  final List<MaintenanceAssignmentDynamicScopeOsTypes>? osTypes;

  final TfArg<List<String>>? resourceGroups;

  final List<MaintenanceAssignmentDynamicScopeResourceTypes>? resourceTypes;

  final MaintenanceAssignmentDynamicScopeTagFilter? tagFilter;

  final List<MaintenanceAssignmentDynamicScopeTags>? tags;

  @internal
  Map<String, Object?> encode() => {
    'locations': ?locations?.toTfJson(),
    if (osTypes != null) 'os_types': [for (final e in osTypes!) e.toTfJson()],
    'resource_groups': ?resourceGroups?.toTfJson(),
    if (resourceTypes != null)
      'resource_types': [for (final e in resourceTypes!) e.toTfJson()],
    'tag_filter': ?tagFilter?.toTfJson(),
    if (tags != null) 'tags': [for (final e in tags!) e.encode()],
  };
}

/// `os_types` — derived from the provider schema description.
extension type const MaintenanceAssignmentDynamicScopeOsTypes._(TfArg<String> _)
    implements TfArg<String> {
  MaintenanceAssignmentDynamicScopeOsTypes.variable(String name)
    : this._(TfArg.variable(name));
  MaintenanceAssignmentDynamicScopeOsTypes.expression(String template)
    : this._(TfArg.expression(template));
  const MaintenanceAssignmentDynamicScopeOsTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const linux = MaintenanceAssignmentDynamicScopeOsTypes._(
    TfArgLiteral('Linux'),
  );
  static const windows = MaintenanceAssignmentDynamicScopeOsTypes._(
    TfArgLiteral('Windows'),
  );

  static const List<MaintenanceAssignmentDynamicScopeOsTypes> values = [
    linux,
    windows,
  ];
}

/// `resource_types` — derived from the provider schema description.
extension type const MaintenanceAssignmentDynamicScopeResourceTypes._(
  TfArg<String> _
) implements TfArg<String> {
  MaintenanceAssignmentDynamicScopeResourceTypes.variable(String name)
    : this._(TfArg.variable(name));
  MaintenanceAssignmentDynamicScopeResourceTypes.expression(String template)
    : this._(TfArg.expression(template));
  const MaintenanceAssignmentDynamicScopeResourceTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const microsoftComputeVirtualmachines =
      MaintenanceAssignmentDynamicScopeResourceTypes._(
        TfArgLiteral('Microsoft.Compute/virtualMachines'),
      );
  static const microsoftHybridcomputeMachines =
      MaintenanceAssignmentDynamicScopeResourceTypes._(
        TfArgLiteral('Microsoft.HybridCompute/machines'),
      );

  static const List<MaintenanceAssignmentDynamicScopeResourceTypes> values = [
    microsoftComputeVirtualmachines,
    microsoftHybridcomputeMachines,
  ];
}

/// `tag_filter` — derived from the provider schema description.
extension type const MaintenanceAssignmentDynamicScopeTagFilter._(
  TfArg<String> _
) implements TfArg<String> {
  MaintenanceAssignmentDynamicScopeTagFilter.variable(String name)
    : this._(TfArg.variable(name));
  MaintenanceAssignmentDynamicScopeTagFilter.expression(String template)
    : this._(TfArg.expression(template));
  const MaintenanceAssignmentDynamicScopeTagFilter.arg(TfArg<String> arg)
    : this._(arg);

  static const all = MaintenanceAssignmentDynamicScopeTagFilter._(
    TfArgLiteral('All'),
  );
  static const any = MaintenanceAssignmentDynamicScopeTagFilter._(
    TfArgLiteral('Any'),
  );

  static const List<MaintenanceAssignmentDynamicScopeTagFilter> values = [
    all,
    any,
  ];
}

/// Typed helper for the `filter.tags` block of
/// `azurerm_maintenance_assignment_dynamic_scope` (derived from provider schema).
@immutable
final class MaintenanceAssignmentDynamicScopeTags {
  const MaintenanceAssignmentDynamicScopeTags({
    required this.tag,
    required this.values,
  });

  final TfArg<String> tag;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'tag': tag.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_maintenance_assignment_dynamic_scope`.
final class AzurermMaintenanceAssignmentDynamicScope extends Resource {
  static const String tfType = 'azurerm_maintenance_assignment_dynamic_scope';

  AzurermMaintenanceAssignmentDynamicScope(
    super.localName, {
    required TfArg<String> maintenanceConfigurationId,
    required TfArg<String> name,
    required MaintenanceAssignmentDynamicScopeFilter filter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'maintenance_configuration_id': maintenanceConfigurationId,
           'name': name,
           'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMaintenanceAssignmentDynamicScopeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMaintenanceAssignmentDynamicScope>`.
  RefTo<AzurermMaintenanceAssignmentDynamicScope> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `maintenance_configuration_id` attribute.
  TfRef<String> get maintenanceConfigurationId =>
      TfRef.attribute<String>(this, 'maintenance_configuration_id');
}
