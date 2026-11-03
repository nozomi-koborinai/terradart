// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_resource_manager_boundary`.
const Set<String> _googleResourceManagerBoundarySensitive = <String>{};

/// Typed helper for the `resource_filter` block of
/// `google_resource_manager_boundary` (derived from provider schema).
@immutable
final class ResourceManagerBoundaryResourceFilter {
  const ResourceManagerBoundaryResourceFilter({required this.tagFilter});

  final ResourceManagerBoundaryTagFilter tagFilter;

  @internal
  Map<String, Object?> encode() => {'tag_filter': tagFilter.encode()};
}

/// Typed helper for the `resource_filter.tag_filter` block of
/// `google_resource_manager_boundary` (derived from provider schema).
@immutable
final class ResourceManagerBoundaryTagFilter {
  const ResourceManagerBoundaryTagFilter({
    required this.tagKey,
    required this.tagValue,
  });

  final TfArg<String> tagKey;

  final TfArg<String> tagValue;

  @internal
  Map<String, Object?> encode() => {
    'tag_key': tagKey.toTfJson(),
    'tag_value': tagValue.toTfJson(),
  };
}

/// Factory wrapper for `google_resource_manager_boundary`.
///
/// A Boundary is a collection of projects defined by filtering criteria on an
/// organization or a folder. Descendant projects are dynamically included in
/// the Boundary based on the configured resource filter.
///
/// Membership is recomputed asynchronously, so the projects inside a Boundary
/// are not necessarily settled by the time the apply returns.
final class GoogleResourceManagerBoundary extends Resource {
  static const String tfType = 'google_resource_manager_boundary';

  GoogleResourceManagerBoundary(
    super.localName, {
    required TfArg<String> boundaryId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> parent,
    ResourceManagerBoundaryResourceFilter? resourceFilter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'boundary_id': boundaryId,
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'parent': parent,
           if (resourceFilter != null)
             'resource_filter': TfArg.literal(resourceFilter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleResourceManagerBoundarySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleResourceManagerBoundary>`.
  RefTo<GoogleResourceManagerBoundary> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `management_project` attribute.
  TfRef<String> get managementProject =>
      TfRef.attribute<String>(this, 'management_project');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `boundary_id` attribute.
  TfRef<String> get boundaryId => TfRef.attribute<String>(this, 'boundary_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
