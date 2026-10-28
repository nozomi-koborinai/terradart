// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../management/azurerm_management_group.dart';

/// Sensitive field paths for `azurerm_management_group`.
const Set<String> _azurermManagementGroupSensitive = <String>{};

/// Exactly one of `display_name`, `name` on `data.azurerm_management_group`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.displayName(...)`.
sealed class DataManagementGroupIdentifier {
  const DataManagementGroupIdentifier();

  /// Sets `display_name`.
  const factory DataManagementGroupIdentifier.displayName(
    TfArg<String> displayName,
  ) = DataManagementGroupIdentifierDisplayName;

  /// Sets `name`.
  const factory DataManagementGroupIdentifier.name(TfArg<String> name) =
      DataManagementGroupIdentifierName;

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

/// The [DataManagementGroupIdentifier.displayName] choice: sets `display_name`.
final class DataManagementGroupIdentifierDisplayName
    extends DataManagementGroupIdentifier {
  const DataManagementGroupIdentifierDisplayName(this.displayName);

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

/// The [DataManagementGroupIdentifier.name] choice: sets `name`.
final class DataManagementGroupIdentifierName
    extends DataManagementGroupIdentifier {
  const DataManagementGroupIdentifierName(this.name);

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

/// Factory wrapper for `azurerm_management_group`.
final class DataAzurermManagementGroup extends Data {
  static const String tfType = 'azurerm_management_group';

  DataAzurermManagementGroup(
    super.localName, {
    required DataManagementGroupIdentifier identifier,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {...identifier.argMap});

  @override
  Set<String> get sensitiveFields => _azurermManagementGroupSensitive;

  /// A reference to the `azurerm_management_group` this data source reads, for
  /// arguments typed `RefTo<AzurermManagementGroup>`.
  RefTo<AzurermManagementGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `all_management_group_ids` attribute.
  TfRef<List<String>> get allManagementGroupIds =>
      TfRef.attribute<List<String>>(this, 'all_management_group_ids');

  /// Reference to `all_subscription_ids` attribute.
  TfRef<List<String>> get allSubscriptionIds =>
      TfRef.attribute<List<String>>(this, 'all_subscription_ids');

  /// Reference to `management_group_ids` attribute.
  TfRef<List<String>> get managementGroupIds =>
      TfRef.attribute<List<String>>(this, 'management_group_ids');

  /// Reference to `parent_management_group_id` attribute.
  TfRef<String> get parentManagementGroupId =>
      TfRef.attribute<String>(this, 'parent_management_group_id');

  /// Reference to `subscription_ids` attribute.
  TfRef<List<String>> get subscriptionIds =>
      TfRef.attribute<List<String>>(this, 'subscription_ids');

  /// Reference to `tenant_scoped_id` attribute.
  TfRef<String> get tenantScopedId =>
      TfRef.attribute<String>(this, 'tenant_scoped_id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');
}
