import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/artifact_registry.dart';
import 'package:terradart_google/project.dart';

import 'constants.dart';

final class LunchApis {
  const LunchApis({required this.apiDeps, required this.vertexApi});

  final List<ResourceDependency> apiDeps;
  final GoogleProjectService vertexApi;
}

LunchApis addApisAndRepository(Stack stack) {
  final apiDeps = Apis.enable(
    stack,
    barrels: [
      Barrels.artifactRegistry,
      Barrels.cloudRun,
      Barrels.compute,
      Barrels.serviceNetworking,
      Barrels.sql,
    ],
  );

  final vertexApi = stack.add(
    GoogleProjectService(
      localName: 'api_aiplatform',
      service: TfArg.literal('aiplatform.googleapis.com'),
      disableOnDestroy: TfArg.literal(false),
    ),
  );

  stack.add(
    GoogleArtifactRegistryRepository(
      localName: 'app_images',
      repositoryId: TfArg.literal(repositoryId),
      format: TfArg.literal('DOCKER'),
      location: TfArg.literal(region),
      description: TfArg.literal('Lunch Concierge demo container images'),
      dependsOn: apiDeps,
    ),
  );

  return LunchApis(apiDeps: apiDeps, vertexApi: vertexApi);
}
