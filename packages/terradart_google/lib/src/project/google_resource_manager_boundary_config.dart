// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_resource_manager_boundary_config`.
const Set<String> _googleResourceManagerBoundaryConfigSensitive = <String>{};

/// Factory wrapper for `google_resource_manager_boundary_config`.
///
/// A BoundaryConfig defines the common configuration for all Boundaries under a
/// parent Organization or Folder, such as the partitioning tag key.
///
/// A BoundaryConfig is a singleton: exactly one exists per parent and it cannot
/// be created or deleted through the API, only read and updated. Applying this
/// resource updates the existing BoundaryConfig. Destroying it clears the
/// `tagKey` field, returning the BoundaryConfig to its unconfigured state.
///
/// The service rejects *any* write to a BoundaryConfig, including a no-op one,
/// once at least one Boundary exists under the same parent
/// (`FAILED_PRECONDITION`). In practice that means the BoundaryConfig must be
/// fully configured before the first Boundary is created and must be the last
/// thing destroyed. Reference
/// `google_resource_manager_boundary_config.<name>.tag_key` in each
/// `google_resource_manager_boundary`'s `tag_filter.tag_key` (or use
/// `depends_on`) so Terraform orders both the create and the destroy correctly.
final class GoogleResourceManagerBoundaryConfig extends Resource {
  static const String tfType = 'google_resource_manager_boundary_config';

  GoogleResourceManagerBoundaryConfig(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> parent,
    required TfArg<String> tagKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'parent': parent,
           'tag_key': tagKey,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleResourceManagerBoundaryConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleResourceManagerBoundaryConfig>`.
  RefTo<GoogleResourceManagerBoundaryConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `tag_key` attribute.
  TfRef<String> get tagKey => TfRef.attribute<String>(this, 'tag_key');
}
