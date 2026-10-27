// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_subscription_cost_management_export`.
const Set<String> _azurermSubscriptionCostManagementExportSensitive =
    <String>{};

/// Typed helper for the `export_data_options` block of
/// `azurerm_subscription_cost_management_export` (derived from provider schema).
@immutable
final class SubscriptionCostManagementExportDataOptions {
  const SubscriptionCostManagementExportDataOptions({
    required this.timeFrame,
    required this.type,
  });

  final TfArg<String> timeFrame;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'time_frame': timeFrame.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `export_data_storage_location` block of
/// `azurerm_subscription_cost_management_export` (derived from provider schema).
@immutable
final class SubscriptionCostManagementExportDataStorageLocation {
  const SubscriptionCostManagementExportDataStorageLocation({
    required this.containerId,
    required this.rootFolderPath,
  });

  final TfArg<String> containerId;

  final TfArg<String> rootFolderPath;

  @internal
  Map<String, Object?> encode() => {
    'container_id': containerId.toTfJson(),
    'root_folder_path': rootFolderPath.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_subscription_cost_management_export`.
final class AzurermSubscriptionCostManagementExport extends Resource {
  static const String tfType = 'azurerm_subscription_cost_management_export';

  AzurermSubscriptionCostManagementExport(
    super.localName, {
    TfArg<bool>? active,
    TfArg<String>? fileFormat,
    required TfArg<String> name,
    required TfArg<String> recurrencePeriodEndDate,
    required TfArg<String> recurrencePeriodStartDate,
    required TfArg<String> recurrenceType,
    required TfArg<String> subscriptionId,
    required SubscriptionCostManagementExportDataOptions exportDataOptions,
    required SubscriptionCostManagementExportDataStorageLocation
    exportDataStorageLocation,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'active': ?active,
           'file_format': ?fileFormat,
           'name': name,
           'recurrence_period_end_date': recurrencePeriodEndDate,
           'recurrence_period_start_date': recurrencePeriodStartDate,
           'recurrence_type': recurrenceType,
           'subscription_id': subscriptionId,
           'export_data_options': TfArg.literal(exportDataOptions.encode()),
           'export_data_storage_location': TfArg.literal(
             exportDataStorageLocation.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSubscriptionCostManagementExportSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSubscriptionCostManagementExport>`.
  RefTo<AzurermSubscriptionCostManagementExport> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active` attribute.
  TfRef<bool> get active => TfRef.attribute<bool>(this, 'active');

  /// Reference to `file_format` attribute.
  TfRef<String> get fileFormat => TfRef.attribute<String>(this, 'file_format');

  /// Reference to `recurrence_period_end_date` attribute.
  TfRef<String> get recurrencePeriodEndDate =>
      TfRef.attribute<String>(this, 'recurrence_period_end_date');

  /// Reference to `recurrence_period_start_date` attribute.
  TfRef<String> get recurrencePeriodStartDate =>
      TfRef.attribute<String>(this, 'recurrence_period_start_date');

  /// Reference to `recurrence_type` attribute.
  TfRef<String> get recurrenceType =>
      TfRef.attribute<String>(this, 'recurrence_type');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
