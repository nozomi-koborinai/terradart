// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_repository`.
const Set<String> _googleDataformRepositorySensitive = <String>{};

/// Factory wrapper for `google_dataform_repository`.
///
/// A resource represents a Dataform Git repository
///
/// Dataform **repository** — the regional container for SQL workflow code,
/// workspaces, and compilation results.
///
/// Creating a repository does not compile SQL or run workflows: BigQuery
/// charges start when a workflow invocation executes the compiled SQL.
///
/// `serviceAccount` is the identity workflow invocations run under; it needs
/// BigQuery access to the datasets the workflow writes. `kmsKeyName` is
/// immutable — it cannot be added or rotated after create.
///
/// **Cost:** gcp-cost: no Cloud Billing Catalog SKU after list_services
/// "Dataform" empty; BigQuery 24E6-581D-38E5 list_skus keyword
/// dataform/repository/compilation/workflow → 0. billing-behavior:
/// repository metadata is free config; BigQuery analysis SKUs fire on
/// workflow invocations, not on repository create.
///
/// The Git remote block is deliberately not curated: linking a remote needs
/// an external Git URL plus a Secret Manager token version (or a Developer
/// Connect link), and the API requires exactly one of those three
/// authentication shapes. Repositories created here hold Dataform-managed
/// workspaces.
///
/// Example:
/// ```dart
/// GoogleDataformRepository(
///   localName: 'analytics',
///   name: TfArg.literal('terradart-analytics'),
///   region: TfArg.literal('us-central1'),
///   displayName: TfArg.literal('TerraDart analytics'),
/// );
/// ```
final class GoogleDataformRepository extends Resource {
  static const String tfType = 'google_dataform_repository';

  GoogleDataformRepository({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? displayName,
    TfArg<String>? serviceAccount,
    TfArg<String>? kmsKeyName,
    TfArg<String>? npmrcEnvironmentVariablesSecretVersion,
    TfArg<Map<String, dynamic>>? workspaceCompilationOverrides,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (displayName != null) 'display_name': displayName,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           if (npmrcEnvironmentVariablesSecretVersion != null)
             'npmrc_environment_variables_secret_version':
                 npmrcEnvironmentVariablesSecretVersion,
           if (workspaceCompilationOverrides != null)
             'workspace_compilation_overrides': workspaceCompilationOverrides,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataformRepositorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
