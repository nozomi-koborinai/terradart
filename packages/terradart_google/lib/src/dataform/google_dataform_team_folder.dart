// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_team_folder`.
const Set<String> _googleDataformTeamFolderSensitive = <String>{};

/// Factory wrapper for `google_dataform_team_folder`.
///
/// A resource represents a Dataform TeamFolder
///
/// Dataform **team folder** — top-level metadata container that can
/// parent [GoogleDataformFolder] resources via `containingFolder`.
///
/// Creating a team folder does not compile SQL or run workflows.
///
/// **Cost:** gcp-cost: no Cloud Billing Catalog SKU after list_services
/// "Dataform" empty; BigQuery 24E6-581D-38E5 list_skus keyword
/// dataform/compilation/workflow/folder → 0. billing-behavior: team-folder
/// metadata is free config; compilation SKUs fire on repository runs,
/// not team-folder create.
///
/// Example:
/// ```dart
/// GoogleDataformTeamFolder(
///   localName: 'team',
///   displayName: TfArg.literal('terradart-team'),
///   region: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleDataformTeamFolder extends Resource {
  static const String tfType = 'google_dataform_team_folder';

  GoogleDataformTeamFolder({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> region,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'region': region,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataformTeamFolderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `teamfolder_id` attribute.
  TfRef<String> get teamfolderId =>
      TfRef.attribute<String>(this, 'teamfolder_id');
}
