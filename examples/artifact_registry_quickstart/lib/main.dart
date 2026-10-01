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

    final current = add(GoogleProject('current'));

    final apiAr = add(
      GoogleProjectService(
        'api_artifactregistry',
        service: .literal('artifactregistry.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final projectConfig = add(
      GoogleArtifactRegistryProjectConfig(
        'ar_project_config',
        location: .literal(location),
        platformLogsConfig:
            const ArtifactRegistryProjectConfigPlatformLogsConfig(
              loggingState: ArtifactRegistryPlatformLogsLoggingState.enabled,
              severityLevel: ArtifactRegistryPlatformLogsSeverityLevel.info,
            ),
        dependsOn: [apiAr],
      ),
    );

    final repo = add(
      GoogleArtifactRegistryRepository(
        'docker',
        repositoryId: .literal(repositoryId),
        location: .literal(location),
        format: .literal('DOCKER'),
        description: .literal('TerraDart smoke Docker repository'),
        dependsOn: [apiAr],
      ),
    );

    add(
      GoogleArtifactRegistryRule(
        'deny_download',
        repositoryId: repo.ref,
        location: .literal(location),
        ruleId: .literal('deny-all-downloads'),
        action: .literal(.deny),
        operation: .literal(.download),
        dependsOn: [repo],
      ),
    );

    // Distinct short name from tags_quickstart (`terradart-env`) so both
    // examples can apply in the same project during the monthly sweep.
    final envKey = add(
      GoogleTagsTagKey(
        'ar_env',
        shortName: .literal('terradart-ar-env'),
        parent: .literal('projects/${current.number.interpolation}'),
        description: .literal('Artifact Registry environment tag'),
      ),
    );

    final smoke = add(
      GoogleTagsTagValue(
        'ar_smoke',
        shortName: .literal('smoke'),
        parent: envKey.ref,
        description: .literal('Smoke-test environment'),
      ),
    );

    add(
      GoogleTagsLocationTagBinding(
        'repo_env',
        parent: .literal(
          '//artifactregistry.googleapis.com/projects/'
          '${current.number.interpolation}/locations/$location/repositories/'
          '${repo.repositoryId.interpolation}',
        ),
        tagValue: smoke.ref,
        location: .literal(location),
        dependsOn: [repo, smoke],
      ),
    );

    addOutput('ar_project_config_name', projectConfig.name);
  }
}
