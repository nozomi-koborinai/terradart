// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_config_deployment`.
const Set<String> _googleConfigDeploymentSensitive = <String>{};

/// Terraform `deletion_policy` for Infrastructure Manager deployments.
enum ConfigDeploymentDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const ConfigDeploymentDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Quota validation mode for `google_config_deployment.quota_validation`.
enum ConfigDeploymentQuotaValidation implements TerraformEnum {
  enabled('ENABLED'),
  enforced('ENFORCED');

  const ConfigDeploymentQuotaValidation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Blueprint input variable (`terraform_blueprint.input_values` entry).
@immutable
class ConfigDeploymentInputValue {
  const ConfigDeploymentInputValue({
    required this.variableName,
    required this.inputValue,
  });

  final TfArg<String> variableName;
  final TfArg<String> inputValue;

  Map<String, Object?> toArgMap() => {
    'variable_name': variableName.toTfJson(),
    'input_value': inputValue.toTfJson(),
  };
}

/// Sealed dispatch for `terraform_blueprint` source — `gcs_source` or
/// `git_source` (exactly one required).
sealed class ConfigDeploymentBlueprintSource {
  const ConfigDeploymentBlueprintSource();

  Map<String, Object?> encode();
}

/// GCS object URI containing a zipped Terraform blueprint.
@immutable
final class ConfigDeploymentBlueprintFromGcs
    extends ConfigDeploymentBlueprintSource {
  const ConfigDeploymentBlueprintFromGcs({required this.gcsSource});

  final TfArg<String> gcsSource;

  @override
  Map<String, Object?> encode() => {'gcs_source': gcsSource.toTfJson()};
}

/// Public Git repository containing the blueprint.
@immutable
final class ConfigDeploymentBlueprintFromGit
    extends ConfigDeploymentBlueprintSource {
  const ConfigDeploymentBlueprintFromGit({
    required this.repo,
    this.directory,
    this.ref,
  });

  final TfArg<String> repo;
  final TfArg<String>? directory;
  final TfArg<String>? ref;

  @override
  Map<String, Object?> encode() => {
    'git_source': [
      {
        'repo': repo.toTfJson(),
        if (directory != null) 'directory': directory!.toTfJson(),
        if (ref != null) 'ref': ref!.toTfJson(),
      },
    ],
  };
}

/// `terraform_blueprint` block — blueprint source plus optional input values.
@immutable
class ConfigDeploymentTerraformBlueprint {
  const ConfigDeploymentTerraformBlueprint({
    required this.source,
    this.inputValues,
  });

  final ConfigDeploymentBlueprintSource source;
  final List<ConfigDeploymentInputValue>? inputValues;

  Map<String, Object?> toArgMap() => {
    ...source.encode(),
    if (inputValues != null)
      'input_values': inputValues!.map((v) => v.toArgMap()).toList(),
  };
}

/// Factory wrapper for `google_config_deployment`.
///
/// A group of Google Cloud resources described by a Terraform blueprint.
///
/// Infrastructure Manager deployment — actuates a Terraform blueprint from
/// GCS or a public Git repository using a dedicated service account.
///
/// Enable `config.googleapis.com` via [GoogleProjectService] before apply.
/// The actuation service account needs `roles/config.agent` (and any roles
/// required by resources in the blueprint).
///
/// Example (Git blueprint):
/// ```dart
/// GoogleConfigDeployment(
///   localName: 'vpc',
///   name: TfArg.literal('my-vpc-deployment'),
///   location: TfArg.literal('us-central1'),
///   serviceAccount: TfArg.literal(
///     'projects/my-project/serviceAccounts/im-sa@my-project.iam.gserviceaccount.com',
///   ),
///   terraformBlueprint: ConfigDeploymentTerraformBlueprint(
///     source: ConfigDeploymentBlueprintFromGit(
///       repo: TfArg.literal(
///         'https://github.com/terraform-google-modules/terraform-google-network',
///       ),
///       directory: TfArg.literal('modules/vpc'),
///       ref: TfArg.literal('main'),
///     ),
///     inputValues: [
///       ConfigDeploymentInputValue(
///         variableName: TfArg.literal('project_id'),
///         inputValue: TfArg.literal('"my-project"'),
///       ),
///     ],
///   ),
/// );
/// ```
final class GoogleConfigDeployment extends Resource {
  static const String tfType = 'google_config_deployment';

  GoogleConfigDeployment({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> serviceAccount,
    required ConfigDeploymentTerraformBlueprint terraformBlueprint,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? tfVersionConstraint,
    TfArg<String>? artifactsGcsBucket,
    TfArg<String>? workerPool,
    TfArg<bool>? importExistingResources,
    TfArg<ConfigDeploymentQuotaValidation>? quotaValidation,
    TfArg<bool>? forceDestroy,
    TfArg<ConfigDeploymentDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'service_account': serviceAccount,
           'terraform_blueprint': TfArg.literal([
             terraformBlueprint.toArgMap(),
           ]),
           if (labels != null) 'labels': labels,
           if (annotations != null) 'annotations': annotations,
           if (tfVersionConstraint != null)
             'tf_version_constraint': tfVersionConstraint,
           if (artifactsGcsBucket != null)
             'artifacts_gcs_bucket': artifactsGcsBucket,
           if (workerPool != null) 'worker_pool': workerPool,
           if (importExistingResources != null)
             'import_existing_resources': importExistingResources,
           if (quotaValidation != null) 'quota_validation': quotaValidation,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleConfigDeploymentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `latest_revision` attribute.
  TfRef<String> get latestRevision =>
      TfRef.attribute<String>(this, 'latest_revision');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
