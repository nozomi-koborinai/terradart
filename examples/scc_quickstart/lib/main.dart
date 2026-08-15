/// SCC leftover quickstart — apply-excluded org/folder/project factories.
///
/// Needs a real organization-activated Security Command Center parent.
/// Skip-listed; synth + `terraform validate` only.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_google/scc.dart';
import 'package:terradart_google/time.dart';

final class SccLeftoverStack extends Stack {
  SccLeftoverStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    const org = '123456789';
    const folder = '123456789';
    final apiDeps = Apis.enable(
      this,
      barrels: [
        Barrels.sccApi,
        Barrels.pubsub,
        Barrels.bigquery,
        Barrels.iamApi,
      ],
      propagationDelay: const Duration(seconds: 60),
    );

    final sa = add(
      GoogleServiceAccount(
        localName: 'viewer',
        accountId: TfArg.literal('scc-leftover-viewer'),
        displayName: TfArg.literal('SCC leftover viewer'),
        dependsOn: apiDeps,
      ),
    );

    final topic = add(
      GooglePubsubTopic(
        localName: 'findings',
        name: TfArg.literal('terradart-scc-findings'),
        dependsOn: apiDeps,
      ),
    );
    final topicPath = TfArg.literal(
      'projects/$projectId/topics/terradart-scc-findings',
    );

    final dataset = add(
      GoogleBigqueryDataset(
        localName: 'scc_export',
        datasetId: TfArg.literal('terradart_scc'),
        location: TfArg.literal('US'),
        dependsOn: apiDeps,
      ),
    );
    final datasetPath = TfArg.literal(
      'projects/$projectId/datasets/terradart_scc',
    );

    final source = add(
      GoogleSccSource(
        localName: 'scanner',
        organization: TfArg.literal(org),
        displayName: TfArg.literal('terradart leftover source'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccSourceIamMember(
        localName: 'source_viewer',
        source: TfArg.ref(source.nameRef),
        organization: TfArg.literal(org),
        role: TfArg.literal('roles/securitycenter.findingsViewer'),
        member: TfArg.ref(sa.iamMember),
        dependsOn: [ResourceDependency(source), ResourceDependency(sa)],
      ),
    );

    final v2Source = add(
      GoogleSccV2OrganizationSource(
        localName: 'v2_scanner',
        organization: TfArg.literal(org),
        displayName: TfArg.literal('terradart leftover v2 source'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccV2OrganizationSourceIamMember(
        localName: 'v2_source_viewer',
        source: TfArg.ref(v2Source.nameRef),
        organization: TfArg.literal(org),
        role: TfArg.literal('roles/securitycenter.findingsViewer'),
        member: TfArg.ref(sa.iamMember),
        dependsOn: [ResourceDependency(v2Source), ResourceDependency(sa)],
      ),
    );

    add(
      GoogleSccNotificationConfig(
        localName: 'org_notify',
        configId: TfArg.literal('terradart-org-notify'),
        organization: TfArg.literal(org),
        pubsubTopic: topicPath,
        streamingConfig: SccNotificationConfigStreamingConfig(
          filter: TfArg.literal('state = "ACTIVE"'),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(topic)],
      ),
    );
    add(
      GoogleSccFolderNotificationConfig(
        localName: 'folder_notify',
        configId: TfArg.literal('terradart-folder-notify'),
        folder: TfArg.literal(folder),
        pubsubTopic: topicPath,
        streamingConfig: SccFolderNotificationConfigStreamingConfig(
          filter: TfArg.literal('state = "ACTIVE"'),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(topic)],
      ),
    );
    add(
      GoogleSccProjectNotificationConfig(
        localName: 'project_notify',
        configId: TfArg.literal('terradart-project-notify'),
        pubsubTopic: topicPath,
        streamingConfig: SccProjectNotificationConfigStreamingConfig(
          filter: TfArg.literal('state = "ACTIVE"'),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(topic)],
      ),
    );
    add(
      GoogleSccV2ProjectNotificationConfig(
        localName: 'v2_project_notify',
        configId: TfArg.literal('terradart-v2-project-notify'),
        pubsubTopic: TfArg.ref(topic.id),
        streamingConfig: SccV2ProjectNotificationConfigStreamingConfig(
          filter: TfArg.literal('state = "ACTIVE"'),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(topic)],
      ),
    );
    add(
      GoogleSccV2OrganizationNotificationConfig(
        localName: 'v2_org_notify',
        configId: TfArg.literal('terradart-v2-org-notify'),
        organization: TfArg.literal(org),
        pubsubTopic: topicPath,
        streamingConfig: SccV2OrganizationNotificationConfigStreamingConfig(
          filter: TfArg.literal('state = "ACTIVE"'),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(topic)],
      ),
    );
    add(
      GoogleSccV2FolderNotificationConfig(
        localName: 'v2_folder_notify',
        configId: TfArg.literal('terradart-v2-folder-notify'),
        folder: TfArg.literal(folder),
        pubsubTopic: topicPath,
        streamingConfig: SccV2FolderNotificationConfigStreamingConfig(
          filter: TfArg.literal('state = "ACTIVE"'),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(topic)],
      ),
    );

    add(
      GoogleSccEventThreatDetectionCustomModule(
        localName: 'etd',
        organization: TfArg.literal(org),
        displayName: TfArg.literal('terradart_etd'),
        enablementState: TfArg.literal(
          SccEventThreatDetectionCustomModuleEnablementState.enabled,
        ),
        type: TfArg.literal('CONFIGURABLE_BAD_IP'),
        config: TfArg.literal(
          '{"metadata":{"severity":"LOW"},"ips":["192.0.2.1"]}',
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccManagementOrganizationEventThreatDetectionCustomModule(
        localName: 'mgmt_etd',
        organization: TfArg.literal(org),
        displayName: TfArg.literal('terradart_mgmt_etd'),
        enablementState: TfArg.literal(
          SccManagementOrganizationEventThreatDetectionCustomModuleEnablementState
              .enabled,
        ),
        type: TfArg.literal('CONFIGURABLE_BAD_IP'),
        config: TfArg.literal(
          '{"metadata":{"severity":"LOW"},"ips":["192.0.2.1"]}',
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleSccOrganizationCustomModule(
        localName: 'org_sha',
        organization: TfArg.literal(org),
        displayName: TfArg.literal('terradart_org_sha'),
        enablementState: TfArg.literal(
          SccOrganizationCustomModuleEnablementState.enabled,
        ),
        customConfig: SccOrganizationCustomModuleCustomConfig(
          recommendation: TfArg.literal('Review the finding.'),
          severity: TfArg.literal(
            SccOrganizationCustomModuleCustomConfigSeverity.low,
          ),
          predicate: SccOrganizationCustomModuleCustomConfigPredicate(
            expression:
                TfArg.literal('resource.rotationPeriod > duration("365d")'),
          ),
          resourceSelector:
              SccOrganizationCustomModuleCustomConfigResourceSelector(
            resourceTypes: TfArg.literal(
              ['cloudkms.googleapis.com/CryptoKey'],
            ),
          ),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccFolderCustomModule(
        localName: 'folder_sha',
        folder: TfArg.literal(folder),
        displayName: TfArg.literal('terradart_folder_sha'),
        enablementState: TfArg.literal(
          SccFolderCustomModuleEnablementState.enabled,
        ),
        customConfig: SccFolderCustomModuleCustomConfig(
          recommendation: TfArg.literal('Review the finding.'),
          severity: TfArg.literal(
            SccFolderCustomModuleCustomConfigSeverity.low,
          ),
          predicate: SccFolderCustomModuleCustomConfigPredicate(
            expression:
                TfArg.literal('resource.rotationPeriod > duration("365d")'),
          ),
          resourceSelector: SccFolderCustomModuleCustomConfigResourceSelector(
            resourceTypes: TfArg.literal(
              ['cloudkms.googleapis.com/CryptoKey'],
            ),
          ),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccProjectCustomModule(
        localName: 'project_sha',
        displayName: TfArg.literal('terradart_project_sha'),
        enablementState: TfArg.literal(
          SccProjectCustomModuleEnablementState.enabled,
        ),
        customConfig: SccProjectCustomModuleCustomConfig(
          recommendation: TfArg.literal('Review the finding.'),
          severity: TfArg.literal(
            SccProjectCustomModuleCustomConfigSeverity.low,
          ),
          predicate: SccProjectCustomModuleCustomConfigPredicate(
            expression:
                TfArg.literal('resource.rotationPeriod > duration("365d")'),
          ),
          resourceSelector: SccProjectCustomModuleCustomConfigResourceSelector(
            resourceTypes: TfArg.literal(
              ['cloudkms.googleapis.com/CryptoKey'],
            ),
          ),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleSccManagementOrganizationSecurityHealthAnalyticsCustomModule(
        localName: 'mgmt_org_sha',
        organization: TfArg.literal(org),
        displayName: TfArg.literal('terradart_mgmt_org_sha'),
        enablementState: TfArg.literal(
          SccManagementOrganizationSecurityHealthAnalyticsCustomModuleEnablementState
              .enabled,
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccManagementFolderSecurityHealthAnalyticsCustomModule(
        localName: 'mgmt_folder_sha',
        folder: TfArg.literal(folder),
        displayName: TfArg.literal('terradart_mgmt_folder_sha'),
        enablementState: TfArg.literal(
          SccManagementFolderSecurityHealthAnalyticsCustomModuleEnablementState
              .enabled,
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccManagementProjectSecurityHealthAnalyticsCustomModule(
        localName: 'mgmt_project_sha',
        displayName: TfArg.literal('terradart_mgmt_project_sha'),
        enablementState: TfArg.literal(
          SccManagementProjectSecurityHealthAnalyticsCustomModuleEnablementState
              .enabled,
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleSccMuteConfig(
        localName: 'mute',
        parent: TfArg.literal('organizations/$org'),
        muteConfigId: TfArg.literal('terradart-mute'),
        filter: TfArg.literal('severity="LOW"'),
        type: TfArg.literal(SccMuteConfigType.static),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccV2OrganizationMuteConfig(
        localName: 'v2_org_mute',
        organization: TfArg.literal(org),
        muteConfigId: TfArg.literal('terradart-v2-org-mute'),
        filter: TfArg.literal('severity="LOW"'),
        type: TfArg.literal('STATIC'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccV2FolderMuteConfig(
        localName: 'v2_folder_mute',
        folder: TfArg.literal(folder),
        muteConfigId: TfArg.literal('terradart-v2-folder-mute'),
        filter: TfArg.literal('severity="LOW"'),
        type: TfArg.literal('STATIC'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccV2ProjectMuteConfig(
        localName: 'v2_project_mute',
        muteConfigId: TfArg.literal('terradart-v2-project-mute'),
        filter: TfArg.literal('severity="LOW"'),
        type: TfArg.literal('STATIC'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleSccOrganizationSccBigQueryExport(
        localName: 'org_bq',
        organization: TfArg.literal(org),
        bigQueryExportId: TfArg.literal('terradart-org-bq'),
        dataset: datasetPath,
        filter: TfArg.literal('state="ACTIVE"'),
        description: TfArg.literal('org leftover export'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );
    add(
      GoogleSccFolderSccBigQueryExport(
        localName: 'folder_bq',
        folder: TfArg.literal(folder),
        bigQueryExportId: TfArg.literal('terradart-folder-bq'),
        dataset: datasetPath,
        filter: TfArg.literal('state="ACTIVE"'),
        description: TfArg.literal('folder leftover export'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );
    add(
      GoogleSccProjectSccBigQueryExport(
        localName: 'project_bq',
        bigQueryExportId: TfArg.literal('terradart-project-bq'),
        dataset: datasetPath,
        filter: TfArg.literal('state="ACTIVE"'),
        description: TfArg.literal('project leftover export'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );
    add(
      GoogleSccV2OrganizationSccBigQueryExport(
        localName: 'v2_org_bq',
        organization: TfArg.literal(org),
        bigQueryExportId: TfArg.literal('terradart-v2-org-bq'),
        dataset: datasetPath,
        filter: TfArg.literal('state="ACTIVE"'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );
    add(
      GoogleSccV2OrganizationSccBigQueryExports(
        localName: 'v2_org_bqs',
        organization: TfArg.literal(org),
        bigQueryExportId: TfArg.literal('terradart-v2-org-bqs'),
        dataset: datasetPath,
        filter: TfArg.literal('state="ACTIVE"'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );
    add(
      GoogleSccV2FolderSccBigQueryExport(
        localName: 'v2_folder_bq',
        folder: TfArg.literal(folder),
        bigQueryExportId: TfArg.literal('terradart-v2-folder-bq'),
        dataset: datasetPath,
        filter: TfArg.literal('state="ACTIVE"'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );
    add(
      GoogleSccV2ProjectSccBigQueryExport(
        localName: 'v2_project_bq',
        bigQueryExportId: TfArg.literal('terradart-v2-project-bq'),
        dataset: datasetPath,
        filter: TfArg.literal('state="ACTIVE"'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );
  }
}
