import 'package:terradart_google/artifact_registry.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_time/terradart_time.dart';

import 'constants.dart';

final class LunchApis {
  const LunchApis({
    required this.apiDeps,
    required this.vertexApi,
    required this.iapApi,
  });

  final List<TfAddressed> apiDeps;
  final GoogleProjectService vertexApi;
  final GoogleProjectService iapApi;
}

LunchApis addApisAndRepository(Stack stack) {
  final apis = [
    for (final api in [
      'artifactregistry',
      'compute',
      'run',
      'servicenetworking',
      'sqladmin',
      'vpcaccess',
    ])
      stack.add(
        GoogleProjectService(
          'api_$api',
          service: .literal('$api.googleapis.com'),
          disableOnDestroy: .literal(false),
        ),
      ),
  ];
  final apiDeps = [
    stack.add(
      TimeSleep(
        'api_propagation',
        createDuration: .duration(const Duration(seconds: 60)),
        triggers: .literal({
          for (final api in apis) api.localName: api.id.interpolation,
        }),
        dependsOn: apis,
      ),
    ),
  ];

  final vertexApi = stack.add(
    GoogleProjectService(
      'api_aiplatform',
      service: .literal('aiplatform.googleapis.com'),
      disableOnDestroy: .literal(false),
    ),
  );

  final iapApi = stack.add(
    GoogleProjectService(
      'api_iap',
      service: .literal('iap.googleapis.com'),
      disableOnDestroy: .literal(false),
    ),
  );

  stack.add(
    GoogleArtifactRegistryRepository(
      'app_images',
      repositoryId: .literal(repositoryId),
      format: .docker,
      location: .literal(region),
      description: .literal('Lunch Concierge demo container images'),
      dependsOn: apiDeps,
    ),
  );

  return LunchApis(apiDeps: apiDeps, vertexApi: vertexApi, iapApi: iapApi);
}
