/// Sensitive Data Protection (DLP) quickstart -- an end-to-end terradart example.
///
/// Enables `dlp.googleapis.com` and provisions:
/// - an inspect template (EMAIL_ADDRESS),
/// - a de-identify template (replace EMAIL_ADDRESS),
/// - a regex stored info type,
/// - a paused job trigger over an empty GCS prefix.
///
/// Job trigger status is [DataLossPreventionJobTriggerStatus.paused] so apply
/// does not start inspect scans (DLP bills for bytes inspected).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/dlp.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

/// DLP Stack: templates + stored info type + paused job trigger + scan bucket.
final class DlpStack extends Stack {
  DlpStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final parent = 'projects/$projectId';

    final apiDlp = add(
      GoogleProjectService(
        localName: 'api_dlp',
        service: .literal('dlp.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiStorage = add(
      GoogleProjectService(
        localName: 'api_storage',
        service: .literal('storage.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final inspect = add(
      GoogleDataLossPreventionInspectTemplate(
        localName: 'email_inspect',
        parent: .literal(parent),
        templateId: .literal('terradart-email-inspect'),
        displayName: .literal('terradart-email-inspect'),
        description: .literal('Quickstart inspect template'),
        inspectConfig: .literal({
          'info_types': [
            {'name': 'EMAIL_ADDRESS'},
          ],
          'min_likelihood': 'POSSIBLE',
        }),
        dependsOn: [ResourceDependency(apiDlp)],
      ),
    );

    final deidentify = add(
      GoogleDataLossPreventionDeidentifyTemplate(
        localName: 'email_redact',
        parent: .literal(parent),
        templateId: .literal('terradart-email-redact'),
        displayName: .literal('terradart-email-redact'),
        description: .literal('Quickstart de-identify template'),
        deidentifyConfig: .literal({
          'info_type_transformations': {
            'transformations': [
              {
                'info_types': [
                  {'name': 'EMAIL_ADDRESS'},
                ],
                'primitive_transformation': {
                  'replace_with_info_type_config': true,
                },
              },
            ],
          },
        }),
        dependsOn: [ResourceDependency(apiDlp)],
      ),
    );

    final stored = add(
      GoogleDataLossPreventionStoredInfoType(
        localName: 'patient_id',
        parent: .literal(parent),
        storedInfoTypeId: .literal('terradart-patient-id'),
        displayName: .literal('terradart-patient-id'),
        description: .literal('Quickstart regex stored info type'),
        definition: .regex(pattern: .literal(r'patient-\d{4}')),
        dependsOn: [ResourceDependency(apiDlp)],
      ),
    );

    // Empty bucket for the paused job trigger's storage_config. Force-destroy
    // so `terraform destroy` stays clean if any object appears.
    final scanBucket = add(
      GoogleStorageBucket(
        localName: 'dlp_scan',
        name: .literal('$projectId-terradart-dlp-scan'),
        location: .literal('US'),
        forceDestroy: .literal(true),
        uniformBucketLevelAccess: .literal(true),
        dependsOn: [ResourceDependency(apiStorage)],
      ),
    );

    final trigger = add(
      GoogleDataLossPreventionJobTrigger(
        localName: 'paused_gcs',
        parent: .literal(parent),
        triggerId: .literal('terradart-paused-gcs'),
        displayName: .literal('terradart-paused-gcs'),
        description: .literal('Paused quickstart GCS inspect trigger'),
        status: .literal(.paused),
        triggers: .literal([
          {
            'schedule': {'recurrence_period_duration': '86400s'},
          },
        ]),
        inspectJob: .literal({
          'inspect_template_name': inspect.nameRef.interpolation,
          'storage_config': {
            'cloud_storage_options': {
              'file_set': {'url': 'gs://${scanBucket.nameRef.interpolation}/'},
            },
          },
          // Empty notification action — avoids BigQuery save_findings deps.
          'actions': [
            {'job_notification_emails': {}},
          ],
        }),
        dependsOn: [
          ResourceDependency(inspect),
          ResourceDependency(scanBucket),
        ],
      ),
    );

    addExport(
      'DLP_INSPECT_TEMPLATE_ID',
      ResourceIdExport(inspect.id, emitTerraformOutput: true),
    );
    addExport(
      'DLP_DEIDENTIFY_TEMPLATE_ID',
      ResourceIdExport(deidentify.id, emitTerraformOutput: true),
    );
    addExport(
      'DLP_STORED_INFO_TYPE_ID',
      ResourceIdExport(stored.id, emitTerraformOutput: true),
    );
    addExport(
      'DLP_JOB_TRIGGER_ID',
      ResourceIdExport(trigger.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/dlp_stack.app.dart');
  }
}
