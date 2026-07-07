import 'package:terradart_core/terradart_core.dart';
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
  required List<ResourceDependency> apiDeps,
  required Resource vertexApi,
  required Resource iapApi,
  required LunchNetwork network,
  required LunchDatabase database,
  required LunchRuntimeIdentity identity,
}) {
  final service = stack.add(
    GoogleCloudRunV2Service(
      localName: 'lunch_concierge',
      name: TfArg.literal(serviceName),
      location: TfArg.literal(region),
      ingress: TfArg.literal(Ingress.all),
      iapEnabled: TfArg.literal(true),
      deletionProtection: TfArg.literal(false),
      template: CloudRunV2ServiceTemplate(
        serviceAccount: TfArg.ref(identity.serviceAccount.email),
        maxInstanceRequestConcurrency: TfArg.literal(80),
        timeout: TfArg.literal('300s'),
        vpcAccess: CloudRunV2ServiceVpcAccess(
          connector: TfArg.ref(network.runConnector.selfLink),
          egress: TfArg.literal(VpcAccessEgress.privateRangesOnly),
        ),
        scaling: const CloudRunV2ServiceTemplateScaling(
          minInstanceCount: TfArgLiteral(0),
          maxInstanceCount: TfArgLiteral(2),
        ),
        containers: [
          CloudRunV2ServiceServiceContainer(
            name: TfArg.literal('app'),
            image: TfArg.literal(imageUri),
            ports: const CloudRunV2ServiceContainerPort(
              containerPort: TfArgLiteral(8080),
            ),
            resources: CloudRunV2ServiceContainerResources(
              limits: TfArg.literal({'cpu': '1', 'memory': '512Mi'}),
              cpuIdle: TfArg.literal(true),
              startupCpuBoost: TfArg.literal(true),
            ),
          ),
          CloudRunV2ServiceServiceContainer(
            name: TfArg.literal('cloud-sql-proxy'),
            image: TfArg.literal(cloudSqlProxyImage),
            args: TfArg.literal([
              '--private-ip',
              '--port=5432',
              '--auto-iam-authn',
              database.instanceConnectionName,
            ]),
            resources: CloudRunV2ServiceContainerResources(
              limits: TfArg.literal({'cpu': '0.5', 'memory': '256Mi'}),
              cpuIdle: TfArg.literal(false),
            ),
          ),
        ],
      ),
      traffic: const [
        CloudRunV2ServiceTraffic(
          type: TfArgLiteral(TrafficTargetAllocationType.latest),
          percent: TfArgLiteral(100),
        ),
      ],
      dependsOn: [
        ...apiDeps,
        ResourceDependency(vertexApi),
        ResourceDependency(iapApi),
        ResourceDependency(network.subnet),
        ResourceDependency(network.runConnector),
        ResourceDependency(database.sql),
        ResourceDependency(database.database),
        ResourceDependency(database.sqlUser),
        ResourceDependency(identity.serviceAccount),
        ResourceDependency(identity.cloudSqlClientGrant),
        ResourceDependency(identity.instanceUserGrant),
        ResourceDependency(identity.vertexUserGrant),
      ],
    ),
  );

  stack.add(
    GoogleCloudRunV2ServiceIamMember(
      localName: 'speaker_invoker',
      name: TfArg.ref(service.nameRef),
      location: TfArg.literal(region),
      role: TfArg.literal('roles/run.invoker'),
      member: TfArg.literal('user:$invokerEmail'),
      dependsOn: [ResourceDependency(service)],
    ),
  );

  final project = stack.addData(GoogleProject(localName: 'project'));

  // IAP fronts the run.app URL, so the IAP service agent is the caller
  // Cloud Run must authorize. The agent exists once the IAP API identity
  // is provisioned (see README bootstrap note).
  stack.add(
    GoogleCloudRunV2ServiceIamMember(
      localName: 'iap_agent_invoker',
      name: TfArg.ref(service.nameRef),
      location: TfArg.literal(region),
      role: TfArg.literal('roles/run.invoker'),
      member: TfArg.literal(
        'serviceAccount:service-${project.number.interpolation}'
        '@gcp-sa-iap.iam.gserviceaccount.com',
      ),
      dependsOn: [ResourceDependency(service), ResourceDependency(iapApi)],
    ),
  );

  stack.add(
    IapWebCloudRunServiceIamMember(
      localName: 'speaker_iap_access',
      cloudRunServiceName: TfArg.ref(service.nameRef),
      location: TfArg.literal(region),
      role: TfArg.literal('roles/iap.httpsResourceAccessor'),
      member: TfArg.literal('user:$invokerEmail'),
      dependsOn: [ResourceDependency(service), ResourceDependency(iapApi)],
    ),
  );

  return service;
}
