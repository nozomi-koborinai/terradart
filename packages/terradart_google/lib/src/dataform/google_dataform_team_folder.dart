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
///   'team',
///   displayName: TfArg.literal('terradart-team'),
///   region: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleDataformTeamFolder extends Resource {
  static const String tfType = 'google_dataform_team_folder';

  GoogleDataformTeamFolder(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> region,
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
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataformTeamFolderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataformTeamFolder>`.
  RefTo<GoogleDataformTeamFolder> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `teamfolder_id` attribute.
  TfRef<String> get teamfolderId =>
      TfRef.attribute<String>(this, 'teamfolder_id');

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
