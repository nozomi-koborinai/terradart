/// Artifact Registry quickstart — project config, Docker repo, download rule.
///
/// Defines an `ArtifactRegistryStack` that enables the Artifact Registry API,
/// manages the per-location `google_artifact_registry_project_config`
/// (platform logs), creates an empty Docker repository, and attaches a
/// repository-level DENY DOWNLOAD rule.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/artifact_registry.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Artifact Registry Stack: API + project config + repo + download rule.
final class ArtifactRegistryStack extends Stack {
  ArtifactRegistryStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    const location = 'asia-northeast1';
    const repositoryId = 'terradart-docker';

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

    addExport(
      'AR_PROJECT_CONFIG_NAME',
      ResourceIdExport(projectConfig.nameRef, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/artifact_registry_stack.app.dart');
  }
}
