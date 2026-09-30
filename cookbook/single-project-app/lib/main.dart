/// single-project-app recipe — webhook on Cloud Run with private Cloud SQL,
/// Pub/Sub event ingestion, and Monitoring coverage. Single-GCP-project
/// pattern: all resources live in one project, no cross-project IAM, local
/// `tf-out/` working dir.
///
/// The Stack composition is split across per-service files (`apis.dart`,
/// `network.dart`, `datastore.dart`, `iam.dart`, `service.dart`,
/// `observability.dart`), each exposing pure builder functions that RETURN
/// constructed resources. `main.dart` is the only place that calls
/// `Stack.add(...)`, so the whole composition is visible at a glance.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';

import 'apis.dart';
import 'datastore.dart';
import 'iam.dart';
import 'network.dart';
import 'observability.dart';
import 'service.dart';

final class SingleProjectAppStack extends Stack {
  SingleProjectAppStack({
    required this.projectId,
    required this.dbPassword,
    required this.alertEmail,
  }) : super(
         providers: [
           GoogleProvider(project: projectId, region: 'asia-northeast1'),
         ],
         backend: const LocalBackend(),
         appExports: AppExports('lib/generated/single_project_app.app.dart'),
         devMode: true,
       ) {
    // ===== Tier 1 — API enablement (8 services) ===========================
    for (final api in buildProjectServices()) {
      add(api);
    }

    // ===== Tier 2 — Network (VPC + PSA chain) =============================
    final vpc = add(buildVpc());
    add(buildPsaRange(vpc));
    final psaConnection = add(buildPsaConnection(vpc));

    // ===== Tier 3 — Datastore (Cloud SQL + Secret Manager) ================
    final sqlInstance = add(
      buildSqlInstance(vpc: vpc, psaConnection: psaConnection),
    );
    final sqlDatabase = add(buildSqlDatabase(sqlInstance));
    add(buildSqlUser(sqlInstance, dbPassword));
    final dbPasswordSecret = add(buildDbPasswordSecret());
    add(buildDbPasswordSecretVersion(dbPasswordSecret, dbPassword));

    // ===== Tier 4 — IAM (SA + role bindings + secret access) ==============
    final runSa = add(buildRunSa());
    for (final binding in buildProjectIamBindings(
      projectId: projectId,
      runSa: runSa,
    )) {
      add(binding);
    }
    add(buildSecretIamMember(dbPasswordSecret, runSa));

    // ===== Tier 5 — Cloud Run v2 service ==================================
    final coffeeService = add(
      buildCloudRunService(
        runSa: runSa,
        sqlInstance: sqlInstance,
        sqlDatabase: sqlDatabase,
        dbPasswordSecret: dbPasswordSecret,
      ),
    );
    add(buildCloudRunInvoker(coffeeService));

    // ===== Tier 6 — Pub/Sub + Monitoring ==================================
    final orderTopic = add(buildOrderTopic());
    add(
      buildOrderSubscription(
        orderTopic: orderTopic,
        coffeeService: coffeeService,
        runSa: runSa,
      ),
    );
    final emailChannel = add(buildEmailChannel(alertEmail));
    add(buildUptimeCheck(coffeeService));
    add(buildDownAlert(emailChannel));

    // ===== Outputs and constants — IaC ↔ application seam =================
    // `coffee_service_uri` is apply-time known (Cloud Run assigns the URL),
    // so it surfaces as a Terraform output that the README's smoke recipe
    // consumes via `terraform output -raw coffee_service_uri`.
    //
    // `serviceName` and `region` read the service's literal `name` and
    // `location` at synth into `static const`s of
    // `lib/generated/single_project_app.app.dart`, so any consumer that
    // depends on this package gets typed (rename-safe) access without a
    // second copy of the string literals.
    addOutput(
      'coffee_service_uri',
      .ref(coffeeService.uri),
      description:
          'URL of the Cloud Run v2 service. Populated after terraform apply.',
    );
    addConstant(
      'serviceName',
      .ref(
        coffeeService.nameRef,
        description:
            'Cloud Run v2 service name. Matches the Terraform resource name.',
      ),
    );
    addConstant(
      'region',
      .ref(
        coffeeService.locationRef,
        description: 'GCP region this recipe deploys into.',
      ),
    );
  }

  final String projectId;
  final String dbPassword;
  final String alertEmail;
}
