import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/artifact_registry.dart';
import 'package:terradart_google/project.dart';

import 'constants.dart';

final class LunchApis {
  const LunchApis({
    required this.apiDeps,
    required this.vertexApi,
    required this.iapApi,
  });

  final List<ResourceDependency> apiDeps;
  final GoogleProjectService vertexApi;
  final GoogleProjectService iapApi;
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
      service: .literal('aiplatform.googleapis.com'),
      disableOnDestroy: .literal(false),
    ),
  );

  final iapApi = stack.add(
    GoogleProjectService(
      localName: 'api_iap',
      service: .literal('iap.googleapis.com'),
      disableOnDestroy: .literal(false),
    ),
  );

  stack.add(
    GoogleArtifactRegistryRepository(
      localName: 'app_images',
      repositoryId: .literal(repositoryId),
      format: .literal('DOCKER'),
      location: .literal(region),
      description: .literal('Lunch Concierge demo container images'),
      dependsOn: apiDeps,
    ),
  );

  return LunchApis(apiDeps: apiDeps, vertexApi: vertexApi, iapApi: iapApi);
}
