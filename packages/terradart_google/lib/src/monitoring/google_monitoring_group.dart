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
///   'public_urls',
///   displayName: TfArg.literal('Public URLs'),
///   filter: TfArg.literal('resource.type="uptime_url"'),
/// );
/// ```
final class GoogleMonitoringGroup extends Resource {
  static const String tfType = 'google_monitoring_group';

  GoogleMonitoringGroup(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> filter,
    TfArg<bool>? isCluster,
    TfArg<String>? parentName,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'filter': filter,
           'is_cluster': ?isCluster,
           'parent_name': ?parentName,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMonitoringGroup>`.
  RefTo<GoogleMonitoringGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `is_cluster` attribute.
  TfRef<bool> get isCluster => TfRef.attribute<bool>(this, 'is_cluster');

  /// Reference to `parent_name` attribute.
  TfRef<String> get parentName => TfRef.attribute<String>(this, 'parent_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
