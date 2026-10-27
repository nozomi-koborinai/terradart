// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../netapp/azurerm_netapp_snapshot_policy.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_snapshot_policy`.
const Set<String> _azurermNetappSnapshotPolicySensitive = <String>{};

/// Factory wrapper for `azurerm_netapp_snapshot_policy`.
final class DataAzurermNetappSnapshotPolicy extends Data {
  static const String tfType = 'azurerm_netapp_snapshot_policy';

  DataAzurermNetappSnapshotPolicy(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappSnapshotPolicySensitive;

  /// A reference to the `azurerm_netapp_snapshot_policy` this data source reads, for
  /// arguments typed `RefTo<AzurermNetappSnapshotPolicy>`.
  RefTo<AzurermNetappSnapshotPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `daily_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get dailySchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'daily_schedule');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `hourly_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get hourlySchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hourly_schedule');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `monthly_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get monthlySchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'monthly_schedule');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `weekly_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get weeklySchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'weekly_schedule');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
