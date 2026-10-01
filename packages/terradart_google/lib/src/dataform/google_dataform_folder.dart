// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_folder`.
const Set<String> _googleDataformFolderSensitive = <String>{};

/// Factory wrapper for `google_dataform_folder`.
///
/// A resource represents a Dataform folder
///
/// Dataform **folder** — metadata for grouping repositories under a
/// region (optionally inside a [GoogleDataformTeamFolder] via
/// `containingFolder`).
///
/// Creating a folder does not compile SQL or run workflows.
///
/// **Cost:** gcp-cost: no Cloud Billing Catalog SKU after list_services
/// "Dataform" empty; BigQuery 24E6-581D-38E5 list_skus keyword
/// dataform/compilation/workflow/folder → 0. billing-behavior: folder
/// metadata is free config; compilation SKUs fire on repository runs,
/// not folder create.
///
/// Example:
/// ```dart
/// GoogleDataformFolder(
///   'apps',
///   displayName: TfArg.literal('terradart-apps'),
///   region: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleDataformFolder extends Resource {
  static const String tfType = 'google_dataform_folder';

  GoogleDataformFolder(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> region,
    TfArg<String>? containingFolder,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'region': region,
           'containing_folder': ?containingFolder,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataformFolderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataformFolder>`.
  RefTo<GoogleDataformFolder> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `folder_id` attribute.
  TfRef<String> get folderId => TfRef.attribute<String>(this, 'folder_id');

  /// Reference to `containing_folder` attribute.
  TfRef<String> get containingFolder =>
      TfRef.attribute<String>(this, 'containing_folder');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
