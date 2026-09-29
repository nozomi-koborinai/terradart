/// Tier 5: Cloud Run v2 service.
library;

import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/cloud_sql.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/secret_manager.dart';

GoogleCloudRunV2Service buildCloudRunService({
  required GoogleServiceAccount runSa,
  required GoogleSqlDatabaseInstance sqlInstance,
  required GoogleSqlDatabase sqlDatabase,
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
      CloudRunV2ServiceTemplateContainers(
        image: .literal('us-docker.pkg.dev/cloudrun/container/hello'),
        env: [
          CloudRunV2ServiceTemplateContainersEnv(
            name: .literal('DB_INSTANCE'),
            source: .value(.ref(sqlInstance.connectionName)),
          ),
          CloudRunV2ServiceTemplateContainersEnv(
            name: .literal('DB_NAME'),
            source: .value(.ref(sqlDatabase.nameRef)),
          ),
          CloudRunV2ServiceTemplateContainersEnv(
            name: .literal('DB_USER'),
            source: .value(.literal('coffee_app')),
          ),
          CloudRunV2ServiceTemplateContainersEnv(
            name: .literal('DB_PASSWORD'),
            source: .valueSource(
              CloudRunV2ServiceTemplateContainersEnvValueSource(
                secretKeyRef:
                    CloudRunV2ServiceTemplateContainersEnvValueSourceSecretKeyRef(
                      secret: .ref(dbPasswordSecret.id),
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
