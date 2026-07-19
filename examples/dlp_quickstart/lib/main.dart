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
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final parent = 'projects/$projectId';

    final apiDlp = add(
      GoogleProjectService(
        localName: 'api_dlp',
        service: TfArg.literal('dlp.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiStorage = add(
      GoogleProjectService(
        localName: 'api_storage',
        service: TfArg.literal('storage.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final inspect = add(
      GoogleDataLossPreventionInspectTemplate(
        localName: 'email_inspect',
        parent: TfArg.literal(parent),
        templateId: TfArg.literal('terradart-email-inspect'),
        displayName: TfArg.literal('terradart-email-inspect'),
        description: TfArg.literal('Quickstart inspect template'),
        inspectConfig: TfArg.literal({
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
        parent: TfArg.literal(parent),
        templateId: TfArg.literal('terradart-email-redact'),
        displayName: TfArg.literal('terradart-email-redact'),
        description: TfArg.literal('Quickstart de-identify template'),
        deidentifyConfig: TfArg.literal({
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
        parent: TfArg.literal(parent),
        storedInfoTypeId: TfArg.literal('terradart-patient-id'),
        displayName: TfArg.literal('terradart-patient-id'),
        description: TfArg.literal('Quickstart regex stored info type'),
        definition: DataLossPreventionStoredInfoTypeRegex(
          pattern: TfArg.literal(r'patient-\d{4}'),
        ),
        dependsOn: [ResourceDependency(apiDlp)],
      ),
    );

    // Empty bucket for the paused job trigger's storage_config. Force-destroy
    // so apply-smoke teardown stays clean if any object appears.
    final scanBucket = add(
      GoogleStorageBucket(
        localName: 'dlp_scan',
        name: TfArg.literal('$projectId-terradart-dlp-scan'),
        location: TfArg.literal('US'),
        forceDestroy: TfArg.literal(true),
        uniformBucketLevelAccess: TfArg.literal(true),
        dependsOn: [ResourceDependency(apiStorage)],
      ),
    );

    final trigger = add(
      GoogleDataLossPreventionJobTrigger(
        localName: 'paused_gcs',
        parent: TfArg.literal(parent),
        triggerId: TfArg.literal('terradart-paused-gcs'),
        displayName: TfArg.literal('terradart-paused-gcs'),
        description: TfArg.literal('Paused quickstart GCS inspect trigger'),
        status: TfArg.literal(DataLossPreventionJobTriggerStatus.paused),
        triggers: TfArg.literal([
          {
            'schedule': {
              'recurrence_period_duration': '86400s',
            },
          },
        ]),
        inspectJob: TfArg.literal({
          'inspect_template_name': inspect.nameRef.interpolation,
          'storage_config': {
            'cloud_storage_options': {
              'file_set': {
                'url': 'gs://${scanBucket.nameRef.interpolation}/',
              },
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
