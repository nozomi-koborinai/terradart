// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_group`.
const Set<String> _googleMonitoringGroupSensitive = <String>{};

/// Factory wrapper for `google_monitoring_group`.
///
/// The description of a dynamic collection of monitored resources. Each group
/// has a filter that is matched against monitored resources and their
/// associated metadata. If a group's filter matches an available monitored
/// resource, then that resource is a member of that group.
///
/// A dynamic monitored-resource group used as an uptime-check or alert
/// target. Pair with [GoogleMonitoringUptimeCheckConfig.resourceGroup].
///
/// Example:
/// ```dart
/// final urls = GoogleMonitoringGroup(
///   localName: 'public_urls',
///   displayName: TfArg.literal('Public URLs'),
///   filter: TfArg.literal('resource.type="uptime_url"'),
/// );
/// ```
final class GoogleMonitoringGroup extends Resource {
  static const String tfType = 'google_monitoring_group';

  GoogleMonitoringGroup({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> filter,
    TfArg<bool>? isCluster,
    TfArg<String>? parentName,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'filter': filter,
           if (isCluster != null) 'is_cluster': isCluster,
           if (parentName != null) 'parent_name': parentName,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
