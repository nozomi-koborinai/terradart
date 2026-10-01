// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

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

/// Typed helper for the `terraform_blueprint` block of
/// `google_config_deployment` (derived from provider schema).
@immutable
final class ConfigDeploymentTerraformBlueprint {
  const ConfigDeploymentTerraformBlueprint({
    required this.source,
    this.inputValues,
  });

  final ConfigDeploymentSource source;

  final List<ConfigDeploymentInputValues>? inputValues;

  Map<String, Object?> encode() => {
    ...source.encode(),
    if (inputValues != null)
      'input_values': [for (final e in inputValues!) e.encode()],
  };
}

/// Exactly one of `gcs_source`, `git_source` on the `terraform_blueprint` block of `google_config_deployment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.gcsSource(...)`.
sealed class ConfigDeploymentSource {
  const ConfigDeploymentSource();

  /// Sets `gcs_source`.
  const factory ConfigDeploymentSource.gcsSource(TfArg<String> gcsSource) =
      ConfigDeploymentGcsSource;

  /// Sets `git_source`.
  const factory ConfigDeploymentSource.gitSource(
    ConfigDeploymentGitSource gitSource,
  ) = ConfigDeploymentGitSourceChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ConfigDeploymentSource.gcsSource] choice: sets `gcs_source`.
final class ConfigDeploymentGcsSource extends ConfigDeploymentSource {
  const ConfigDeploymentGcsSource(this.gcsSource);

  final TfArg<String> gcsSource;

  @override
  String get blockKey => 'gcs_source';

  @override
  Map<String, Object?> encode() => {'gcs_source': gcsSource.toTfJson()};
}

/// The [ConfigDeploymentSource.gitSource] choice: sets `git_source`.
final class ConfigDeploymentGitSourceChoice extends ConfigDeploymentSource {
  const ConfigDeploymentGitSourceChoice(this.gitSource);

  final ConfigDeploymentGitSource gitSource;

  @override
  String get blockKey => 'git_source';

  @override
  Map<String, Object?> encode() => {'git_source': gitSource.encode()};
}

/// Typed helper for the `terraform_blueprint.git_source` block of
/// `google_config_deployment` (derived from provider schema).
@immutable
final class ConfigDeploymentGitSource {
  const ConfigDeploymentGitSource({
    this.directory,
    this.ref,
    required this.repo,
  });

  final TfArg<String>? directory;

  final TfArg<String>? ref;

  final TfArg<String> repo;

  Map<String, Object?> encode() => {
    'directory': ?directory?.toTfJson(),
    'ref': ?ref?.toTfJson(),
    'repo': repo.toTfJson(),
  };
}

/// Typed helper for the `terraform_blueprint.input_values` block of
/// `google_config_deployment` (derived from provider schema).
@immutable
final class ConfigDeploymentInputValues {
  const ConfigDeploymentInputValues({
    required this.inputValue,
    required this.variableName,
  });

  final TfArg<String> inputValue;

  final TfArg<String> variableName;

  Map<String, Object?> encode() => {
    'input_value': inputValue.toTfJson(),
    'variable_name': variableName.toTfJson(),
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
///   serviceAccount: RefTo.literal(
///     'projects/my-project/serviceAccounts/im-sa@my-project.iam.gserviceaccount.com',
///   ),
///   terraformBlueprint: ConfigDeploymentTerraformBlueprint(
///     source: .gitSource(
///       .new(
///         repo: .literal(
///           'https://github.com/terraform-google-modules/terraform-google-network',
///         ),
///         directory: .literal('modules/vpc'),
///         ref: .literal('main'),
///       ),
///     ),
///     inputValues: [
///       .new(
///         variableName: .literal('project_id'),
///         inputValue: .literal('"my-project"'),
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
    required RefTo<GoogleServiceAccount> serviceAccount,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'service_account': serviceAccount.encodeAs('name'),
           'terraform_blueprint': TfArg.literal(terraformBlueprint.encode()),
           'labels': ?labels,
           'annotations': ?annotations,
           'tf_version_constraint': ?tfVersionConstraint,
           'artifacts_gcs_bucket': ?artifactsGcsBucket,
           'worker_pool': ?workerPool,
           'import_existing_resources': ?importExistingResources,
           'quota_validation': ?quotaValidation,
           'force_destroy': ?forceDestroy,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleConfigDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleConfigDeployment>`.
  RefTo<GoogleConfigDeployment> get ref => RefTo.of(this);

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

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `artifacts_gcs_bucket` attribute.
  TfRef<String> get artifactsGcsBucketRef =>
      TfRef.attribute<String>(this, 'artifacts_gcs_bucket');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `import_existing_resources` attribute.
  TfRef<bool> get importExistingResourcesRef =>
      TfRef.attribute<bool>(this, 'import_existing_resources');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `quota_validation` attribute.
  TfRef<String> get quotaValidationRef =>
      TfRef.attribute<String>(this, 'quota_validation');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccountRef =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `tf_version_constraint` attribute.
  TfRef<String> get tfVersionConstraintRef =>
      TfRef.attribute<String>(this, 'tf_version_constraint');

  /// Reference to `worker_pool` attribute.
  TfRef<String> get workerPoolRef =>
      TfRef.attribute<String>(this, 'worker_pool');
}
