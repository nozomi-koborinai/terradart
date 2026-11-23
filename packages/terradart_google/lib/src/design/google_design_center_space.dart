// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_design_center_space`.
const Set<String> _googleDesignCenterSpaceSensitive = <String>{};

/// Factory wrapper for `google_design_center_space`.
///
/// Space is a top level resource for managing teams building applications
/// through Application Design Center.
final class GoogleDesignCenterSpace extends Resource {
  static const String tfType = 'google_design_center_space';

  GoogleDesignCenterSpace(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<bool>? enableGcpSharedTemplates,
    RefTo<GoogleStorageBucket>? gcsBucket,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> spaceId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'enable_gcp_shared_templates': ?enableGcpSharedTemplates,
           'gcs_bucket': ?gcsBucket?.encodeAs('name'),
           'location': location,
           'project': ?project,
           'space_id': spaceId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDesignCenterSpaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDesignCenterSpace>`.
  RefTo<GoogleDesignCenterSpace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_gcp_shared_templates` attribute.
  TfRef<bool> get enableGcpSharedTemplates =>
      TfRef.attribute<bool>(this, 'enable_gcp_shared_templates');

  /// Reference to `gcs_bucket` attribute.
  TfRef<String> get gcsBucket => TfRef.attribute<String>(this, 'gcs_bucket');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `space_id` attribute.
  TfRef<String> get spaceId => TfRef.attribute<String>(this, 'space_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
