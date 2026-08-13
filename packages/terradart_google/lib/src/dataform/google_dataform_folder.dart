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
///   localName: 'apps',
///   displayName: TfArg.literal('terradart-apps'),
///   region: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleDataformFolder extends Resource {
  static const String tfType = 'google_dataform_folder';

  GoogleDataformFolder({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> region,
    TfArg<String>? containingFolder,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'region': region,
           if (containingFolder != null) 'containing_folder': containingFolder,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataformFolderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `folder_id` attribute.
  TfRef<String> get folderId => TfRef.attribute<String>(this, 'folder_id');
}
