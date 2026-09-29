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
      name: .literal(serviceName),
      location: .literal(region),
      ingress: .literal(.all),
      iapEnabled: .literal(true),
      deletionProtection: .literal(false),
      template: CloudRunV2ServiceTemplate(
        serviceAccount: .of(identity.serviceAccount),
        maxInstanceRequestConcurrency: .literal(80),
        timeout: .literal('300s'),
        vpcAccess: CloudRunV2ServiceTemplateVpcAccess(
          egress: .literal(.privateRangesOnly),
          connection: .networkInterfaces([
            CloudRunV2ServiceTemplateVpcAccessNetworkInterfaces(
              network: .of(network.vpc),
              subnetwork: .of(network.subnet),
            ),
          ]),
        ),
        scaling: const CloudRunV2ServiceTemplateScaling(
          minInstanceCount: TfArgLiteral(0),
          maxInstanceCount: TfArgLiteral(2),
        ),
        containers: [
          CloudRunV2ServiceTemplateContainers(
            name: .literal('app'),
            image: .literal(imageUri),
            ports: const CloudRunV2ServiceTemplateContainersPorts(
              containerPort: TfArgLiteral(8080),
            ),
            resources: CloudRunV2ServiceTemplateContainersResources(
              limits: .literal({'cpu': '1', 'memory': '512Mi'}),
              cpuIdle: .literal(true),
              startupCpuBoost: .literal(true),
            ),
          ),
          CloudRunV2ServiceTemplateContainers(
            name: .literal('cloud-sql-proxy'),
            image: .literal(cloudSqlProxyImage),
            args: .literal([
              '--private-ip',
              '--port=5432',
              '--auto-iam-authn',
              database.instanceConnectionName,
            ]),
            resources: CloudRunV2ServiceTemplateContainersResources(
              limits: .literal({'cpu': '0.5', 'memory': '256Mi'}),
              cpuIdle: .literal(false),
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
      name: .ref(service.nameRef),
      location: .literal(region),
      role: .literal('roles/run.invoker'),
      member: .literal('user:$invokerEmail'),
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
      name: .ref(service.nameRef),
      location: .literal(region),
      role: .literal('roles/run.invoker'),
      member: .literal(
        'serviceAccount:service-${project.number.interpolation}'
        '@gcp-sa-iap.iam.gserviceaccount.com',
      ),
      dependsOn: [ResourceDependency(service), ResourceDependency(iapApi)],
    ),
  );

  stack.add(
    IapWebCloudRunServiceIamMember(
      localName: 'speaker_iap_access',
      cloudRunServiceName: .ref(service.nameRef),
      location: .literal(region),
      role: .literal('roles/iap.httpsResourceAccessor'),
      member: .literal('user:$invokerEmail'),
      dependsOn: [ResourceDependency(service), ResourceDependency(iapApi)],
    ),
  );

  return service;
}
