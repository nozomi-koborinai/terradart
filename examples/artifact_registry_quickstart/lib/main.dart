/// Artifact Registry quickstart — project config, Docker repo, download
/// rule, and a location-scoped tag binding.
///
/// Defines an `ArtifactRegistryStack` that enables the Artifact Registry API,
/// manages the per-location `google_artifact_registry_project_config`
/// (platform logs), creates an empty Docker repository, attaches a
/// repository-level DENY DOWNLOAD rule, and binds a TagValue to the repo
/// via `google_tags_location_tag_binding`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/artifact_registry.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/tags.dart';

/// Artifact Registry Stack: API + project config + repo + download rule +
/// location tag binding.
final class ArtifactRegistryStack extends Stack {
  ArtifactRegistryStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    const location = 'asia-northeast1';
    const repositoryId = 'terradart-docker';

    final current = addData(GoogleProject(localName: 'current'));

    final apiAr = add(
      GoogleProjectService(
        localName: 'api_artifactregistry',
        service: TfArg.literal('artifactregistry.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final projectConfig = add(
      GoogleArtifactRegistryProjectConfig(
        localName: 'ar_project_config',
        location: TfArg.literal(location),
        platformLogsConfig:
            const ArtifactRegistryProjectConfigPlatformLogsConfig(
          loggingState: ArtifactRegistryPlatformLogsLoggingState.enabled,
          severityLevel: ArtifactRegistryPlatformLogsSeverityLevel.info,
        ),
        dependsOn: [ResourceDependency(apiAr)],
      ),
    );

    final repo = add(
      GoogleArtifactRegistryRepository(
        localName: 'docker',
        repositoryId: TfArg.literal(repositoryId),
        location: TfArg.literal(location),
        format: TfArg.literal('DOCKER'),
        description: TfArg.literal('TerraDart smoke Docker repository'),
        dependsOn: [ResourceDependency(apiAr)],
      ),
    );

    add(
      GoogleArtifactRegistryRule(
        localName: 'deny_download',
        repositoryId: TfArg.ref(repo.repositoryIdRef),
        location: TfArg.literal(location),
        ruleId: TfArg.literal('deny-all-downloads'),
        action: TfArg.literal(ArtifactRegistryRuleAction.deny),
        operation: TfArg.literal(ArtifactRegistryRuleOperation.download),
        dependsOn: [ResourceDependency(repo)],
      ),
    );

    // Distinct short name from tags_quickstart (`terradart-env`) so both
    // examples can apply in the same project during the monthly sweep.
    final envKey = add(
      GoogleTagsTagKey(
        localName: 'ar_env',
        shortName: TfArg.literal('terradart-ar-env'),
        parent: TfArg.literal('projects/${current.number.interpolation}'),
        description: TfArg.literal('Artifact Registry environment tag'),
      ),
    );

    final smoke = add(
      GoogleTagsTagValue(
        localName: 'ar_smoke',
        shortName: TfArg.literal('smoke'),
        parent: TfArg.ref(envKey.id),
        description: TfArg.literal('Smoke-test environment'),
      ),
    );

    add(
      GoogleTagsLocationTagBinding(
        localName: 'repo_env',
        parent: TfArg.literal(
          '//artifactregistry.googleapis.com/projects/'
          '${current.number.interpolation}/locations/$location/repositories/'
          '${repo.repositoryIdRef.interpolation}',
        ),
        tagValue: TfArg.ref(smoke.id),
        location: TfArg.literal(location),
        dependsOn: [ResourceDependency(repo), ResourceDependency(smoke)],
      ),
    );

    addExport(
      'AR_PROJECT_CONFIG_NAME',
      ResourceIdExport(projectConfig.nameRef, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/artifact_registry_stack.app.dart');
  }
}
