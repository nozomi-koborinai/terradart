/// Cloud Healthcare quickstart -- an end-to-end terradart example.
///
/// Defines a `HealthcareStack` that enables the Cloud Healthcare API and
/// provisions:
/// - a healthcare dataset,
/// - DICOM, consent, HL7v2, and FHIR stores inside it,
/// - store-level + dataset IAM grants for an in-stack service account.
///
/// [GoogleHealthcareWorkspace] is deferred to [tool/example_debt.yaml]
/// (create returns 404 Method not found on terradart-validate).
///
/// Datasets and stores are free (you are billed for stored data / operations),
/// so the stack creates and destroys cleanly in a single project.
///
/// Exports the dataset name as a typed Dart constant via `Stack.addConstant`.
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/healthcare.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Cloud Healthcare Stack: a dataset with DICOM / consent / HL7v2 / FHIR stores.
final class HealthcareStack extends Stack {
  HealthcareStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/healthcare_stack.app.dart'),
      ) {
    final apiHealthcare = add(
      GoogleProjectService(
        localName: 'api_healthcare',
        service: .literal('healthcare.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    // IAM members validate that the principal exists, so provision the service
    // account in-stack and bind against its `iamMember` ref.
    final analyst = add(
      GoogleServiceAccount(
        localName: 'analyst',
        accountId: .literal('healthcare-analyst'),
        displayName: .literal('Healthcare dataset analyst'),
      ),
    );

    final dataset = add(
      GoogleHealthcareDataset(
        localName: 'records',
        name: .literal('terradart-records'),
        location: .literal('us-central1'),
        timeZone: .literal('UTC'),
        dependsOn: [ResourceDependency(apiHealthcare)],
      ),
    );

    final dicom = add(
      GoogleHealthcareDicomStore(
        localName: 'images',
        name: .literal('terradart-images'),
        dataset: dataset.ref,
        labels: .literal(const {'managed-by': 'terradart'}),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );

    final consent = add(
      GoogleHealthcareConsentStore(
        localName: 'consents',
        name: .literal('terradart-consents'),
        dataset: dataset.ref,
        defaultConsentTtl: .literal('86400s'),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );

    final hl7 = add(
      GoogleHealthcareHl7V2Store(
        localName: 'messages',
        name: .literal('terradart-hl7'),
        dataset: dataset.ref,
        rejectDuplicateMessage: .literal(true),
        parserConfig: HealthcareHl7V2StoreParserConfig(
          version: .literal(.v3),
          allowNullHeader: .literal(false),
        ),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );

    final fhir = add(
      GoogleHealthcareFhirStore(
        localName: 'clinical',
        name: .literal('terradart-fhir'),
        dataset: dataset.ref,
        version: .literal(.r4),
        labels: .literal(const {'managed-by': 'terradart'}),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );

    add(
      GoogleHealthcareDatasetIamMember(
        localName: 'dataset_viewer',
        dataset: dataset.ref,
        role: .literal('roles/healthcare.datasetViewer'),
        member: .ref(analyst.iamMember),
        dependsOn: [ResourceDependency(dataset), ResourceDependency(analyst)],
      ),
    );

    // Store-level IAM members: grant the analyst read access on each store.
    add(
      GoogleHealthcareDicomStoreIamMember(
        localName: 'dicom_viewer',
        dicomStore: dicom.ref,
        role: .literal('roles/healthcare.dicomViewer'),
        member: .ref(analyst.iamMember),
        dependsOn: [ResourceDependency(dicom), ResourceDependency(analyst)],
      ),
    );

    add(
      GoogleHealthcareHl7V2StoreIamMember(
        localName: 'hl7_consumer',
        hl7V2Store: hl7.ref,
        role: .literal('roles/healthcare.hl7V2Consumer'),
        member: .ref(analyst.iamMember),
        dependsOn: [ResourceDependency(hl7), ResourceDependency(analyst)],
      ),
    );

    add(
      GoogleHealthcareConsentStoreIamMember(
        localName: 'consent_viewer',
        consentStore: consent.ref,
        role: .literal('roles/healthcare.consentStoreViewer'),
        member: .ref(analyst.iamMember),
        dependsOn: [ResourceDependency(consent), ResourceDependency(analyst)],
      ),
    );

    add(
      GoogleHealthcareFhirStoreIamMember(
        localName: 'fhir_viewer',
        fhirStore: fhir.ref,
        role: .literal('roles/healthcare.fhirResourceReader'),
        member: .ref(analyst.iamMember),
        dependsOn: [ResourceDependency(fhir), ResourceDependency(analyst)],
      ),
    );

    // Literal dataset name -- emitted as a Dart constant at synth time.
    addConstant('healthcareDatasetName', .ref(dataset.nameRef));

    // Full dataset resource id -- Terraform output only (computed).
    addOutput('healthcare_dataset_id', .ref(dataset.id));
  }
}
