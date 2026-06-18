/// Dataplex quickstart — governed data product + IAM member.
///
/// Provisions a `google_dataplex_data_product` and grants a separate
/// in-stack service account `roles/dataplex.dataProductViewer` on that
/// product via `google_dataplex_data_product_iam_member`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/dataplex.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

final class DataplexCatalogStack extends Stack {
  DataplexCatalogStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.dataplex],
      propagationDelay: const Duration(seconds: 60),
    );

    final owner = add(
      GoogleServiceAccount(
        localName: 'product_owner',
        accountId: TfArg.literal('dataplex-product-owner'),
        displayName: TfArg.literal('Dataplex data product owner'),
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        localName: 'product_reader',
        accountId: TfArg.literal('dataplex-product-reader'),
        displayName: TfArg.literal('Dataplex data product reader'),
      ),
    );

    final dataProduct = add(
      GoogleDataplexDataProduct(
        localName: 'customer_360',
        location: TfArg.literal('us-central1'),
        dataProductId: TfArg.literal('customer-360'),
        displayName: TfArg.literal('Customer 360'),
        ownerEmails: TfArg.literal([owner.email.interpolation]),
        description: TfArg.literal('Curated customer analytics product'),
        dependsOn: [...apiDeps, ResourceDependency(owner)],
      ),
    );

    add(
      GoogleDataplexDataProductIamMember(
        localName: 'customer_360_reader',
        dataProductId: TfArg.ref(dataProduct.dataProductIdRef),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/dataplex.viewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(dataProduct),
          ResourceDependency(reader),
        ],
      ),
    );
  }
}
