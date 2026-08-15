/// Tier 5: Cloud Run v2 service.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/cloud_sql.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/secret_manager.dart';

GoogleCloudRunV2Service buildCloudRunService({
  required GoogleServiceAccount runSa,
  required GoogleSqlDatabaseInstance sqlInstance,
  required GoogleSqlDatabase sqlDatabase,
  required GoogleSecretManagerSecret dbPasswordSecret,
}) =>
    GoogleCloudRunV2Service(
      localName: 'coffee_service',
      name: TfArg.literal('coffee-shop'),
      location: TfArg.literal('asia-northeast1'),
      ingress: TfArg.literal(Ingress.all),
      deletionProtection: TfArg.literal(false),
      template: CloudRunV2ServiceTemplate(
        serviceAccount: TfArg.ref(runSa.email),
        containers: [
          CloudRunV2ServiceServiceContainer(
            image: TfArg.literal(
              'us-docker.pkg.dev/cloudrun/container/hello',
            ),
            env: [
              CloudRunV2ServiceEnvVar(
                name: TfArg.literal('DB_INSTANCE'),
                source: CloudRunV2ServiceEnvVarFromLiteral(
                  TfArg.ref(sqlInstance.connectionName),
                ),
              ),
              CloudRunV2ServiceEnvVar(
                name: TfArg.literal('DB_NAME'),
                source: CloudRunV2ServiceEnvVarFromLiteral(
                  TfArg.ref(sqlDatabase.nameRef),
                ),
              ),
              CloudRunV2ServiceEnvVar(
                name: TfArg.literal('DB_USER'),
                source: CloudRunV2ServiceEnvVarFromLiteral(
                  TfArg.literal('coffee_app'),
                ),
              ),
              CloudRunV2ServiceEnvVar(
                name: TfArg.literal('DB_PASSWORD'),
                source: CloudRunV2ServiceEnvVarFromSecret(
                  secret: TfArg.ref(dbPasswordSecret.id),
                  version: TfArg.literal('latest'),
                ),
              ),
            ],
          ),
        ],
      ),
    );

GoogleCloudRunV2ServiceIamMember buildCloudRunInvoker(
  GoogleCloudRunV2Service coffeeService,
) =>
    GoogleCloudRunV2ServiceIamMember(
      localName: 'coffee_invoker',
      name: TfArg.ref(coffeeService.nameRef),
      location: TfArg.literal('asia-northeast1'),
      role: TfArg.literal('roles/run.invoker'),
      // allUsers = public webhook. Acceptable for dogfood smoke; harden in
      // production by replacing with the upstream Pub/Sub push SA or similar.
      member: TfArg.literal('allUsers'),
    );
