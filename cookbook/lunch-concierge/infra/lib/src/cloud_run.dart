import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/data.dart';

import 'constants.dart';
import 'database.dart';
import 'iap_access.dart';
import 'network.dart';
import 'runtime_identity.dart';

GoogleCloudRunV2Service addCloudRunService({
  required Stack stack,
  required String imageUri,
  required String invokerEmail,
  required List<TfAddressed> apiDeps,
  required Resource vertexApi,
  required Resource iapApi,
  required LunchNetwork network,
  required LunchDatabase database,
  required LunchRuntimeIdentity identity,
}) {
  final service = stack.add(
    GoogleCloudRunV2Service(
      'lunch_concierge',
      name: .literal(serviceName),
      location: .literal(region),
      ingress: .all,
      iapEnabled: .literal(true),
      deletionProtection: .literal(false),
      template: CloudRunV2ServiceTemplate(
        serviceAccount: .of(identity.serviceAccount),
        maxInstanceRequestConcurrency: .literal(80),
        timeout: .literal('300s'),
        vpcAccess: .new(
          egress: .privateRangesOnly,
          connection: .networkInterfaces([
            .new(network: .of(network.vpc), subnetwork: .of(network.subnet)),
          ]),
        ),
        scaling: const .new(
          minInstanceCount: TfArgLiteral(0),
          maxInstanceCount: TfArgLiteral(2),
        ),
        containers: [
          .new(
            name: .literal('app'),
            image: .literal(imageUri),
            ports: const .new(containerPort: TfArgLiteral(8080)),
            resources: .new(
              limits: .literal({'cpu': '1', 'memory': '512Mi'}),
              cpuIdle: .literal(true),
              startupCpuBoost: .literal(true),
            ),
          ),
          .new(
            name: .literal('cloud-sql-proxy'),
            image: .literal(cloudSqlProxyImage),
            args: .literal([
              '--private-ip',
              '--port=5432',
              '--auto-iam-authn',
              database.instanceConnectionName,
            ]),
            resources: .new(
              limits: .literal({'cpu': '0.5', 'memory': '256Mi'}),
              cpuIdle: .literal(false),
            ),
          ),
        ],
      ),
      traffic: const [
        CloudRunV2ServiceTraffic(
          type: TrafficTargetAllocationType.latest,
          percent: TfArgLiteral(100),
        ),
      ],
      dependsOn: [
        ...apiDeps,
        vertexApi,
        iapApi,
        network.subnet,
        database.sql,
        database.database,
        database.sqlUser,
        identity.serviceAccount,
        identity.cloudSqlClientGrant,
        identity.instanceUserGrant,
        identity.vertexUserGrant,
      ],
    ),
  );

  stack.add(
    GoogleCloudRunV2ServiceIamMember(
      'speaker_invoker',
      service: service.ref,
      role: .literal('roles/run.invoker'),
      member: .user(invokerEmail),
      dependsOn: [service],
    ),
  );

  final project = stack.add(DataGoogleProject('project'));

  // IAP fronts the run.app URL, so the IAP service agent is the caller
  // Cloud Run must authorize. The agent exists once the IAP API identity
  // is provisioned (see README bootstrap note).
  stack.add(
    GoogleCloudRunV2ServiceIamMember(
      'iap_agent_invoker',
      service: service.ref,
      role: .literal('roles/run.invoker'),
      member: .serviceAccount(
        'service-${project.number.interpolation}'
        '@gcp-sa-iap.iam.gserviceaccount.com',
      ),
      dependsOn: [service, iapApi],
    ),
  );

  stack.add(
    IapWebCloudRunServiceIamMember(
      'speaker_iap_access',
      cloudRunServiceName: service.name,
      location: .literal(region),
      role: .literal('roles/iap.httpsResourceAccessor'),
      member: .literal('user:$invokerEmail'),
      dependsOn: [service, iapApi],
    ),
  );

  return service;
}
