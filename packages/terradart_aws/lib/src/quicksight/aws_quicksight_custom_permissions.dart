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
    'add_or_run_anomaly_detection_for_analyses':
        ?addOrRunAnomalyDetectionForAnalyses?.toTfJson(),
    'create_and_update_dashboard_email_reports':
        ?createAndUpdateDashboardEmailReports?.toTfJson(),
    'create_and_update_data_sources': ?createAndUpdateDataSources?.toTfJson(),
    'create_and_update_datasets': ?createAndUpdateDatasets?.toTfJson(),
    'create_and_update_themes': ?createAndUpdateThemes?.toTfJson(),
    'create_and_update_threshold_alerts': ?createAndUpdateThresholdAlerts
        ?.toTfJson(),
    'create_shared_folders': ?createSharedFolders?.toTfJson(),
    'create_spice_dataset': ?createSpiceDataset?.toTfJson(),
    'export_to_csv': ?exportToCsv?.toTfJson(),
    'export_to_csv_in_scheduled_reports': ?exportToCsvInScheduledReports
        ?.toTfJson(),
    'export_to_excel': ?exportToExcel?.toTfJson(),
    'export_to_excel_in_scheduled_reports': ?exportToExcelInScheduledReports
        ?.toTfJson(),
    'export_to_pdf': ?exportToPdf?.toTfJson(),
    'export_to_pdf_in_scheduled_reports': ?exportToPdfInScheduledReports
        ?.toTfJson(),
    'include_content_in_scheduled_reports_email':
        ?includeContentInScheduledReportsEmail?.toTfJson(),
    'print_reports': ?printReports?.toTfJson(),
    'rename_shared_folders': ?renameSharedFolders?.toTfJson(),
    'share_analyses': ?shareAnalyses?.toTfJson(),
    'share_dashboards': ?shareDashboards?.toTfJson(),
    'share_data_sources': ?shareDataSources?.toTfJson(),
    'share_datasets': ?shareDatasets?.toTfJson(),
    'subscribe_dashboard_email_reports': ?subscribeDashboardEmailReports
        ?.toTfJson(),
    'view_account_spice_capacity': ?viewAccountSpiceCapacity?.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_custom_permissions`.
final class AwsQuicksightCustomPermissions extends Resource {
  static const String tfType = 'aws_quicksight_custom_permissions';

  AwsQuicksightCustomPermissions(
    super.localName, {
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
           'aws_account_id': ?awsAccountId,
           'custom_permissions_name': customPermissionsName,
           'region': ?region,
           'tags': ?tags,
           if (capabilities != null)
             'capabilities': TfArg.literal([
               for (final e in capabilities) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightCustomPermissionsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightCustomPermissions>`.
  RefTo<AwsQuicksightCustomPermissions> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `custom_permissions_name` attribute.
  TfRef<String> get customPermissionsName =>
      TfRef.attribute<String>(this, 'custom_permissions_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
