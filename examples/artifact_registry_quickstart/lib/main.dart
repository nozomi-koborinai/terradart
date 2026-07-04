/// Artifact Registry quickstart — project-level platform logs config.
///
/// Defines an `ArtifactRegistryStack` that enables the Artifact Registry API
/// and acquires/updates the per-location `google_artifact_registry_project_config`
/// (platform logs policy). The API auto-creates this config; Terraform manages
/// the live settings.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/artifact_registry.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Artifact Registry Stack: API enablement + project config platform logs.
final class ArtifactRegistryStack extends Stack {
  ArtifactRegistryStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
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
        location: TfArg.literal('asia-northeast1'),
        platformLogsConfig:
            const ArtifactRegistryProjectConfigPlatformLogsConfig(
          loggingState: ArtifactRegistryPlatformLogsLoggingState.enabled,
          severityLevel: ArtifactRegistryPlatformLogsSeverityLevel.info,
        ),
        dependsOn: [ResourceDependency(apiAr)],
      ),
    );

    addExport(
      'AR_PROJECT_CONFIG_NAME',
      ResourceIdExport(projectConfig.nameRef, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/artifact_registry_stack.app.dart');
  }
}
