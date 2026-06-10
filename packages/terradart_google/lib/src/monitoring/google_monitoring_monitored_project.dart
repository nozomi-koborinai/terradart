// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_monitored_project`.
const Set<String> _googleMonitoringMonitoredProjectSensitive = <String>{};

/// Factory wrapper for `google_monitoring_monitored_project`.
///
/// Adds a project to a metrics scope (multi-project observability).
/// For the default scope created with a project, `metrics_scope` is
/// `locations/global/metricsScopes/{scopeId}`.
///
/// Example:
/// ```dart
/// GoogleMonitoringMonitoredProject(
///   localName: 'child_project',
///   metricsScope: TfArg.literal(
///     'locations/global/metricsScopes/my-metrics-scope',
///   ),
///   name: TfArg.literal('my-child-project-id'),
/// );
/// ```
final class GoogleMonitoringMonitoredProject extends Resource {
  static const String tfType = 'google_monitoring_monitored_project';

  GoogleMonitoringMonitoredProject({
    required super.localName,
    required TfArg<String> metricsScope,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'metrics_scope': metricsScope, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringMonitoredProjectSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');
}
