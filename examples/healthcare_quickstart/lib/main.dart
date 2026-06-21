/// Cloud Healthcare quickstart -- an end-to-end terradart example.
///
/// Defines a `HealthcareStack` that enables the Cloud Healthcare API and
/// provisions:
/// - a healthcare dataset,
/// - a DICOM store and a consent store inside it,
/// - a `roles/healthcare.datasetViewer` grant on the dataset for an in-stack
///   service account.
///
/// Datasets and stores are free (you are billed for stored data / operations),
/// so the stack creates and destroys cleanly in a single project.
///
/// Exports the dataset name as a typed Dart constant via `Stack.addExport`.
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/healthcare.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Cloud Healthcare Stack: a dataset with a DICOM + consent store and IAM.
final class HealthcareStack extends Stack {
  HealthcareStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiHealthcare = add(
      GoogleProjectService(
        localName: 'api_healthcare',
        service: TfArg.literal('healthcare.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    // IAM members validate that the principal exists, so provision the service
    // account in-stack and bind against its `iamMember` ref.
    final analyst = add(
      GoogleServiceAccount(
        localName: 'analyst',
        accountId: TfArg.literal('healthcare-analyst'),
        displayName: TfArg.literal('Healthcare dataset analyst'),
      ),
    );

    final dataset = add(
      GoogleHealthcareDataset(
        localName: 'records',
        name: TfArg.literal('terradart-records'),
        location: TfArg.literal('us-central1'),
        timeZone: TfArg.literal('UTC'),
        dependsOn: [ResourceDependency(apiHealthcare)],
      ),
    );

    final dicom = add(
      GoogleHealthcareDicomStore(
        localName: 'images',
        name: TfArg.literal('terradart-images'),
        dataset: TfArg.ref(dataset.id),
        labels: TfArg.literal(const {'managed-by': 'terradart'}),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );

    final consent = add(
      GoogleHealthcareConsentStore(
        localName: 'consents',
        name: TfArg.literal('terradart-consents'),
        dataset: TfArg.ref(dataset.id),
        defaultConsentTtl: TfArg.literal('86400s'),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );

    final hl7 = add(
      GoogleHealthcareHl7V2Store(
        localName: 'messages',
        name: TfArg.literal('terradart-hl7'),
        dataset: TfArg.ref(dataset.id),
        rejectDuplicateMessage: TfArg.literal(true),
        parserConfig: HealthcareHl7V2StoreParserConfig(
          version: TfArg.literal(HealthcareHl7V2StoreParserConfigVersion.v3),
          allowNullHeader: TfArg.literal(false),
        ),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );

    add(
      GoogleHealthcareDatasetIamMember(
        localName: 'dataset_viewer',
        datasetId: TfArg.ref(dataset.id),
        role: TfArg.literal('roles/healthcare.datasetViewer'),
        member: TfArg.ref(analyst.iamMember),
        dependsOn: [
          ResourceDependency(dataset),
          ResourceDependency(analyst),
        ],
      ),
    );

    // Store-level IAM members: grant the analyst read access on each store.
    add(
      GoogleHealthcareDicomStoreIamMember(
        localName: 'dicom_viewer',
        dicomStoreId: TfArg.ref(dicom.id),
        role: TfArg.literal('roles/healthcare.dicomViewer'),
        member: TfArg.ref(analyst.iamMember),
        dependsOn: [ResourceDependency(dicom), ResourceDependency(analyst)],
      ),
    );

    add(
      GoogleHealthcareHl7V2StoreIamMember(
        localName: 'hl7_consumer',
        hl7V2StoreId: TfArg.ref(hl7.id),
        role: TfArg.literal('roles/healthcare.hl7V2Consumer'),
        member: TfArg.ref(analyst.iamMember),
        dependsOn: [ResourceDependency(hl7), ResourceDependency(analyst)],
      ),
    );

    add(
      GoogleHealthcareConsentStoreIamMember(
        localName: 'consent_viewer',
        consentStoreId: TfArg.ref(consent.id),
        dataset: TfArg.ref(dataset.id),
        role: TfArg.literal('roles/healthcare.consentStoreViewer'),
        member: TfArg.ref(analyst.iamMember),
        dependsOn: [ResourceDependency(consent), ResourceDependency(analyst)],
      ),
    );

    // Literal dataset name -- emitted as a Dart constant at synth time.
    addExport('HEALTHCARE_DATASET_NAME', StringExport('terradart-records'));

    // Full dataset resource id -- Terraform output only (computed).
    addExport(
      'HEALTHCARE_DATASET_ID',
      ResourceIdExport(dataset.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/healthcare_stack.app.dart');
  }
}
