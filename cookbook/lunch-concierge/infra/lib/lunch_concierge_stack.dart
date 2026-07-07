/// Lunch Concierge infrastructure.
///
/// This Stack keeps Terraform as the execution layer while authoring the
/// Cloud Run + Cloud SQL + Vertex AI surface in Dart.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

import 'src/apis.dart';
import 'src/cloud_run.dart';
import 'src/constants.dart';
import 'src/database.dart';
import 'src/exports.dart';
import 'src/network.dart';
import 'src/runtime_identity.dart';

final class LunchStack extends Stack {
  LunchStack({
    required String projectId,
    required String imageUri,
    required String invokerEmail,
  }) : super(
          providers: [
            GoogleProvider(project: projectId, region: region),
            const TimeProvider(),
          ],
        ) {
    final apis = addApisAndRepository(this);
    final network = addNetwork(this, apis.apiDeps);
    final identity = addRuntimeIdentity(
      stack: this,
      projectId: projectId,
      vertexApi: apis.vertexApi,
    );
    final database = addDatabase(
      stack: this,
      projectId: projectId,
      network: network,
      identity: identity,
    );
    addCloudRunService(
      stack: this,
      imageUri: imageUri,
      invokerEmail: invokerEmail,
      apiDeps: apis.apiDeps,
      vertexApi: apis.vertexApi,
      iapApi: apis.iapApi,
      network: network,
      database: database,
      identity: identity,
    );
    addLunchExports(
      stack: this,
      projectId: projectId,
      database: database,
    );
  }
}
