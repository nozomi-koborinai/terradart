// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_snooze`.
const Set<String> _googleMonitoringSnoozeSensitive = <String>{};

/// Factory wrapper for `google_monitoring_snooze`.
///
/// A Snooze will prevent any alerts from being opened, and close any that are
/// already open. The Snooze will work on alerts that match the criteria defined
/// in the Snooze. The Snooze will be active from interval.start_time through
/// interval.end_time.
///
/// ~> **Note:** Monitoring Snoozes cannot be deleted from the Google Cloud
/// Platform. Destroying a Terraform-managed Snooze will cancel the snooze and
/// remove it from state but *will not delete the resource from the project.*
final class GoogleMonitoringSnooze extends Resource {
  static const String tfType = 'google_monitoring_snooze';

  GoogleMonitoringSnooze({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? project,
    required TfArg<Map<String, dynamic>> criteria,
    required TfArg<Map<String, dynamic>> interval,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (project != null) 'project': project,
           'criteria': criteria,
           'interval': interval,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringSnoozeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMonitoringSnooze>`.
  RefTo<GoogleMonitoringSnooze> get ref => RefTo.of(this);
}
