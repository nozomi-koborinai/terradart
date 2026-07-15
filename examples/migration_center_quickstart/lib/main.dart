/// Migration Center quickstart — settings, source, discovery, import, and data file.
///
/// Report / report-config are deferred to [tool/example_debt.yaml]: they need
/// curated `google_migration_center_group` + `preference_set` factories (not
/// yet wrapped). Placeholder self-links fail at apply time.
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
        source: TfArg.ref(source.nameRef),
        serviceAccount: TfArg.ref(discoverySa.email),
        displayName: TfArg.literal('TerraDart discovery client'),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(source),
          ResourceDependency(discoverySa),
        ],
      ),
    );

    final importJob = GoogleMigrationCenterImportJob(
      localName: 'upload',
      location: TfArg.literal(location),
      importJobId: TfArg.literal('terradart-import'),
      assetSource: TfArg.ref(source.nameRef),
      displayName: TfArg.literal('TerraDart import job'),
      dependsOn: [...apiDeps, ResourceDependency(source)],
    );
    add(importJob);

    add(
      GoogleMigrationCenterImportDataFile(
        localName: 'payload',
        location: TfArg.literal(location),
        importJob: TfArg.ref(importJob.nameRef),
        importDataFileId: TfArg.literal('terradart-import-file'),
        format: TfArg.literal(
          MigrationCenterImportDataFileFormat.rvtoolsXlsx,
        ),
        displayName: TfArg.literal('TerraDart import payload'),
        dependsOn: [...apiDeps, ResourceDependency(importJob)],
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
