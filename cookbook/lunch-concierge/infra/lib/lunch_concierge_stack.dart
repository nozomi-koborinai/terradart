/// Lunch Concierge infrastructure.
///
/// This Stack keeps Terraform as the execution layer while authoring the
/// Cloud Run + Cloud SQL + Vertex AI surface in Dart.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/cloud_sql.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/service_networking.dart';
import 'package:terradart_google/time.dart';

const _region = 'asia-northeast1';
const _serviceName = 'lunch-concierge';
const _vpcName = 'lunch-vpc';
const _subnetName = 'lunch-subnet';
const _subnetCidr = '10.10.0.0/24';
const _psaRangeName = 'lunch-psa-range';
const _sqlInstanceName = 'lunch-sql';
const _databaseName = 'lunch';
const _sqlClientAccountId = 'lunch-sql-client';
const _cloudSqlProxyImage =
    'gcr.io/cloud-sql-connectors/cloud-sql-proxy:2.22.1';

final class LunchStack extends Stack {
  LunchStack({
    required String projectId,
    required String imageUri,
    required String invokerEmail,
  }) : super(
          providers: [
            GoogleProvider(project: projectId, region: _region),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [
        Barrels.cloudRun,
        Barrels.compute,
        Barrels.serviceNetworking,
        Barrels.sql,
      ],
    );

    final vertexApi = add(
      GoogleProjectService(
        localName: 'api_aiplatform',
        service: TfArg.literal('aiplatform.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final vpc = add(
      GoogleComputeNetwork(
        localName: 'lunch_vpc',
        name: TfArg.literal(_vpcName),
        autoCreateSubnetworks: TfArg.literal(false),
        dependsOn: apiDeps,
      ),
    );

    final subnet = add(
      GoogleComputeSubnetwork(
        localName: 'lunch_subnet',
        name: TfArg.literal(_subnetName),
        region: TfArg.literal(_region),
        network: TfArg.ref(vpc.selfLink),
        ipCidrRange: TfArg.literal(_subnetCidr),
        privateIpGoogleAccess: TfArg.literal(true),
        dependsOn: [ResourceDependency(vpc)],
      ),
    );

    final psaRange = add(
      GoogleComputeGlobalAddress(
        localName: 'psa_range',
        name: TfArg.literal(_psaRangeName),
        addressType: TfArg.literal(GlobalAddressType.internal),
        purpose: TfArg.literal(GlobalAddressPurpose.vpcPeering),
        prefixLength: TfArg.literal(16),
        network: TfArg.ref(vpc.selfLink),
        dependsOn: [ResourceDependency(vpc)],
      ),
    );

    final psaConnection = add(
      GoogleServiceNetworkingConnection(
        localName: 'psa',
        network: TfArg.ref(vpc.selfLink),
        service: TfArg.literal('servicenetworking.googleapis.com'),
        reservedPeeringRanges: TfArg.literal([psaRange.nameRef.interpolation]),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(psaRange),
        ],
      ),
    );

    final sql = add(
      GoogleSqlDatabaseInstance(
        localName: 'lunch_sql',
        name: TfArg.literal(_sqlInstanceName),
        databaseVersion: TfArg.literal(DatabaseVersion.postgres15),
        region: TfArg.literal(_region),
        deletionProtection: TfArg.literal(false),
        settings: SqlDatabaseInstanceSettings(
          tier: TfArg.literal('db-f1-micro'),
          availabilityType: TfArg.literal(SqlAvailabilityType.zonal),
          edition: TfArg.literal(SqlEdition.enterprise),
          diskSize: TfArg.literal(10),
          diskType: TfArg.literal(SqlDiskType.pdSsd),
          databaseFlags: [
            SqlDatabaseInstanceDatabaseFlag(
              name: TfArg.literal('cloudsql.iam_authentication'),
              value: TfArg.literal('on'),
            ),
          ],
          ipConfiguration: SqlDatabaseInstanceIpConfiguration(
            ipv4Enabled: TfArg.literal(false),
            privateNetwork: TfArg.ref(vpc.selfLink),
            allocatedIpRange: TfArg.ref(psaRange.nameRef),
          ),
        ),
        dependsOn: [ResourceDependency(psaConnection)],
      ),
    );

    add(
      GoogleSqlDatabase(
        localName: 'lunch',
        instance: TfArg.ref(sql.nameRef),
        name: TfArg.literal(_databaseName),
        dependsOn: [ResourceDependency(sql)],
      ),
    );

    final sqlClient = add(
      GoogleServiceAccount(
        localName: 'sql_client',
        accountId: TfArg.literal(_sqlClientAccountId),
        displayName: TfArg.literal('Lunch Concierge runtime and SQL client'),
      ),
    );

    final sqlIamUserName =
        '$_sqlClientAccountId@$projectId.iam.gserviceaccount.com';
    final databaseUser = '$_sqlClientAccountId@$projectId.iam';
    add(
      GoogleSqlUser(
        localName: 'sql_client',
        instance: TfArg.ref(sql.nameRef),
        name: TfArg.literal(sqlIamUserName),
        type: TfArg.literal(SqlUserType.cloudIamServiceAccount),
        dependsOn: [
          ResourceDependency(sql),
          ResourceDependency(sqlClient),
        ],
      ),
    );

    add(
      GoogleProjectIamMember(
        localName: 'sql_client_cloudsql_client',
        project: TfArg.literal(projectId),
        role: TfArg.literal('roles/cloudsql.client'),
        member: TfArg.ref(sqlClient.iamMember),
        dependsOn: [ResourceDependency(sqlClient)],
      ),
    );

    add(
      GoogleProjectIamMember(
        localName: 'sql_client_instance_user',
        project: TfArg.literal(projectId),
        role: TfArg.literal('roles/cloudsql.instanceUser'),
        member: TfArg.ref(sqlClient.iamMember),
        dependsOn: [ResourceDependency(sqlClient)],
      ),
    );

    add(
      GoogleProjectIamMember(
        localName: 'sql_client_vertex_user',
        project: TfArg.literal(projectId),
        role: TfArg.literal('roles/aiplatform.user'),
        member: TfArg.ref(sqlClient.iamMember),
        dependsOn: [
          ResourceDependency(sqlClient),
          ResourceDependency(vertexApi),
        ],
      ),
    );

    final instanceConnectionName = '$projectId:$_region:$_sqlInstanceName';
    final databaseUrl =
        'postgresql://$databaseUser@localhost:5432/$_databaseName';

    final service = add(
      GoogleCloudRunV2Service(
        localName: 'lunch_concierge',
        name: TfArg.literal(_serviceName),
        location: TfArg.literal(_region),
        ingress: TfArg.literal(Ingress.all),
        deletionProtection: TfArg.literal(false),
        template: CloudRunV2ServiceTemplate(
          serviceAccount: TfArg.ref(sqlClient.email),
          maxInstanceRequestConcurrency: TfArg.literal(80),
          timeout: TfArg.literal('300s'),
          vpcAccess: CloudRunV2ServiceVpcAccess(
            networkInterfaces: [
              CloudRunV2ServiceVpcNetworkInterface(
                network: TfArg.ref(vpc.id),
                subnetwork: TfArg.ref(subnet.id),
              ),
            ],
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
              dependsOn: TfArg.literal(['cloud-sql-proxy']),
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
              image: TfArg.literal(_cloudSqlProxyImage),
              args: TfArg.literal([
                '--private-ip',
                '--port=5432',
                '--auto-iam-authn',
                instanceConnectionName,
              ]),
              startupProbe: const CloudRunV2ServiceStartupProbe(
                tcpSocket: CloudRunV2ServiceTcpSocketAction(
                  port: TfArgLiteral(5432),
                ),
                periodSeconds: TfArgLiteral(2),
                failureThreshold: TfArgLiteral(30),
              ),
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
          ResourceDependency(subnet),
          ResourceDependency(sql),
          ResourceDependency(sqlClient),
        ],
      ),
    );

    add(
      GoogleCloudRunV2ServiceIamMember(
        localName: 'speaker_invoker',
        name: TfArg.ref(service.nameRef),
        location: TfArg.literal(_region),
        role: TfArg.literal('roles/run.invoker'),
        member: TfArg.literal('user:$invokerEmail'),
        dependsOn: [ResourceDependency(service)],
      ),
    );

    addExport('REGION', StringExport(_region));
    addExport('PROJECT_ID', StringExport(projectId));
    addExport('SERVICE_NAME', StringExport(_serviceName));
    addExport('DATABASE_NAME', StringExport(_databaseName));
    addExport('DATABASE_USER', StringExport(databaseUser));
    addExport('DATABASE_URL', StringExport(databaseUrl));
    addExport(
      'CLOUD_SQL_INSTANCE_CONNECTION_NAME',
      StringExport(instanceConnectionName),
    );
    setAppExportsOutputPath('../shared/lib/generated/lunch_stack.app.dart');
  }
}
