/// Migration Center quickstart — settings, source, discovery, import, and reports.
library;

import 'package:terradart_core/terradart_core.dart';
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

    final source = GoogleMigrationCenterSource(
      localName: 'inventory',
      location: TfArg.literal(location),
      sourceId: TfArg.literal('terradart-source'),
      displayName: TfArg.literal('TerraDart inventory source'),
      type: TfArg.literal(MigrationCenterSourceType.sourceTypeUpload),
      dependsOn: apiDeps,
    );
    add(source);

    add(
      GoogleMigrationCenterDiscoveryClient(
        localName: 'agent',
        location: TfArg.literal(location),
        discoveryClientId: TfArg.literal('terradart-discovery'),
        source: TfArg.ref(source.nameRef),
        serviceAccount:
            TfArg.literal('discovery-agent@$projectId.iam.gserviceaccount.com'),
        displayName: TfArg.literal('TerraDart discovery client'),
        dependsOn: [...apiDeps, ResourceDependency(source)],
      ),
    );

    add(
      GoogleMigrationCenterImportJob(
        localName: 'upload',
        location: TfArg.literal(location),
        importJobId: TfArg.literal('terradart-import'),
        assetSource: TfArg.ref(source.nameRef),
        displayName: TfArg.literal('TerraDart import job'),
        dependsOn: [...apiDeps, ResourceDependency(source)],
      ),
    );

    final reportConfig = GoogleMigrationCenterReportConfig(
      localName: 'assessment',
      location: TfArg.literal(location),
      reportConfigId: TfArg.literal('terradart-report-config'),
      displayName: TfArg.literal('TerraDart assessment config'),
      groupPreferencesetAssignments: [
        MigrationCenterReportConfigGroupPreferencesetAssignment(
          group: TfArg.literal(
            'projects/$projectId/locations/$location/groups/terradart-group',
          ),
          preferenceSet: TfArg.literal(
            'projects/$projectId/locations/$location/preferenceSets/terradart-prefs',
          ),
        ),
      ],
      dependsOn: apiDeps,
    );
    add(reportConfig);

    add(
      GoogleMigrationCenterReport(
        localName: 'q1',
        location: TfArg.literal(location),
        reportConfig: TfArg.ref(reportConfig.nameRef),
        reportId: TfArg.literal('terradart-report'),
        displayName: TfArg.literal('TerraDart assessment report'),
        dependsOn: [...apiDeps, ResourceDependency(reportConfig)],
      ),
    );

    add(
      GoogleMigrationCenterAssetsExportJob(
        localName: 'export',
        location: TfArg.literal(location),
        assetsExportJobId: TfArg.literal('terradart-export'),
        dependsOn: apiDeps,
      ),
    );
  }
}
