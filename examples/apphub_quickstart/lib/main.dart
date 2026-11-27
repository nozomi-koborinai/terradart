/// App Hub quickstart — host boundary + regional application.
///
/// [GoogleApphubService], [GoogleApphubWorkload], and
/// [GoogleApphubServiceProjectAttachment] need a second (service) project and
/// discovered resource URIs; they are deferred to [tool/example_debt.yaml].
library;

import 'package:terradart_google/apphub.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class ApphubStack extends Stack {
  ApphubStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    final current = add(DataGoogleProject('current'));

    final api = add(
      GoogleProjectService(
        'api_apphub',
        service: .literal('apphub.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiDeps = [
      add(
        TimeSleep(
          'api_propagation',
          createDuration: .duration(const Duration(seconds: 60)),
          triggers: .literal({api.localName: api.id.interpolation}),
          dependsOn: [api],
        ),
      ),
    ];

    add(
      GoogleApphubBoundary(
        'host',
        location: .literal('global'),
        crmNode: .literal('projects/${current.number.interpolation}'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleApphubApplication(
        'orders',
        location: .literal('us-central1'),
        applicationId: .literal('terradart-orders'),
        displayName: .literal('TerraDart orders app'),
        scope: ApphubApplicationScope(type: .regional),
        dependsOn: apiDeps,
      ),
    );
  }
}
