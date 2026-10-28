// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../portal/azurerm_portal_dashboard.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_portal_dashboard`.
const Set<String> _azurermPortalDashboardSensitive = <String>{};

/// Exactly one of `display_name`, `name` on `data.azurerm_portal_dashboard`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.displayName(...)`.
sealed class DataPortalDashboardIdentifier {
  const DataPortalDashboardIdentifier();

  /// Sets `display_name`.
  const factory DataPortalDashboardIdentifier.displayName(
    TfArg<String> displayName,
  ) = DataPortalDashboardIdentifierDisplayName;

  /// Sets `name`.
  const factory DataPortalDashboardIdentifier.name(TfArg<String> name) =
      DataPortalDashboardIdentifierName;

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

/// The [DataPortalDashboardIdentifier.displayName] choice: sets `display_name`.
final class DataPortalDashboardIdentifierDisplayName
    extends DataPortalDashboardIdentifier {
  const DataPortalDashboardIdentifierDisplayName(this.displayName);

  final TfArg<String> displayName;

  @internal
  @override
  String get blockKey => 'display_name';

  @internal
  @override
  Map<String, Object?> encode() => {'display_name': displayName.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'display_name': displayName};
}

/// The [DataPortalDashboardIdentifier.name] choice: sets `name`.
final class DataPortalDashboardIdentifierName
    extends DataPortalDashboardIdentifier {
  const DataPortalDashboardIdentifierName(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// Factory wrapper for `azurerm_portal_dashboard`.
final class DataAzurermPortalDashboard extends Data {
  static const String tfType = 'azurerm_portal_dashboard';

  DataAzurermPortalDashboard(
    super.localName, {
    TfArg<String>? dashboardProperties,
    required DataPortalDashboardIdentifier identifier,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dashboard_properties': ?dashboardProperties,
           ...identifier.argMap,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPortalDashboardSensitive;

  /// A reference to the `azurerm_portal_dashboard` this data source reads, for
  /// arguments typed `RefTo<AzurermPortalDashboard>`.
  RefTo<AzurermPortalDashboard> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `dashboard_properties` attribute.
  TfRef<String> get dashboardProperties =>
      TfRef.attribute<String>(this, 'dashboard_properties');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
