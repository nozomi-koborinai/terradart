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
        'api_healthcare',
        service: .literal('healthcare.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    // IAM members validate that the principal exists, so provision the service
    // account in-stack and bind against its `principal`.
    final analyst = add(
      GoogleServiceAccount(
        'analyst',
        accountId: .literal('healthcare-analyst'),
        displayName: .literal('Healthcare dataset analyst'),
      ),
    );

    final dataset = add(
      GoogleHealthcareDataset(
        'records',
        name: .literal('terradart-records'),
        location: .literal('us-central1'),
        timeZone: .literal('UTC'),
        dependsOn: [apiHealthcare],
      ),
    );

    final dicom = add(
      GoogleHealthcareDicomStore(
        'images',
        name: .literal('terradart-images'),
        dataset: dataset.ref,
        labels: .literal(const {'managed-by': 'terradart'}),
        dependsOn: [dataset],
      ),
    );

    final consent = add(
      GoogleHealthcareConsentStore(
        'consents',
        name: .literal('terradart-consents'),
        dataset: dataset.ref,
        defaultConsentTtl: .literal('86400s'),
        dependsOn: [dataset],
      ),
    );

    final hl7 = add(
      GoogleHealthcareHl7V2Store(
        'messages',
        name: .literal('terradart-hl7'),
        dataset: dataset.ref,
        rejectDuplicateMessage: .literal(true),
        parserConfig: HealthcareHl7V2StoreParserConfig(
          version: .literal(.v3),
          allowNullHeader: .literal(false),
        ),
        dependsOn: [dataset],
      ),
    );

    final fhir = add(
      GoogleHealthcareFhirStore(
        'clinical',
        name: .literal('terradart-fhir'),
        dataset: dataset.ref,
        version: .literal(.r4),
        labels: .literal(const {'managed-by': 'terradart'}),
        dependsOn: [dataset],
      ),
    );

    add(
      GoogleHealthcareDatasetIamMember(
        'dataset_viewer',
        dataset: dataset.ref,
        role: .literal('roles/healthcare.datasetViewer'),
        member: analyst.principal,
        dependsOn: [dataset, analyst],
      ),
    );

    // Store-level IAM members: grant the analyst read access on each store.
    add(
      GoogleHealthcareDicomStoreIamMember(
        'dicom_viewer',
        dicomStore: dicom.ref,
        role: .literal('roles/healthcare.dicomViewer'),
        member: analyst.principal,
        dependsOn: [dicom, analyst],
      ),
    );

    add(
      GoogleHealthcareHl7V2StoreIamMember(
        'hl7_consumer',
        hl7V2Store: hl7.ref,
        role: .literal('roles/healthcare.hl7V2Consumer'),
        member: analyst.principal,
        dependsOn: [hl7, analyst],
      ),
    );

    add(
      GoogleHealthcareConsentStoreIamMember(
        'consent_viewer',
        consentStore: consent.ref,
        role: .literal('roles/healthcare.consentStoreViewer'),
        member: analyst.principal,
        dependsOn: [consent, analyst],
      ),
    );

    add(
      GoogleHealthcareFhirStoreIamMember(
        'fhir_viewer',
        fhirStore: fhir.ref,
        role: .literal('roles/healthcare.fhirResourceReader'),
        member: analyst.principal,
        dependsOn: [fhir, analyst],
      ),
    );

    // Literal dataset name -- emitted as a Dart constant at synth time.
    addConstant('healthcareDatasetName', .ref(dataset.name));

    // Full dataset resource id -- Terraform output only (computed).
    addOutput('healthcare_dataset_id', dataset.id);
  }
}
