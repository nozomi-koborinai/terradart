// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_snooze`.
const Set<String> _googleMonitoringSnoozeSensitive = <String>{};

/// Typed helper for the `criteria` block of
/// `google_monitoring_snooze` (derived from provider schema).
@immutable
final class MonitoringSnoozeCriteria {
  const MonitoringSnoozeCriteria({this.filter, this.policies});

  final TfArg<String>? filter;

  final TfArg<List<String>>? policies;

  Map<String, Object?> encode() => {
    'filter': ?filter?.toTfJson(),
    'policies': ?policies?.toTfJson(),
  };
}

/// Typed helper for the `interval` block of
/// `google_monitoring_snooze` (derived from provider schema).
@immutable
final class MonitoringSnoozeInterval {
  const MonitoringSnoozeInterval({required this.endTime, this.startTime});

  final TfArg<String> endTime;

  final TfArg<String>? startTime;

  Map<String, Object?> encode() => {
    'end_time': endTime.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
  };
}

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
    required MonitoringSnoozeCriteria criteria,
    required MonitoringSnoozeInterval interval,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'criteria': TfArg.literal(criteria.encode()),
           'interval': TfArg.literal(interval.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringSnoozeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMonitoringSnooze>`.
  RefTo<GoogleMonitoringSnooze> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
