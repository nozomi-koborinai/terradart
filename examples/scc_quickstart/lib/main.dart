/// SCC leftover quickstart — apply-excluded org/folder/project factories.
///
/// Needs a real organization-activated Security Command Center parent.
/// Coverage stack; synth + `terraform validate` only. Never apply as-is.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_google/scc.dart';
import 'package:terradart_time/terradart_time.dart';

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
        'viewer',
        accountId: .literal('scc-leftover-viewer'),
        displayName: .literal('SCC leftover viewer'),
        dependsOn: apiDeps,
      ),
    );

    final topic = add(
      GooglePubsubTopic(
        'findings',
        name: .literal('terradart-scc-findings'),
        dependsOn: apiDeps,
      ),
    );
    final topicPath = RefTo<GooglePubsubTopic>.literal(
      'projects/$projectId/topics/terradart-scc-findings',
    );

    final dataset = add(
      GoogleBigqueryDataset(
        'scc_export',
        datasetId: .literal('terradart_scc'),
        location: .literal('US'),
        dependsOn: apiDeps,
      ),
    );
    final datasetPath = TfArg.literal(
      'projects/$projectId/datasets/terradart_scc',
    );

    final source = add(
      GoogleSccSource(
        'scanner',
        organization: .literal(org),
        displayName: .literal('terradart leftover source'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccSourceIamMember(
        'source_viewer',
        source: source.ref,
        role: .literal('roles/securitycenter.findingsViewer'),
        member: sa.principal,
        dependsOn: [source, sa],
      ),
    );

    final v2Source = add(
      GoogleSccV2OrganizationSource(
        'v2_scanner',
        organization: .literal(org),
        displayName: .literal('terradart leftover v2 source'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccV2OrganizationSourceIamMember(
        'v2_source_viewer',
        source: v2Source.ref,
        role: .literal('roles/securitycenter.findingsViewer'),
        member: sa.principal,
        dependsOn: [v2Source, sa],
      ),
    );

    add(
      GoogleSccNotificationConfig(
        'org_notify',
        configId: .literal('terradart-org-notify'),
        organization: .literal(org),
        pubsubTopic: topicPath,
        streamingConfig: SccNotificationConfigStreamingConfig(
          filter: .literal('state = "ACTIVE"'),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [topic],
      ),
    );
    // The organization's SCC notification service agent publishes findings to
    // the topic.
    final notificationAgent = add(
      GoogleSccNotificationServiceAccount(
        'notification_agent',
        organization: .literal(org),
        dependsOn: apiDeps,
      ),
    );
    add(
      GooglePubsubTopicIamMember(
        'findings_publisher',
        topic: topic.ref,
        role: .literal('roles/pubsub.publisher'),
        member: notificationAgent.principal,
      ),
    );
    add(
      GoogleSccFolderNotificationConfig(
        'folder_notify',
        configId: .literal('terradart-folder-notify'),
        folder: .literal(folder),
        pubsubTopic: topicPath,
        streamingConfig: SccFolderNotificationConfigStreamingConfig(
          filter: .literal('state = "ACTIVE"'),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [topic],
      ),
    );
    add(
      GoogleSccProjectNotificationConfig(
        'project_notify',
        configId: .literal('terradart-project-notify'),
        pubsubTopic: topicPath,
        streamingConfig: SccProjectNotificationConfigStreamingConfig(
          filter: .literal('state = "ACTIVE"'),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [topic],
      ),
    );
    add(
      GoogleSccV2ProjectNotificationConfig(
        'v2_project_notify',
        configId: .literal('terradart-v2-project-notify'),
        pubsubTopic: topic.ref,
        streamingConfig: SccV2ProjectNotificationConfigStreamingConfig(
          filter: .literal('state = "ACTIVE"'),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [topic],
      ),
    );
    add(
      GoogleSccV2OrganizationNotificationConfig(
        'v2_org_notify',
        configId: .literal('terradart-v2-org-notify'),
        organization: .literal(org),
        pubsubTopic: topicPath,
        streamingConfig: SccV2OrganizationNotificationConfigStreamingConfig(
          filter: .literal('state = "ACTIVE"'),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [topic],
      ),
    );
    add(
      GoogleSccV2FolderNotificationConfig(
        'v2_folder_notify',
        configId: .literal('terradart-v2-folder-notify'),
        folder: .literal(folder),
        pubsubTopic: topicPath,
        streamingConfig: SccV2FolderNotificationConfigStreamingConfig(
          filter: .literal('state = "ACTIVE"'),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [topic],
      ),
    );

    add(
      GoogleSccEventThreatDetectionCustomModule(
        'etd',
        organization: .literal(org),
        displayName: .literal('terradart_etd'),
        enablementState: .literal(.enabled),
        type: .literal('CONFIGURABLE_BAD_IP'),
        config: .literal('{"metadata":{"severity":"LOW"},"ips":["192.0.2.1"]}'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccManagementOrganizationEventThreatDetectionCustomModule(
        'mgmt_etd',
        organization: .literal(org),
        displayName: .literal('terradart_mgmt_etd'),
        enablementState: .literal(
          SccManagementOrganizationEventThreatDetectionCustomModuleEnablementState
              .enabled,
        ),
        type: .literal('CONFIGURABLE_BAD_IP'),
        config: .literal('{"metadata":{"severity":"LOW"},"ips":["192.0.2.1"]}'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleSccOrganizationCustomModule(
        'org_sha',
        organization: .literal(org),
        displayName: .literal('terradart_org_sha'),
        enablementState: .literal(.enabled),
        customConfig: SccOrganizationCustomModuleCustomConfig(
          recommendation: .literal('Review the finding.'),
          severity: .literal(.low),
          predicate: .new(
            expression: .literal('resource.rotationPeriod > duration("365d")'),
          ),
          resourceSelector: .new(
            resourceTypes: .literal(['cloudkms.googleapis.com/CryptoKey']),
          ),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccFolderCustomModule(
        'folder_sha',
        folder: .literal(folder),
        displayName: .literal('terradart_folder_sha'),
        enablementState: .literal(.enabled),
        customConfig: SccFolderCustomModuleCustomConfig(
          recommendation: .literal('Review the finding.'),
          severity: .literal(.low),
          predicate: .new(
            expression: .literal('resource.rotationPeriod > duration("365d")'),
          ),
          resourceSelector: .new(
            resourceTypes: .literal(['cloudkms.googleapis.com/CryptoKey']),
          ),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccProjectCustomModule(
        'project_sha',
        displayName: .literal('terradart_project_sha'),
        enablementState: .literal(.enabled),
        customConfig: SccProjectCustomModuleCustomConfig(
          recommendation: .literal('Review the finding.'),
          severity: .literal(.low),
          predicate: .new(
            expression: .literal('resource.rotationPeriod > duration("365d")'),
          ),
          resourceSelector: .new(
            resourceTypes: .literal(['cloudkms.googleapis.com/CryptoKey']),
          ),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleSccManagementOrganizationSecurityHealthAnalyticsCustomModule(
        'mgmt_org_sha',
        organization: .literal(org),
        displayName: .literal('terradart_mgmt_org_sha'),
        enablementState: .literal(
          SccManagementOrganizationSecurityHealthAnalyticsCustomModuleEnablementState
              .enabled,
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccManagementFolderSecurityHealthAnalyticsCustomModule(
        'mgmt_folder_sha',
        folder: .literal(folder),
        displayName: .literal('terradart_mgmt_folder_sha'),
        enablementState: .literal(
          SccManagementFolderSecurityHealthAnalyticsCustomModuleEnablementState
              .enabled,
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccManagementProjectSecurityHealthAnalyticsCustomModule(
        'mgmt_project_sha',
        displayName: .literal('terradart_mgmt_project_sha'),
        enablementState: .literal(
          SccManagementProjectSecurityHealthAnalyticsCustomModuleEnablementState
              .enabled,
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleSccMuteConfig(
        'mute',
        parent: .literal('organizations/$org'),
        muteConfigId: .literal('terradart-mute'),
        filter: .literal('severity="LOW"'),
        type: .literal(.static),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccV2OrganizationMuteConfig(
        'v2_org_mute',
        organization: .literal(org),
        muteConfigId: .literal('terradart-v2-org-mute'),
        filter: .literal('severity="LOW"'),
        type: .literal('STATIC'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccV2FolderMuteConfig(
        'v2_folder_mute',
        folder: .literal(folder),
        muteConfigId: .literal('terradart-v2-folder-mute'),
        filter: .literal('severity="LOW"'),
        type: .literal('STATIC'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleSccV2ProjectMuteConfig(
        'v2_project_mute',
        muteConfigId: .literal('terradart-v2-project-mute'),
        filter: .literal('severity="LOW"'),
        type: .literal('STATIC'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleSccOrganizationSccBigQueryExport(
        'org_bq',
        organization: .literal(org),
        bigQueryExportId: .literal('terradart-org-bq'),
        dataset: datasetPath,
        filter: .literal('state="ACTIVE"'),
        description: .literal('org leftover export'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [dataset],
      ),
    );
    add(
      GoogleSccFolderSccBigQueryExport(
        'folder_bq',
        folder: .literal(folder),
        bigQueryExportId: .literal('terradart-folder-bq'),
        dataset: datasetPath,
        filter: .literal('state="ACTIVE"'),
        description: .literal('folder leftover export'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [dataset],
      ),
    );
    add(
      GoogleSccProjectSccBigQueryExport(
        'project_bq',
        bigQueryExportId: .literal('terradart-project-bq'),
        dataset: datasetPath,
        filter: .literal('state="ACTIVE"'),
        description: .literal('project leftover export'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [dataset],
      ),
    );
    add(
      GoogleSccV2OrganizationSccBigQueryExport(
        'v2_org_bq',
        organization: .literal(org),
        bigQueryExportId: .literal('terradart-v2-org-bq'),
        dataset: datasetPath,
        filter: .literal('state="ACTIVE"'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [dataset],
      ),
    );
    add(
      GoogleSccV2OrganizationSccBigQueryExports(
        'v2_org_bqs',
        organization: .literal(org),
        bigQueryExportId: .literal('terradart-v2-org-bqs'),
        dataset: datasetPath,
        filter: .literal('state="ACTIVE"'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [dataset],
      ),
    );
    add(
      GoogleSccV2FolderSccBigQueryExport(
        'v2_folder_bq',
        folder: .literal(folder),
        bigQueryExportId: .literal('terradart-v2-folder-bq'),
        dataset: datasetPath,
        filter: .literal('state="ACTIVE"'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [dataset],
      ),
    );
    add(
      GoogleSccV2ProjectSccBigQueryExport(
        'v2_project_bq',
        bigQueryExportId: .literal('terradart-v2-project-bq'),
        dataset: datasetPath,
        filter: .literal('state="ACTIVE"'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [dataset],
      ),
    );
  }
}
