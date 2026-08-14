/// Cloud Spanner user-managed instance config quickstart.
///
/// Enables `spanner.googleapis.com` and creates a custom instance
/// configuration cloned from Google-managed `nam11` plus one optional
/// `us-west1` READ_ONLY replica. Creating the config does not create a
/// Spanner instance and does not reserve nodes or processing units.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/spanner.dart';

/// Spanner stack: user-managed instance config only (no instance).
final class SpannerInstanceConfigStack extends Stack {
  SpannerInstanceConfigStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiSpanner = add(
      GoogleProjectService(
        localName: 'api_spanner',
        service: TfArg.literal('spanner.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleSpannerInstanceConfig(
        localName: 'custom_nam11',
        name: TfArg.literal('custom-td-nam11-ro'),
        displayName: TfArg.literal('TerraDart nam11 + us-west1 RO'),
        baseConfig: TfArg.literal('nam11'),
        replicas: [
          SpannerInstanceConfigReplicas(
            location: TfArg.literal('us-west1'),
            type: TfArg.literal(SpannerInstanceConfigReplicasType.readOnly),
            defaultLeaderLocation: TfArg.literal(false),
          ),
        ],
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(apiSpanner)],
      ),
    );
  }
}
