/// BigQuery reservation group quickstart — a named slots container.
///
/// Enables `bigqueryreservation.googleapis.com` and provisions an empty
/// reservation group. Creating a group alone does not allocate slots or
/// bill capacity.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// BigQuery reservation stack: empty reservation group.
final class ReservationGroupStack extends Stack {
  ReservationGroupStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiReservation = add(
      GoogleProjectService(
        localName: 'api_bigqueryreservation',
        service: TfArg.literal('bigqueryreservation.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleBigqueryReservationGroup(
        localName: 'analytics',
        name: TfArg.literal('terradart-res-group'),
        location: TfArg.literal('US'),
        dependsOn: [ResourceDependency(apiReservation)],
      ),
    );
  }
}
