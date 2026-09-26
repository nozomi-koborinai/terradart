// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_custom_permissions`.
const Set<String> _awsQuicksightCustomPermissionsSensitive = <String>{};

/// Typed helper for the `capabilities` block of
/// `aws_quicksight_custom_permissions` (derived from provider schema).
@immutable
final class QuicksightCustomPermissionsCapabilities {
  const QuicksightCustomPermissionsCapabilities({
    this.addOrRunAnomalyDetectionForAnalyses,
    this.createAndUpdateDashboardEmailReports,
    this.createAndUpdateDataSources,
    this.createAndUpdateDatasets,
    this.createAndUpdateThemes,
    this.createAndUpdateThresholdAlerts,
    this.createSharedFolders,
    this.createSpiceDataset,
    this.exportToCsv,
    this.exportToCsvInScheduledReports,
    this.exportToExcel,
    this.exportToExcelInScheduledReports,
    this.exportToPdf,
    this.exportToPdfInScheduledReports,
    this.includeContentInScheduledReportsEmail,
    this.printReports,
    this.renameSharedFolders,
    this.shareAnalyses,
    this.shareDashboards,
    this.shareDataSources,
    this.shareDatasets,
    this.subscribeDashboardEmailReports,
    this.viewAccountSpiceCapacity,
  });

  final TfArg<String>? addOrRunAnomalyDetectionForAnalyses;

  final TfArg<String>? createAndUpdateDashboardEmailReports;

  final TfArg<String>? createAndUpdateDataSources;

  final TfArg<String>? createAndUpdateDatasets;

  final TfArg<String>? createAndUpdateThemes;

  final TfArg<String>? createAndUpdateThresholdAlerts;

  final TfArg<String>? createSharedFolders;

  final TfArg<String>? createSpiceDataset;

  final TfArg<String>? exportToCsv;

  final TfArg<String>? exportToCsvInScheduledReports;

  final TfArg<String>? exportToExcel;

  final TfArg<String>? exportToExcelInScheduledReports;

  final TfArg<String>? exportToPdf;

  final TfArg<String>? exportToPdfInScheduledReports;

  final TfArg<String>? includeContentInScheduledReportsEmail;

  final TfArg<String>? printReports;

  final TfArg<String>? renameSharedFolders;

  final TfArg<String>? shareAnalyses;

  final TfArg<String>? shareDashboards;

  final TfArg<String>? shareDataSources;

  final TfArg<String>? shareDatasets;

  final TfArg<String>? subscribeDashboardEmailReports;

  final TfArg<String>? viewAccountSpiceCapacity;

  Map<String, Object?> encode() => {
    if (addOrRunAnomalyDetectionForAnalyses != null)
      'add_or_run_anomaly_detection_for_analyses':
          addOrRunAnomalyDetectionForAnalyses!.toTfJson(),
    if (createAndUpdateDashboardEmailReports != null)
      'create_and_update_dashboard_email_reports':
          createAndUpdateDashboardEmailReports!.toTfJson(),
    if (createAndUpdateDataSources != null)
      'create_and_update_data_sources': createAndUpdateDataSources!.toTfJson(),
    if (createAndUpdateDatasets != null)
      'create_and_update_datasets': createAndUpdateDatasets!.toTfJson(),
    if (createAndUpdateThemes != null)
      'create_and_update_themes': createAndUpdateThemes!.toTfJson(),
    if (createAndUpdateThresholdAlerts != null)
      'create_and_update_threshold_alerts': createAndUpdateThresholdAlerts!
          .toTfJson(),
    if (createSharedFolders != null)
      'create_shared_folders': createSharedFolders!.toTfJson(),
    if (createSpiceDataset != null)
      'create_spice_dataset': createSpiceDataset!.toTfJson(),
    if (exportToCsv != null) 'export_to_csv': exportToCsv!.toTfJson(),
    if (exportToCsvInScheduledReports != null)
      'export_to_csv_in_scheduled_reports': exportToCsvInScheduledReports!
          .toTfJson(),
    if (exportToExcel != null) 'export_to_excel': exportToExcel!.toTfJson(),
    if (exportToExcelInScheduledReports != null)
      'export_to_excel_in_scheduled_reports': exportToExcelInScheduledReports!
          .toTfJson(),
    if (exportToPdf != null) 'export_to_pdf': exportToPdf!.toTfJson(),
    if (exportToPdfInScheduledReports != null)
      'export_to_pdf_in_scheduled_reports': exportToPdfInScheduledReports!
          .toTfJson(),
    if (includeContentInScheduledReportsEmail != null)
      'include_content_in_scheduled_reports_email':
          includeContentInScheduledReportsEmail!.toTfJson(),
    if (printReports != null) 'print_reports': printReports!.toTfJson(),
    if (renameSharedFolders != null)
      'rename_shared_folders': renameSharedFolders!.toTfJson(),
    if (shareAnalyses != null) 'share_analyses': shareAnalyses!.toTfJson(),
    if (shareDashboards != null)
      'share_dashboards': shareDashboards!.toTfJson(),
    if (shareDataSources != null)
      'share_data_sources': shareDataSources!.toTfJson(),
    if (shareDatasets != null) 'share_datasets': shareDatasets!.toTfJson(),
    if (subscribeDashboardEmailReports != null)
      'subscribe_dashboard_email_reports': subscribeDashboardEmailReports!
          .toTfJson(),
    if (viewAccountSpiceCapacity != null)
      'view_account_spice_capacity': viewAccountSpiceCapacity!.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_custom_permissions`.
final class AwsQuicksightCustomPermissions extends Resource {
  static const String tfType = 'aws_quicksight_custom_permissions';

  AwsQuicksightCustomPermissions({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> customPermissionsName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<QuicksightCustomPermissionsCapabilities>? capabilities,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'custom_permissions_name': customPermissionsName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (capabilities != null)
             'capabilities': TfArg.literal([
               for (final e in capabilities) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightCustomPermissionsSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
