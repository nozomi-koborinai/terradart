/// License Manager quickstart — Office SPLA configuration.
///
/// Provisions a `google_license_manager_configuration` for a supported
/// third-party product in a single region.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/license_manager.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

final class LicenseManagerCatalogStack extends Stack {
  LicenseManagerCatalogStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.licenseManager],
      propagationDelay: const Duration(seconds: 60),
    );

    add(
      GoogleLicenseManagerConfiguration(
        localName: 'office_spla',
        location: TfArg.literal('us-central1'),
        configurationId: TfArg.literal('office-2021-pro-plus'),
        product: TfArg.literal('Office2021ProfessionalPlus'),
        licenseCount: TfArg.literal(5),
        active: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );
  }
}
