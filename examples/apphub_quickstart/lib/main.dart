/// App Hub quickstart — host boundary + regional application.
///
/// [GoogleApphubService], [GoogleApphubWorkload], and
/// [GoogleApphubServiceProjectAttachment] need a second (service) project and
/// discovered resource URIs; they are deferred to [tool/example_debt.yaml].
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/apphub.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

final class ApphubStack extends Stack {
  ApphubStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final current = addData(GoogleProject(localName: 'current'));

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.apphub],
      propagationDelay: const Duration(seconds: 60),
    );

    add(
      GoogleApphubBoundary(
        localName: 'host',
        location: TfArg.literal('global'),
        crmNode: TfArg.literal(
          'projects/${current.number.interpolation}',
        ),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleApphubApplication(
        localName: 'orders',
        location: TfArg.literal('us-central1'),
        applicationId: TfArg.literal('terradart-orders'),
        displayName: TfArg.literal('TerraDart orders app'),
        scope: ApphubApplicationScope(
          type: TfArg.literal(ApphubApplicationScopeType.regional),
        ),
        dependsOn: apiDeps,
      ),
    );
  }
}
