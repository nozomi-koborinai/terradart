/// Migration Center quickstart — settings, sources, discovery, import, groups,
/// preference sets, and reports.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/migration.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

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

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.migration],
      propagationDelay: const Duration(seconds: 60),
    );

    add(
      GoogleMigrationCenterSettings(
        localName: 'default',
        location: TfArg.literal(location),
        dependsOn: apiDeps,
      ),
    );

    // Upload source for import jobs; discovery clients require a separate
    // SOURCE_TYPE_DISCOVERY_CLIENT source (API 400 otherwise).
    final uploadSource = GoogleMigrationCenterSource(
      localName: 'inventory',
      location: TfArg.literal(location),
      sourceId: TfArg.literal('terradart-source'),
      displayName: TfArg.literal('TerraDart upload source'),
      type: TfArg.literal(MigrationCenterSourceType.sourceTypeUpload),
      dependsOn: apiDeps,
    );
    add(uploadSource);

    final discoverySource = GoogleMigrationCenterSource(
      localName: 'discovery',
      location: TfArg.literal(location),
      sourceId: TfArg.literal('terradart-discovery-source'),
      displayName: TfArg.literal('TerraDart discovery source'),
      type: TfArg.literal(MigrationCenterSourceType.sourceTypeDiscoveryClient),
      dependsOn: apiDeps,
    );
    add(discoverySource);

    // Discovery client rejects a non-existent service account email at apply
    // time — provision the SA in-stack and pass its email ref.
    final discoverySa = add(
      GoogleServiceAccount(
        localName: 'discovery_agent',
        accountId: TfArg.literal('mc-discovery-agent'),
        displayName: TfArg.literal('Migration Center discovery agent'),
      ),
    );

    add(
      GoogleMigrationCenterDiscoveryClient(
        localName: 'agent',
        location: TfArg.literal(location),
        discoveryClientId: TfArg.literal('terradart-discovery'),
        source: TfArg.ref(discoverySource.nameRef),
        serviceAccount: TfArg.ref(discoverySa.email),
        displayName: TfArg.literal('TerraDart discovery client'),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(discoverySource),
          ResourceDependency(discoverySa),
        ],
      ),
    );

    final importJob = GoogleMigrationCenterImportJob(
      localName: 'upload',
      location: TfArg.literal(location),
      importJobId: TfArg.literal(importJobId),
      assetSource: TfArg.ref(uploadSource.nameRef),
      displayName: TfArg.literal('TerraDart import job'),
      dependsOn: [...apiDeps, ResourceDependency(uploadSource)],
    );
    add(importJob);

    // `import_job` is a path ID segment (not the full resource name) — see
    // hashicorp/google docs example using `.import_job_id`.
    add(
      GoogleMigrationCenterImportDataFile(
        localName: 'payload',
        location: TfArg.literal(location),
        importJob: TfArg.literal(importJobId),
        importDataFileId: TfArg.literal('terradart-import-file'),
        format: TfArg.literal(
          MigrationCenterImportDataFileFormat.rvtoolsXlsx,
        ),
        displayName: TfArg.literal('TerraDart import payload'),
        dependsOn: [...apiDeps, ResourceDependency(importJob)],
      ),
    );

    // API requires one of inventory / performance_data / network_dependencies.
    // Only performance_data is a writable nested block in the provider schema.
    add(
      GoogleMigrationCenterAssetsExportJob(
        localName: 'export',
        location: TfArg.literal(location),
        assetsExportJobId: TfArg.literal('terradart-export'),
        performanceData: TfArg.literal(<String, Object?>{'max_days': 30}),
        dependsOn: apiDeps,
      ),
    );

    final group = GoogleMigrationCenterGroup(
      localName: 'assets',
      location: TfArg.literal(location),
      groupId: TfArg.literal('terradart-group'),
      displayName: TfArg.literal('TerraDart asset group'),
      dependsOn: apiDeps,
    );
    add(group);

    final preferenceSet = GoogleMigrationCenterPreferenceSet(
      localName: 'defaults',
      location: TfArg.literal(location),
      preferenceSetId: TfArg.literal('terradart-prefs'),
      displayName: TfArg.literal('TerraDart preference set'),
      dependsOn: apiDeps,
    );
    add(preferenceSet);

    final reportConfig = GoogleMigrationCenterReportConfig(
      localName: 'tco',
      location: TfArg.literal(location),
      reportConfigId: TfArg.literal('terradart-report-config'),
      displayName: TfArg.literal('TerraDart report config'),
      groupPreferencesetAssignments: [
        MigrationCenterReportConfigGroupPreferencesetAssignment(
          group: TfArg.ref(group.nameRef),
          preferenceSet: TfArg.ref(preferenceSet.nameRef),
        ),
      ],
      dependsOn: [
        ...apiDeps,
        ResourceDependency(group),
        ResourceDependency(preferenceSet),
      ],
    );
    add(reportConfig);

    add(
      GoogleMigrationCenterReport(
        localName: 'assessment',
        location: TfArg.literal(location),
        reportConfig: TfArg.ref(reportConfig.nameRef),
        reportId: TfArg.literal('terradart-report'),
        displayName: TfArg.literal('TerraDart assessment report'),
        dependsOn: [...apiDeps, ResourceDependency(reportConfig)],
      ),
    );
  }
}
