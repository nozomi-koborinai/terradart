/// Tier 5: Cloud Run v2 service.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/secret_manager.dart';

/// [outputEnvironment] is `Stack.outputEnvironment()`: the Stack's outputs
/// as the variables the app's generated `SingleProjectAppOutputs.fromEnvironment`
/// reads.
GoogleCloudRunV2Service buildCloudRunService({
  required GoogleServiceAccount runSa,
  required Map<String, TfArg<String>> outputEnvironment,
  required GoogleSecretManagerSecret dbPasswordSecret,
}) => GoogleCloudRunV2Service(
  localName: 'coffee_service',
  name: .literal('coffee-shop'),
  location: .literal('asia-northeast1'),
  ingress: .literal(.all),
  deletionProtection: .literal(false),
  template: CloudRunV2ServiceTemplate(
    serviceAccount: .of(runSa),
    containers: [
      CloudRunV2ServiceContainers(
        image: .literal('us-docker.pkg.dev/cloudrun/container/hello'),
        env: [
          for (final MapEntry(:key, :value) in outputEnvironment.entries)
            CloudRunV2ServiceEnv(name: .literal(key), source: .value(value)),
          CloudRunV2ServiceEnv(
            name: .literal('DB_USER'),
            source: .value(.literal('coffee_app')),
          ),
          CloudRunV2ServiceEnv(
            name: .literal('DB_PASSWORD'),
            source: .valueSource(
              CloudRunV2ServiceValueSource(
                secretKeyRef: CloudRunV2ServiceSecretKeyRef(
                  secret: dbPasswordSecret.ref,
                  version: .literal('latest'),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  ),
);

GoogleCloudRunV2ServiceIamMember buildCloudRunInvoker(
  GoogleCloudRunV2Service coffeeService,
) => GoogleCloudRunV2ServiceIamMember(
  localName: 'coffee_invoker',
  name: .ref(coffeeService.nameRef),
  location: .literal('asia-northeast1'),
  role: .literal('roles/run.invoker'),
  // allUsers = public webhook. Acceptable for dogfood smoke; harden in
  // production by replacing with the upstream Pub/Sub push SA or similar.
  member: .literal('allUsers'),
);
