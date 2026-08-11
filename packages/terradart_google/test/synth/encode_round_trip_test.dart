// packages/terradart_google/test/synth/encode_round_trip_test.dart
//
// Gate 6: encode round-trip structural test (PR 2 of Plan 5.D codegen
// correctness work — see docs/superpowers/plans/2026-05-16-plan5d-2-encode-gate6-plan.md).
//
// Discovers every sealed-class member declared in production yaml overrides
// via [SealedClassExtractor], constructs a synthetic instance via the
// hand-curated [_syntheticInstances] lookup table, invokes encode() (with
// toArgMap() fallback), and asserts the encoded shape:
//
//   * the encoded value is non-empty (Map or single-element List<Map>);
//   * every required attr's snake_case schema key appears as a key SOMEWHERE
//     in the encoded payload (top-level or nested under a discriminator
//     block — the production wire format mostly puts ctor params inside a
//     `{<discriminator>: [<innerMap>]}` block per the schema's `nesting_mode`
//     conventions, so a recursive key walk is necessary);
//   * no raw TfArg<T> values leak ANYWHERE in the encoded payload
//     (every encoder should have unwrapped via `.toTfJson()` at
//     serialization time — walked recursively).
//
// Component B-3-a shipped the FRAMEWORK only — the lookup table was empty
// and the whole group was marked `skip:`. Component B-3-b (this commit)
// fills the table for all sealed-class members and removes the skip.
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/universal_invariants/sealed_class_extractor.dart';
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/agent.dart';
import 'package:terradart_google/app.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/bigtable.dart';
import 'package:terradart_google/certificate_manager.dart';
import 'package:terradart_google/cloud_build.dart';
import 'package:terradart_google/cloud_functions.dart';
import 'package:terradart_google/config.dart';
import 'package:terradart_google/dataplex.dart';
import 'package:terradart_google/colab.dart';
import 'package:terradart_google/dataproc.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/spanner.dart';
import 'package:terradart_google/cloud_scheduler.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/dlp.dart';
import 'package:terradart_google/edgecontainer.dart';
import 'package:terradart_google/firebase_app_hosting.dart';
import 'package:terradart_google/firestore.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/monitoring.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/notebooks.dart';
import 'package:terradart_google/os_config.dart';
import 'package:terradart_google/secret_manager.dart';
import 'package:terradart_google/storage.dart';
import 'package:terradart_google/vertex_ai.dart';
import 'package:test/test.dart';

/// Hand-curated lookup: sealed-class-member-name -> a thunk that returns a
/// constructed instance. Each thunk supplies synthetic `TfArg<T>` values for
/// required params and omits all optional params (the framework tests the
/// all-optionals-null encode path).
///
/// Add an entry per new sealed-class member shipped in future waves. Gate 6
/// fails loudly when a sealed-class is extracted from yaml but no entry
/// exists here — keeping the table in lockstep with yaml is a curator
/// responsibility.
///
/// SecretManagerSecretReplication members are private (`_AutoReplication` / `_UserManagedReplication`);
/// the lookup key uses the literal private-class name produced by the
/// extractor, but thunk bodies construct via the public `SecretManagerSecretReplication.auto()` /
/// `SecretManagerSecretReplication.userManaged(...)` factories.
final Map<String, Object Function()> _syntheticInstances = {
  // --- AgentRegistryServiceSpec (3) — google_agent_registry_service -------
  'AgentRegistryServiceAgentSpec': () => const AgentRegistryServiceAgentSpec(
        type: AgentRegistryServiceAgentSpecType.noSpec,
      ),
  'AgentRegistryServiceMcpServerSpec': () =>
      const AgentRegistryServiceMcpServerSpec(
        type: AgentRegistryServiceMcpServerSpecType.noSpec,
      ),
  'AgentRegistryServiceEndpointSpec': () =>
      const AgentRegistryServiceEndpointSpec(
        type: AgentRegistryServiceEndpointSpecType.noSpec,
      ),

  // --- NetworkServicesAgentGatewayDeployment (2) — agent_gateway ---------
  'NetworkServicesAgentGatewayGoogleManaged': () =>
      const NetworkServicesAgentGatewayGoogleManaged(
        governedAccessPath:
            NetworkServicesAgentGatewayGoogleManagedGovernedAccessPath
                .agentToAnywhere,
      ),
  'NetworkServicesAgentGatewaySelfManaged': () =>
      NetworkServicesAgentGatewaySelfManaged(
        resourceUri: TfArg.literal(
          '//networkservices.googleapis.com/projects/p/locations/global/gateways/g',
        ),
      ),

  // --- Access (8) — bigquery_dataset ---------------------------------------
  'BigqueryDatasetAccessUserByEmail': () => BigqueryDatasetAccessUserByEmail(
      userByEmail: TfArg.literal('user@example.com')),
  'BigqueryDatasetAccessGroupByEmail': () => BigqueryDatasetAccessGroupByEmail(
      groupByEmail: TfArg.literal('group@example.com')),
  'BigqueryDatasetAccessSpecialGroup': () => BigqueryDatasetAccessSpecialGroup(
      specialGroup: TfArg.literal('projectReaders')),
  'BigqueryDatasetAccessDomain': () =>
      BigqueryDatasetAccessDomain(domain: TfArg.literal('example.com')),
  'BigqueryDatasetAccessIamMember': () =>
      BigqueryDatasetAccessIamMember(iamMember: TfArg.literal('allUsers')),
  'BigqueryDatasetAccessView': () => BigqueryDatasetAccessView(
        view: BigqueryDatasetDatasetView(
          projectId: TfArg.literal('p'),
          datasetId: TfArg.literal('d'),
          tableId: TfArg.literal('t'),
        ),
      ),
  'BigqueryDatasetAccessDataset': () => BigqueryDatasetAccessDataset(
        dataset: BigqueryDatasetDatasetAccessChild(
          dataset: BigqueryDatasetDatasetReference(
            projectId: TfArg.literal('p'),
            datasetId: TfArg.literal('d'),
          ),
          targetTypes: [TfArg.literal('VIEWS')],
        ),
      ),
  'BigqueryDatasetAccessRoutine': () => BigqueryDatasetAccessRoutine(
        routine: BigqueryDatasetDatasetRoutineRef(
          projectId: TfArg.literal('p'),
          datasetId: TfArg.literal('d'),
          routineId: TfArg.literal('r'),
        ),
      ),

  // --- BigtableAppProfileRouting (3) — google_bigtable_app_profile -----------
  'BigtableAppProfileSingleClusterRouting': () =>
      BigtableAppProfileSingleClusterRouting(
        clusterId: TfArg.literal('c1'),
      ),
  'BigtableAppProfileStandardIsolation': () =>
      BigtableAppProfileStandardIsolation(
        priority:
            TfArg.literal(BigtableAppProfileIsolationPriority.priorityHigh),
      ),
  'BigtableAppProfileDataBoostIsolation': () =>
      BigtableAppProfileDataBoostIsolation(
        computeBillingOwner: TfArg.literal(
          BigtableAppProfileComputeBillingOwner.hostPays,
        ),
      ),

  // --- BigtableGcPolicyRule (2) — google_bigtable_gc_policy -----------------
  'BigtableGcPolicyMaxAge': () =>
      BigtableGcPolicyMaxAge(days: TfArg.literal(7)),
  'BigtableGcPolicyMaxVersion': () =>
      BigtableGcPolicyMaxVersion(number: TfArg.literal(1)),

  // --- AppEngineFlexibleAppVersionScaling (2) — app_engine_flexible_app_version
  'AppEngineFlexibleAppVersionAutomaticScalingMode': () =>
      AppEngineFlexibleAppVersionAutomaticScalingMode(
        minTotalInstances: TfArg.literal(1),
      ),
  'AppEngineFlexibleAppVersionManualScalingMode': () =>
      AppEngineFlexibleAppVersionManualScalingMode(
        instances: TfArg.literal(1),
      ),

  // --- EnvVarSource (2) — cloud_run_v2_service -----------------------------
  'CloudRunV2ServiceEnvVarFromLiteral': () =>
      CloudRunV2ServiceEnvVarFromLiteral(TfArg.literal('mock-value')),
  'CloudRunV2ServiceEnvVarFromSecret': () =>
      CloudRunV2ServiceEnvVarFromSecret(secret: TfArg.literal('mock-secret')),

  // --- VolumeSource (5) — cloud_run_v2_service -----------------------------
  'CloudRunV2ServiceVolumeSecret': () =>
      CloudRunV2ServiceVolumeSecret(secret: TfArg.literal('mock-secret')),
  'CloudRunV2ServiceCloudSqlVolume': () =>
      const CloudRunV2ServiceCloudSqlVolume(),
  'CloudRunV2ServiceEmptyDirVolume': () =>
      const CloudRunV2ServiceEmptyDirVolume(),
  'CloudRunV2ServiceGcsVolume': () =>
      CloudRunV2ServiceGcsVolume(bucket: TfArg.literal('mock-bucket')),
  'CloudRunV2ServiceNfsVolume': () => CloudRunV2ServiceNfsVolume(
        server: TfArg.literal('nfs.example.com'),
        path: TfArg.literal('/exports/data'),
      ),

  // --- JobEnvVarSource (2) — cloud_run_v2_job ------------------------------
  'CloudRunV2JobEnvVarFromLiteral': () =>
      CloudRunV2JobEnvVarFromLiteral(TfArg.literal('mock-value')),
  'CloudRunV2JobEnvVarFromSecret': () => CloudRunV2JobEnvVarFromSecret(
        secret: TfArg.literal('mock-secret'),
        version: TfArg.literal('latest'),
      ),

  // --- JobVolumeSource (5) — cloud_run_v2_job ------------------------------
  'CloudRunV2JobVolumeSecret': () =>
      CloudRunV2JobVolumeSecret(secret: TfArg.literal('mock-secret')),
  'CloudRunV2JobCloudSqlVolume': () => const CloudRunV2JobCloudSqlVolume(),
  'CloudRunV2JobEmptyDirVolume': () => const CloudRunV2JobEmptyDirVolume(),
  'CloudRunV2JobGcsVolume': () =>
      CloudRunV2JobGcsVolume(bucket: TfArg.literal('mock-bucket')),
  'CloudRunV2JobNfsVolume': () =>
      CloudRunV2JobNfsVolume(server: TfArg.literal('nfs.example.com')),

  // --- CloudSchedulerJobSchedulerTarget (3) — cloud_scheduler_job ---------------------------
  'CloudSchedulerJobPubsubTarget': () => CloudSchedulerJobPubsubTarget(
      topicName: TfArg.literal('projects/p/topics/t')),
  'CloudSchedulerJobHttpTarget': () => CloudSchedulerJobHttpTarget(
      uri: TfArg.literal('https://example.com/webhook')),
  'CloudSchedulerJobAppEngineHttpTarget': () =>
      CloudSchedulerJobAppEngineHttpTarget(
          relativeUri: TfArg.literal('/handler')),

  // --- SourceConfig (2) — cloudfunctions2_function -------------------------
  'StorageSource': () => StorageSource(
        bucket: TfArg.literal('mock-bucket'),
        object: TfArg.literal('mock-object.zip'),
      ),
  'RepoSource': () => RepoSource(repoName: TfArg.literal('mock-repo')),

  // --- UpdatePolicy (2) — cloudfunctions2_function -------------------------
  'AutomaticUpdatePolicy': () => const AutomaticUpdatePolicy(),
  'OnDeployUpdatePolicy': () => const OnDeployUpdatePolicy(),

  // --- ComputeHealthCheckProtocol (6) — compute_health_check ----------------
  'ComputeHealthCheckHttpHealthCheckConfig': () =>
      ComputeHealthCheckHttpHealthCheckConfig(port: TfArg.literal(80)),
  'ComputeHealthCheckHttpsHealthCheckConfig': () =>
      ComputeHealthCheckHttpsHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckHttp2HealthCheckConfig': () =>
      ComputeHealthCheckHttp2HealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckTcpHealthCheckConfig': () =>
      ComputeHealthCheckTcpHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckSslHealthCheckConfig': () =>
      ComputeHealthCheckSslHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckGrpcHealthCheckConfig': () =>
      ComputeHealthCheckGrpcHealthCheckConfig(port: TfArg.literal(50051)),

  // --- ComputeRegionHealthCheckProtocol (6) — region_health_check -----------
  'ComputeRegionHealthCheckRegionHealthCheckHttpConfig': () =>
      ComputeRegionHealthCheckRegionHealthCheckHttpConfig(
        port: TfArg.literal(80),
      ),
  'ComputeRegionHealthCheckRegionHealthCheckHttpsConfig': () =>
      ComputeRegionHealthCheckRegionHealthCheckHttpsConfig(
        port: TfArg.literal(443),
      ),
  'ComputeRegionHealthCheckRegionHealthCheckHttp2Config': () =>
      ComputeRegionHealthCheckRegionHealthCheckHttp2Config(
        port: TfArg.literal(443),
      ),
  'ComputeRegionHealthCheckRegionHealthCheckTcpConfig': () =>
      ComputeRegionHealthCheckRegionHealthCheckTcpConfig(
        port: TfArg.literal(443),
      ),
  'ComputeRegionHealthCheckRegionHealthCheckSslConfig': () =>
      ComputeRegionHealthCheckRegionHealthCheckSslConfig(
        port: TfArg.literal(443),
      ),
  'ComputeRegionHealthCheckRegionHealthCheckGrpcConfig': () =>
      ComputeRegionHealthCheckRegionHealthCheckGrpcConfig(
        port: TfArg.literal(50051),
      ),

  // --- ComputeFirewallRulePolicy (2) — compute_firewall --------------------
  'ComputeFirewallAllowPolicy': () => ComputeFirewallAllowPolicy(
        protocol: TfArg.literal('tcp'),
        ports: ['443'],
      ),
  'ComputeFirewallDenyPolicy': () => ComputeFirewallDenyPolicy(
        protocol: TfArg.literal('tcp'),
        ports: ['22'],
      ),

  // --- ComputeResourcePolicySnapshotSchedule (3) — compute_resource_policy --
  'ComputeResourcePolicyHourlySchedule': () =>
      ComputeResourcePolicyHourlySchedule(
        hoursInCycle: TfArg.literal(4),
        startTime: TfArg.literal('00:00'),
      ),
  'ComputeResourcePolicyDailySchedule': () =>
      ComputeResourcePolicyDailySchedule(
        daysInCycle: TfArg.literal(1),
        startTime: TfArg.literal('04:00'),
      ),
  'ComputeResourcePolicyWeeklySchedule': () =>
      ComputeResourcePolicyWeeklySchedule([
        ComputeResourcePolicyDayOfWeek(
          day: TfArg.literal(ComputeResourcePolicySnapshotDayOfWeek.monday),
          startTime: TfArg.literal('04:00'),
        ),
      ]),

  // --- ComputeRouteNextHop (5) — compute_route -----------------------------
  'ComputeRouteGatewayNextHop': () => ComputeRouteGatewayNextHop(
      nextHopGateway: TfArg.literal('default-internet-gateway')),
  'ComputeRouteIpNextHop': () =>
      ComputeRouteIpNextHop(nextHopIp: TfArg.literal('10.0.0.1')),
  'ComputeRouteInstanceNextHop': () => ComputeRouteInstanceNextHop(
      nextHopInstance: TfArg.literal('mock-instance')),
  'ComputeRouteIlbNextHop': () => ComputeRouteIlbNextHop(
      nextHopIlb: TfArg.literal('projects/p/regions/r/forwardingRules/fr')),
  'ComputeRouteVpnTunnelNextHop': () => ComputeRouteVpnTunnelNextHop(
      nextHopVpnTunnel: TfArg.literal('projects/p/regions/r/vpnTunnels/t')),

  // --- BigqueryConnectionBackend (7) — bigquery_connection -----------------
  'BigqueryConnectionCloudSql': () => BigqueryConnectionCloudSql(
        instanceId: TfArg.literal('p:us:inst'),
        database: TfArg.literal('db'),
        type: BigqueryConnectionCloudSqlType.postgres,
        credential: BigqueryConnectionCloudSqlCredential(
          username: TfArg.literal('user'),
          password: TfArg.literal('secret'),
        ),
      ),
  'BigqueryConnectionCloudSpanner': () => BigqueryConnectionCloudSpanner(
        database: TfArg.literal('db'),
      ),
  'BigqueryConnectionAws': () => BigqueryConnectionAws(
        accessRole: BigqueryConnectionAwsAccessRole(
          iamRoleId: TfArg.literal('arn:aws:iam::123:role/bq'),
        ),
      ),
  'BigqueryConnectionAzure': () => BigqueryConnectionAzure(
        customerTenantId: TfArg.literal('tenant'),
      ),
  'BigqueryConnectionCloudResource': () =>
      const BigqueryConnectionCloudResource(),
  'BigqueryConnectionSpark': () => const BigqueryConnectionSpark(),
  'BigqueryConnectionConfiguration': () => BigqueryConnectionConfiguration(
        connectorId: TfArg.literal('google-cloudsql-postgres'),
        asset: BigqueryConnectionConfigurationAsset(
          database: TfArg.literal('db'),
        ),
      ),

  // --- BigqueryJobConfiguration (4) — bigquery_job -------------------------
  'BigqueryJobQuery': () => BigqueryJobQuery(
        query: TfArg.literal('SELECT 1'),
      ),
  'BigqueryJobLoad': () => BigqueryJobLoad(
        sourceUris: TfArg.literal(['gs://bucket/obj']),
        destinationTable: BigqueryJobDestinationTable(
          tableId: TfArg.literal('t'),
        ),
      ),
  'BigqueryJobExtract': () => BigqueryJobExtract(
        destinationUris: TfArg.literal(['gs://bucket/out-*.csv']),
        sourceTable: BigqueryJobDestinationTable(
          tableId: TfArg.literal('t'),
        ),
      ),
  'BigqueryJobCopy': () => BigqueryJobCopy(
        sourceTables: [
          BigqueryJobDestinationTable(tableId: TfArg.literal('src')),
        ],
        destinationTable: BigqueryJobDestinationTable(
          tableId: TfArg.literal('dst'),
        ),
      ),

  // --- CloudbuildTriggerBuildSpec (3) — cloudbuild_trigger -----------------
  'CloudbuildTriggerFilenameSpec': () => CloudbuildTriggerFilenameSpec(
        filename: TfArg.literal('cloudbuild.yaml'),
      ),
  'CloudbuildTriggerInlineBuildSpec': () => CloudbuildTriggerInlineBuildSpec(
        build: CloudbuildTriggerBuild(
          step: [
            CloudbuildTriggerBuildStep(
              name: TfArg.literal('gcr.io/cloud-builders/docker'),
              args: TfArg.literal(['build', '.']),
            ),
          ],
        ),
      ),
  'CloudbuildTriggerGitFileSourceSpec': () =>
      CloudbuildTriggerGitFileSourceSpec(
        gitFileSource: CloudbuildTriggerGitFileSource(
          path: TfArg.literal('cloudbuild.yaml'),
          repoType: TfArg.literal(CloudBuildTriggerRepoType.github),
        ),
      ),

  // --- ConfigDeploymentBlueprintSource (2) — google_config_deployment ------
  'ConfigDeploymentBlueprintFromGcs': () => ConfigDeploymentBlueprintFromGcs(
        gcsSource: TfArg.literal('gs://mock-bucket/blueprint.zip'),
      ),
  'ConfigDeploymentBlueprintFromGit': () => ConfigDeploymentBlueprintFromGit(
        repo: TfArg.literal('https://github.com/example/terraform-blueprint'),
      ),

  // --- DataplexDatascanSpec (4) — google_dataplex_datascan -----------------
  'DataplexDatascanDataProfileSpec': () =>
      const DataplexDatascanDataProfileSpec(),
  'DataplexDatascanDataQualitySpec': () =>
      const DataplexDatascanDataQualitySpec(),
  'DataplexDatascanDataDiscoverySpec': () =>
      const DataplexDatascanDataDiscoverySpec(),
  'DataplexDatascanDataDocumentationSpec': () =>
      const DataplexDatascanDataDocumentationSpec(),

  // --- DataplexTaskWorkload (2) — google_dataplex_task ---------------------
  'DataplexTaskSparkWorkload': () => DataplexTaskSparkWorkload(
        sqlScript: TfArg.literal('SELECT 1'),
      ),
  'DataplexTaskNotebookWorkload': () => DataplexTaskNotebookWorkload(
        notebook: TfArg.literal('gs://mock-bucket/notebook.ipynb'),
      ),

  // --- DataprocBatchWorkload (4) — google_dataproc_batch -------------------
  'DataprocBatchPysparkWorkload': () => DataprocBatchPysparkWorkload(
        mainPythonFileUri: TfArg.literal('gs://mock-bucket/main.py'),
      ),
  'DataprocBatchSparkWorkload': () => DataprocBatchSparkWorkload(
        mainClass: TfArg.literal('com.example.Main'),
      ),
  'DataprocBatchSparkSqlWorkload': () => DataprocBatchSparkSqlWorkload(
        queryFileUri: TfArg.literal('gs://mock-bucket/query.sql'),
      ),
  'DataprocBatchSparkRWorkload': () => DataprocBatchSparkRWorkload(
        mainRFileUri: TfArg.literal('gs://mock-bucket/main.R'),
      ),

  // --- SpannerBackupScheduleBackupSpec (2) — google_spanner_backup_schedule
  'SpannerBackupScheduleFullBackupSpec': () =>
      const SpannerBackupScheduleFullBackupSpec(),
  'SpannerBackupScheduleIncrementalBackupSpec': () =>
      const SpannerBackupScheduleIncrementalBackupSpec(),

  // --- ColabNotebookExecutionSource (3) — google_colab_notebook_execution --
  'ColabNotebookExecutionDataformSource': () =>
      ColabNotebookExecutionDataformSource(
        dataformRepositoryResourceName: TfArg.literal(
          'projects/p/locations/us-central1/repositories/r',
        ),
      ),
  'ColabNotebookExecutionGcsSource': () => ColabNotebookExecutionGcsSource(
        uri: TfArg.literal('gs://mock-bucket/notebook.ipynb'),
      ),
  'ColabNotebookExecutionDirectSource': () =>
      ColabNotebookExecutionDirectSource(
        content: TfArg.literal('eyJuYiI6MX0='),
      ),

  // --- ColabNotebookExecutionCompute (2) -----------------------------------
  'ColabNotebookExecutionTemplateCompute': () =>
      ColabNotebookExecutionTemplateCompute(
        TfArg.literal(
          'projects/p/locations/us-central1/notebookRuntimeTemplates/t',
        ),
      ),
  'ColabNotebookExecutionCustomCompute': () =>
      ColabNotebookExecutionCustomCompute(
        TfArg.literal(const {
          'machine_spec': {'machine_type': 'e2-standard-4'},
        }),
      ),

  // --- ColabNotebookExecutionIdentity (2) ----------------------------------
  'ColabNotebookExecutionExecutionUser': () =>
      ColabNotebookExecutionExecutionUser(TfArg.literal('user@example.com')),
  'ColabNotebookExecutionServiceAccount': () =>
      ColabNotebookExecutionServiceAccount(
        TfArg.literal('sa@p.iam.gserviceaccount.com'),
      ),

  // --- EdgecontainerClusterControlPlane (2) — edgecontainer_cluster --------
  'EdgecontainerClusterControlPlaneRemote': () =>
      const EdgecontainerClusterControlPlaneRemote(),
  'EdgecontainerClusterControlPlaneLocal': () =>
      const EdgecontainerClusterControlPlaneLocal(),

  // --- MonitoringUptimeCheckTarget (3) — monitoring_uptime_check_config ----
  'MonitoringUptimeCheckConfigMonitoredResource': () =>
      MonitoringUptimeCheckConfigMonitoredResource(
        type: TfArg.literal('uptime_url'),
        labels: {'host': 'example.com'},
      ),
  'MonitoringUptimeCheckConfigResourceGroup': () =>
      MonitoringUptimeCheckConfigResourceGroup(
        groupId: TfArg.literal('my-group'),
      ),
  'MonitoringUptimeCheckConfigSyntheticMonitor': () =>
      MonitoringUptimeCheckConfigSyntheticMonitor(
        cloudFunctionV2: MonitoringUptimeCheckConfigCloudFunctionV2(
          name: TfArg.literal('projects/p/locations/us-central1/functions/f'),
        ),
      ),

  // --- AppHostingBuildSource (2) — firebase_app_hosting_build --------------
  'FirebaseAppHostingBuildAppHostingBuildSourceCodebase': () =>
      const FirebaseAppHostingBuildAppHostingBuildSourceCodebase(),
  'FirebaseAppHostingBuildAppHostingBuildSourceContainer': () =>
      FirebaseAppHostingBuildAppHostingBuildSourceContainer(
        image: TfArg.literal('us-central1-docker.pkg.dev/p/r/web:1.0.0'),
      ),

  // --- BackupRecurrence (2) — firestore_backup_schedule --------------------
  // These return List<Map<String, Object?>> (single-element, per the
  // nesting_mode: list, max_items: 1 schema convention). The dispatch logic
  // unwraps to the single inner map for the structural assertions.
  'FirestoreBackupScheduleDailyRecurrence': () =>
      const FirestoreBackupScheduleDailyRecurrence(),
  'FirestoreBackupScheduleWeeklyRecurrence': () =>
      const FirestoreBackupScheduleWeeklyRecurrence(),

  // --- StoredInfoTypeDefinition (3) — data_loss_prevention_stored_info_type -
  'DataLossPreventionStoredInfoTypeRegex': () =>
      DataLossPreventionStoredInfoTypeRegex(
        pattern: TfArg.literal(r'patient-\d{4}'),
      ),
  'DataLossPreventionStoredInfoTypeDictionary': () =>
      DataLossPreventionStoredInfoTypeDictionary(
        words: TfArg.literal(const ['ALPHA', 'BRAVO']),
      ),
  'DataLossPreventionStoredInfoTypeLargeCustomDictionary': () =>
      DataLossPreventionStoredInfoTypeLargeCustomDictionary(
        outputPath: TfArg.literal('gs://bucket/dlp-dict/'),
        cloudStorageFileSet: TfArg.literal('gs://bucket/phrases.txt'),
      ),

  // --- NotebooksEnvironmentImage (2) — notebooks_environment ---------------
  'NotebooksEnvironmentContainerImage': () =>
      NotebooksEnvironmentContainerImage(
        repository: TfArg.literal(
          'gcr.io/deeplearning-platform-release/base-cpu',
        ),
      ),
  'NotebooksEnvironmentVmImage': () => NotebooksEnvironmentVmImage(
        project: TfArg.literal('deeplearning-platform-release'),
        imageFamily: TfArg.literal('common-cpu'),
      ),

  // --- NotebooksInstanceImage (2) — notebooks_instance ---------------------
  'NotebooksInstanceContainerImage': () => NotebooksInstanceContainerImage(
        repository: TfArg.literal(
          'gcr.io/deeplearning-platform-release/base-cpu',
        ),
      ),
  'NotebooksInstanceVmImage': () => NotebooksInstanceVmImage(
        project: TfArg.literal('deeplearning-platform-release'),
        imageFamily: TfArg.literal('common-cpu-notebooks'),
      ),

  // --- OsConfigPatchDeploymentSchedule (2) — os_config_patch_deployment ------
  'OsConfigPatchDeploymentOneTimeSchedule': () =>
      OsConfigPatchDeploymentOneTimeSchedule(
        executeTime: TfArg.literal('2030-01-01T02:00:00Z'),
      ),
  'OsConfigPatchDeploymentRecurringSchedule': () =>
      OsConfigPatchDeploymentRecurringSchedule(
        timeZone: OsConfigPatchDeploymentRecurringScheduleTimeZone(
          id: TfArg.literal('America/New_York'),
        ),
        weekly: const OsConfigPatchDeploymentRecurringScheduleWeekly(
          dayOfWeek: OsConfigPatchDeploymentDayOfWeek.monday,
        ),
      ),

  // --- MonitoringSloSli (3) — monitoring_slo ---------------------------------
  'MonitoringSloBasicSli': () => MonitoringSloBasicSli(
        availability: MonitoringSloBasicSliAvailability(
          enabled: TfArg.literal(true),
        ),
      ),
  'MonitoringSloRequestBasedSli': () => MonitoringSloRequestBasedSli(
        goodTotalRatio: MonitoringSloGoodTotalRatio(
          goodServiceFilter: TfArg.literal('metric.type="test"'),
        ),
      ),
  'MonitoringSloWindowsBasedSli': () => MonitoringSloWindowsBasedSli(
        goodBadMetricFilter: TfArg.literal('metric.type="test"'),
        windowPeriod: TfArg.literal('3600s'),
        goodTotalRatioThreshold: MonitoringSloWindowsGoodTotalRatioThreshold(
          threshold: TfArg.literal(0.95),
        ),
      ),

  // --- IamWorkloadIdentityPoolProviderTrustSource (4) — iam WIF provider ---
  'IamWorkloadIdentityPoolProviderOidcTrust': () =>
      IamWorkloadIdentityPoolProviderOidcTrust(
        issuerUri: TfArg.literal('https://token.actions.githubusercontent.com'),
      ),
  'IamWorkloadIdentityPoolProviderAwsTrust': () =>
      const IamWorkloadIdentityPoolProviderAwsTrust(),
  'IamWorkloadIdentityPoolProviderSamlTrust': () =>
      IamWorkloadIdentityPoolProviderSamlTrust(
        idpMetadataXml: TfArg.literal('<xml/>'),
      ),
  'IamWorkloadIdentityPoolProviderX509Trust': () =>
      const IamWorkloadIdentityPoolProviderX509Trust(),

  // --- IndexFieldSpec (4) — firestore_index --------------------------------
  'FirestoreIndexIndexFieldOrder': () =>
      const FirestoreIndexIndexFieldOrder(FirestoreIndexOrder.ascending),
  'FirestoreIndexIndexFieldArrayConfig': () =>
      const FirestoreIndexIndexFieldArrayConfig(),
  'FirestoreIndexIndexFieldSearchConfig': () =>
      const FirestoreIndexIndexFieldSearchConfig(),
  'FirestoreIndexIndexFieldVectorConfig': () =>
      const FirestoreIndexIndexFieldVectorConfig(
          dimension: TfArgLiteral<int>(768)),

  // --- SecretManagerSecretReplication (2) — secret_manager_secret ------------
  // After v1.0 naming audit the subclasses are now public:
  // SecretManagerSecretAutoReplication / SecretManagerSecretUserManagedReplication.
  // Thunks construct via the public factories.
  'SecretManagerSecretAutoReplication': () =>
      SecretManagerSecretReplication.auto(),
  'SecretManagerSecretUserManagedReplication': () =>
      SecretManagerSecretReplication.userManaged(
          [SecretManagerSecretReplica(location: TfArg.literal('us-east1'))]),

  // --- BucketObjectContent (2) — storage_bucket_object ---------------------
  'StorageBucketObjectBucketObjectFromSource': () =>
      StorageBucketObjectBucketObjectFromSource(
          source: TfArg.literal('./mock/path.bin')),
  'StorageBucketObjectBucketObjectFromContent': () =>
      StorageBucketObjectBucketObjectFromContent(
          content: TfArg.literal('mock-inline-payload')),

  // --- StorageBatchOperationsJobOperation (4) — batch_operations_job -------
  'StorageBatchOperationsJobPutMetadata': () =>
      StorageBatchOperationsJobPutMetadata(
        customMetadata: TfArg.literal({'managed-by': 'terradart'}),
      ),
  'StorageBatchOperationsJobPutObjectHold': () =>
      StorageBatchOperationsJobPutObjectHold(
        temporaryHold: TfArg.literal('TRUE'),
      ),
  'StorageBatchOperationsJobRewriteObject': () =>
      StorageBatchOperationsJobRewriteObject(
        kmsKey: TfArg.literal(
          'projects/p/locations/global/keyRings/r/cryptoKeys/k',
        ),
      ),
  'StorageBatchOperationsJobDeleteObject': () =>
      StorageBatchOperationsJobDeleteObject(
        permanentObjectDeletionEnabled: TfArg.literal(false),
      ),

  // --- CertificateManagerCertificateProvisioningSource (2) — certificate_manager_certificate
  'CertificateManagerCertificateManagedProvisioning': () =>
      CertificateManagerCertificateManagedProvisioning(
        domains: ['app.example.com'],
        dnsAuthorizations: [
          TfArg.literal('projects/p/locations/global/dnsAuthorizations/auth'),
        ],
      ),
  'CertificateManagerCertificateSelfManagedProvisioning': () =>
      CertificateManagerCertificateSelfManagedProvisioning(
        pemCertificate: TfArg.literal(
          '-----BEGIN CERTIFICATE-----\nMOCK\n-----END CERTIFICATE-----',
        ),
        pemPrivateKey: TfArg.literal(
          '-----BEGIN PRIVATE KEY-----\nMOCK\n-----END PRIVATE KEY-----',
        ),
      ),
  // --- CertificateManagerCertificateMapEntryMatch (2) — cert map entry -----
  'CertificateManagerCertificateMapEntryHostname': () =>
      CertificateManagerCertificateMapEntryHostname(
        TfArg.literal('app.example.com'),
      ),
  'CertificateManagerCertificateMapEntryMatcher': () =>
      CertificateManagerCertificateMapEntryMatcher(TfArg.literal('PRIMARY')),

  // --- NetworkSecurityMirroringEndpointGroupDeploymentLink (2) — OOB ------
  'NetworkSecurityMirroringEndpointGroupDirectDeploymentLink': () =>
      NetworkSecurityMirroringEndpointGroupDirectDeploymentLink(
        TfArg.literal(
          'projects/p/locations/global/mirroringDeploymentGroups/dg',
        ),
      ),
  'NetworkSecurityMirroringEndpointGroupBrokerDeploymentLink': () =>
      NetworkSecurityMirroringEndpointGroupBrokerDeploymentLink(
        TfArg.literal([
          'projects/p/locations/global/mirroringDeploymentGroups/dg1',
          'projects/p/locations/global/mirroringDeploymentGroups/dg2',
        ]),
      ),

  // --- VertexAiFeatureOnlineStoreStorage (2) — feature_online_store --------
  'VertexAiFeatureOnlineStoreBigtable': () =>
      VertexAiFeatureOnlineStoreBigtable(
        autoScaling: VertexAiFeatureOnlineStoreBigtableAutoScaling(
          minNodeCount: TfArg.literal(1),
          maxNodeCount: TfArg.literal(3),
        ),
      ),
  'VertexAiFeatureOnlineStoreOptimized': () =>
      const VertexAiFeatureOnlineStoreOptimized(),

  // --- VertexAiFeatureOnlineStoreFeatureviewSource (2) — featureview -------
  'VertexAiFeatureOnlineStoreFeatureviewBigQuerySource': () =>
      VertexAiFeatureOnlineStoreFeatureviewBigQuerySource(
        uri: TfArg.literal('bq://p.dataset.view'),
        entityIdColumns: TfArg.literal(const ['entity_id']),
      ),
  'VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource': () =>
      VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource(
        featureGroups: [
          VertexAiFeatureOnlineStoreFeatureviewFeatureGroup(
            featureGroupId: TfArg.literal('customer_features'),
            featureIds: TfArg.literal(const ['feature_score']),
          ),
        ],
      ),

  // --- VertexAiRagEngineConfigManagedDbTier (3) — rag_engine_config --------
  'VertexAiRagEngineConfigBasic': () => const VertexAiRagEngineConfigBasic(),
  'VertexAiRagEngineConfigScaled': () => const VertexAiRagEngineConfigScaled(),
  'VertexAiRagEngineConfigUnprovisioned': () =>
      const VertexAiRagEngineConfigUnprovisioned(),

  // --- VertexAiEndpointWithModelGardenDeploymentModel (2) — model garden ---
  'VertexAiEndpointWithModelGardenDeploymentPublisherModel': () =>
      VertexAiEndpointWithModelGardenDeploymentPublisherModel(
        publisherModelName: TfArg.literal(
          'publishers/google/models/gemma-2-2b-it@001',
        ),
      ),
  'VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel': () =>
      VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel(
        huggingFaceModelId: TfArg.literal('google/gemma-2-2b-it'),
      ),
};

void main() {
  group('Gate 6: encode round-trip structural', () {
    final yamlDir = Directory(
      p.join(
        '..',
        'terradart_codegen',
        'lib',
        'src',
        'codegen',
        'wrapper_overrides',
        'yaml',
      ),
    );
    final yamlFiles = yamlDir
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.yaml'))
        .toList()
      ..sort((a, b) => a.path.compareTo(b.path));

    for (final yamlFile in yamlFiles) {
      final yamlSource = yamlFile.readAsStringSync();
      if (!yamlSource.contains('sealed class')) continue;

      final preludeStart = yamlSource.indexOf('prelude:');
      if (preludeStart < 0) continue;
      final preludeText = yamlSource.substring(preludeStart);
      final sealedClasses = const SealedClassExtractor().extract(preludeText);

      for (final sealed in sealedClasses) {
        for (final member in sealed.members) {
          test(
              '${sealed.name}.${member.name}: encode() round-trips '
              'with required keys present', () {
            final thunk = _syntheticInstances[member.name];
            expect(
              thunk,
              isNotNull,
              reason: 'Gate 6 lookup table missing entry for ${member.name}. '
                  'Add a constructor thunk to _syntheticInstances in '
                  'encode_round_trip_test.dart. See Plan 5.D PR 2 Task 10.',
            );

            final instance = thunk!();

            // Production wrappers expose either `encode()` (most common) or
            // `toArgMap()` (e.g. cloud_run_v2_service helpers). Try
            // `encode()` first via dynamic dispatch; fall back to
            // `toArgMap()`. Both can return either `Map<String, Object?>`
            // OR a single-element `List<Map<String, Object?>>` (the latter
            // used by `BackupRecurrence.{FirestoreBackupScheduleDailyRecurrence,FirestoreBackupScheduleWeeklyRecurrence}`
            // because their underlying blocks are
            // `nesting_mode: list, max_items: 1`).
            final dyn = instance as dynamic;
            Object? raw;
            try {
              raw = dyn.encode();
            } on NoSuchMethodError {
              raw = dyn.toArgMap();
            }

            // The encoded payload must be non-empty when the member declares
            // required constructor params (optional-only members may encode
            // to `{}` when every optional is omitted — e.g. Dataplex scan
            // spec blocks with `allow_empty_object`).
            if (raw is Map) {
              final hasRequired = member.params.any((p) => p.required);
              if (hasRequired) {
                expect(
                  raw,
                  isNotEmpty,
                  reason: 'encoded Map must not be empty',
                );
              }
            } else if (raw is List) {
              expect(
                raw,
                isNotEmpty,
                reason: 'encoded List<Map> must not be empty',
              );
            }

            // Unwrap to a Map for the required-key + TfArg-leak walks.
            late Map<String, Object?> result;
            if (raw is Map<String, Object?>) {
              result = raw;
            } else if (raw is List &&
                raw.length == 1 &&
                raw.first is Map<String, Object?>) {
              result = raw.first as Map<String, Object?>;
            } else {
              fail(
                'encode()/toArgMap() must return Map<String, Object?> '
                'or single-element List<Map<String, Object?>>. '
                'Got: ${raw.runtimeType}',
              );
            }

            // Collect every key encountered anywhere in the encoded
            // payload, descending through nested Maps and List<Map>
            // values. Production sealed-class members mostly follow the
            // discriminator-block pattern (`{<discriminator>: [<innerMap>]}`)
            // where the constructor's required params live INSIDE the
            // inner map rather than at the top level — a recursive walk
            // is the only way the required-key invariant can pass for
            // both that pattern and the flat-merge pattern uniformly.
            // The invariant Gate 6 enforces is "the wrapper's encode()
            // mentions every required ctor param somewhere in its output";
            // a recursive search still catches the bug of an encoder
            // accidentally dropping a required attr (the key would be
            // absent at every depth).
            final allKeys = _collectAllKeys(result);
            for (final param in member.params.where((p) => p.required)) {
              // Convert camelCase param name -> snake_case schema key.
              final schemaKey = _camelToSnake(param.name);
              expect(
                allKeys,
                contains(schemaKey),
                reason: 'required attr "$schemaKey" '
                    '(camel: ${param.name}) must appear as a key somewhere '
                    'in the encoded payload (top-level or nested under a '
                    'discriminator block). Top-level keys observed: '
                    '${result.keys.toList()}; all keys recursively: '
                    '${allKeys.toList()}.',
              );
            }
            // No raw TfArg<T> may leak anywhere in the encoded payload —
            // every TfArg must have been unwrapped via `.toTfJson()` at
            // serialization time. Walk all values recursively, not just
            // the top-level map's values: nested helper-class encoders
            // could forget the unwrap deep in the tree.
            final tfArgLeaks = _findTfArgLeaks(result);
            expect(
              tfArgLeaks,
              isEmpty,
              reason: 'encoded values must be TfArg-unwrapped '
                  '(.toTfJson() should have been called). Found raw '
                  'TfArg instances at: $tfArgLeaks',
            );
          });
        }
      }
    }
  });
}

String _camelToSnake(String camel) {
  final buf = StringBuffer();
  for (var i = 0; i < camel.length; i++) {
    final ch = camel[i];
    if (i > 0 && ch == ch.toUpperCase() && ch != ch.toLowerCase()) {
      buf.write('_');
      buf.write(ch.toLowerCase());
    } else {
      buf.write(ch);
    }
  }
  return buf.toString();
}

/// Returns every key encountered anywhere in [root], descending through
/// nested Map and List values. Used by the required-attr assertion so a
/// ctor param nested under a discriminator block (e.g.
/// `{'gcs': [{'bucket': ...}]}`) is found at any depth.
Set<String> _collectAllKeys(Object? root) {
  final keys = <String>{};
  void walk(Object? node) {
    if (node is Map) {
      for (final entry in node.entries) {
        if (entry.key is String) keys.add(entry.key as String);
        walk(entry.value);
      }
    } else if (node is List) {
      for (final item in node) {
        walk(item);
      }
    }
  }

  walk(root);
  return keys;
}

/// Walks [root] recursively and returns a list of human-readable paths
/// where a raw [TfArg] instance was found. The encoded payload must
/// never contain a raw TfArg — every encoder should have unwrapped via
/// `.toTfJson()` before returning. An empty result means the wrapper is
/// clean.
List<String> _findTfArgLeaks(Object? root) {
  final leaks = <String>[];
  void walk(Object? node, String path) {
    if (node is TfArg) {
      leaks.add('$path (runtimeType=${node.runtimeType})');
      return;
    }
    if (node is Map) {
      for (final entry in node.entries) {
        walk(entry.value, '$path.${entry.key}');
      }
    } else if (node is List) {
      for (var i = 0; i < node.length; i++) {
        walk(node[i], '$path[$i]');
      }
    }
  }

  walk(root, r'$');
  return leaks;
}
