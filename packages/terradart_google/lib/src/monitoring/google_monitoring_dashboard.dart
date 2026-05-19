// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_dashboard`.
const Set<String> _googleMonitoringDashboardSensitive = <String>{};

/// Factory wrapper for `google_monitoring_dashboard` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Manages a Cloud Monitoring dashboard. Dashboards in this version are
/// modeled **deliberately minimally**: the entire dashboard layout — rows,
/// columns, mosaics, widgets, charts, thresholds, etc. — is passed as a
/// **single JSON string** via [dashboardJson]. There is no typed Dart
/// widget model in v0.0.x; the Cloud Console UI is the source of truth
/// for the dashboard schema, which is large, fluid, and well-supported
/// by the in-product editor.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_monitoring_dashboard.`).
/// - `dashboardJson`: full dashboard JSON payload as a Dart `String`. Must
///   conform to
///   <https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards>.
///
/// ## Authoring workflow
///
/// 1. Build the dashboard interactively in the Cloud Console
///    (Monitoring -> Dashboards -> Create dashboard).
/// 2. Once it looks right, open `Settings -> JSON` and copy the full JSON
///    body. (Equivalently, run
///    `gcloud monitoring dashboards describe DASHBOARD_ID --format=json`
///    against an existing dashboard, replacing `DASHBOARD_ID` with the
///    resource ID.)
/// 3. Paste the JSON into your Dart source as a raw String and pass it via
///    `dashboardJson: TfArg.literal(...)`.
///
/// Programmatic assembly is also fine — `jsonEncode(Map<String, dynamic>)`
/// from `dart:convert` produces an equivalent String. Both forms are
/// byte-identical at the Terraform layer; pick whichever the codebase
/// prefers (raw multi-line String for diff stability, `jsonEncode` when
/// the dashboard is parameterized by Dart values).
///
/// Example (raw String, exported from Cloud Console):
/// ```dart
/// final overview = GoogleMonitoringDashboard(
///   localName: 'service_overview',
///   dashboardJson: TfArg.literal('''
/// {
///   "displayName": "Service overview",
///   "mosaicLayout": {
///     "columns": 12,
///     "tiles": [
///       {
///         "width": 6,
///         "height": 4,
///         "widget": {
///           "title": "Request rate",
///           "xyChart": {
///             "dataSets": [
///               {
///                 "timeSeriesQuery": {
///                   "timeSeriesFilter": {
///                     "filter": "metric.type=\\"run.googleapis.com/request_count\\""
///                   }
///                 }
///               }
///             ]
///           }
///         }
///       }
///     ]
///   }
/// }
/// '''),
/// );
/// ```
///
/// Example (programmatic assembly via `dart:convert`):
/// ```dart
/// import 'dart:convert';
///
/// final dashboard = GoogleMonitoringDashboard(
///   localName: 'service_overview',
///   dashboardJson: TfArg.literal(jsonEncode(<String, dynamic>{
///     'displayName': 'Service overview',
///     'mosaicLayout': {'columns': 12, 'tiles': <Map<String, dynamic>>[]},
///   })),
/// );
/// ```
///
/// Composition pattern: extends `Resource<$GoogleMonitoringDashboard>` for
/// runtime behavior. There are no nested helper classes — the entire
/// dashboard body lives inside the [dashboardJson] String.
final class GoogleMonitoringDashboard extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_monitoring_dashboard';

  GoogleMonitoringDashboard({
    required super.localName,
    required TfArg<String> dashboardJson,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'dashboard_json': dashboardJson,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleMonitoringDashboardSensitive;
}
