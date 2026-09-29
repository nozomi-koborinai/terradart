/// Migration Center quickstart — settings, sources, discovery, import, groups,
/// preference sets, and reports.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/migration.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class MigrationCenterStack extends Stack {
  MigrationCenterStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    const location = 'us-central1';
    const importJobId = 'terradart-import';
    const reportConfigId = 'terradart-report-config';

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.migration],
      propagationDelay: const Duration(seconds: 60),
    );

    add(
      GoogleMigrationCenterSettings(
        localName: 'default',
        location: .literal(location),
        dependsOn: apiDeps,
      ),
    );

    // Upload source for import jobs; discovery clients require a separate
    // SOURCE_TYPE_DISCOVERY_CLIENT source (API 400 otherwise).
    final uploadSource = GoogleMigrationCenterSource(
      localName: 'inventory',
      location: .literal(location),
      sourceId: .literal('terradart-source'),
      displayName: .literal('TerraDart upload source'),
      type: .literal(.sourceTypeUpload),
      dependsOn: apiDeps,
    );
    add(uploadSource);

    final discoverySource = GoogleMigrationCenterSource(
      localName: 'discovery',
      location: .literal(location),
      sourceId: .literal('terradart-discovery-source'),
      displayName: .literal('TerraDart discovery source'),
      type: .literal(.sourceTypeDiscoveryClient),
      dependsOn: apiDeps,
    );
    add(discoverySource);

    // Discovery client rejects a non-existent service account email at apply
    // time — provision the SA in-stack and pass its email ref.
    final discoverySa = add(
      GoogleServiceAccount(
        localName: 'discovery_agent',
        accountId: .literal('mc-discovery-agent'),
        displayName: .literal('Migration Center discovery agent'),
      ),
    );

    add(
      GoogleMigrationCenterDiscoveryClient(
        localName: 'agent',
        location: .literal(location),
        discoveryClientId: .literal('terradart-discovery'),
        source: .ref(discoverySource.nameRef),
        serviceAccount: discoverySa.ref,
        displayName: .literal('TerraDart discovery client'),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(discoverySource),
          ResourceDependency(discoverySa),
        ],
      ),
    );

    final importJob = GoogleMigrationCenterImportJob(
      localName: 'upload',
      location: .literal(location),
      importJobId: .literal(importJobId),
      assetSource: .ref(uploadSource.nameRef),
      displayName: .literal('TerraDart import job'),
      dependsOn: [...apiDeps, ResourceDependency(uploadSource)],
    );
    add(importJob);

    // `import_job` is a path ID segment (not the full resource name) — see
    // hashicorp/google docs example using `.import_job_id`.
    add(
      GoogleMigrationCenterImportDataFile(
        localName: 'payload',
        location: .literal(location),
        importJob: .literal(importJobId),
        importDataFileId: .literal('terradart-import-file'),
        format: .literal(.rvtoolsXlsx),
        displayName: .literal('TerraDart import payload'),
        dependsOn: [...apiDeps, ResourceDependency(importJob)],
      ),
    );

    // API requires one of inventory / performance_data / network_dependencies.
    // Only performance_data is a writable nested block in the provider schema.
    add(
      GoogleMigrationCenterAssetsExportJob(
        localName: 'export',
        location: .literal(location),
        assetsExportJobId: .literal('terradart-export'),
        performanceData: .literal(<String, Object?>{'max_days': 30}),
        dependsOn: apiDeps,
      ),
    );

    final group = GoogleMigrationCenterGroup(
      localName: 'assets',
      location: .literal(location),
      groupId: .literal('terradart-group'),
      displayName: .literal('TerraDart asset group'),
      dependsOn: apiDeps,
    );
    add(group);

    final preferenceSet = GoogleMigrationCenterPreferenceSet(
      localName: 'defaults',
      location: .literal(location),
      preferenceSetId: .literal('terradart-prefs'),
      displayName: .literal('TerraDart preference set'),
      dependsOn: apiDeps,
    );
    add(preferenceSet);

    final reportConfig = GoogleMigrationCenterReportConfig(
      localName: 'tco',
      location: .literal(location),
      reportConfigId: .literal(reportConfigId),
      displayName: .literal('TerraDart report config'),
      groupPreferencesetAssignments: [
        MigrationCenterReportConfigGroupPreferencesetAssignment(
          group: .ref(group.nameRef),
          preferenceSet: .ref(preferenceSet.nameRef),
        ),
      ],
      dependsOn: [
        ...apiDeps,
        ResourceDependency(group),
        ResourceDependency(preferenceSet),
      ],
    );
    add(reportConfig);

    // `report_config` is a path ID segment (not the full resource name) —
    // same pattern as import_data_file's `import_job`.
    add(
      GoogleMigrationCenterReport(
        localName: 'assessment',
        location: .literal(location),
        reportConfig: .literal(reportConfigId),
        reportId: .literal('terradart-report'),
        type: .literal(.totalCostOfOwnership),
        displayName: .literal('TerraDart assessment report'),
        dependsOn: [...apiDeps, ResourceDependency(reportConfig)],
      ),
    );
  }
}
