/// Sensitive Data Protection (DLP) quickstart -- an end-to-end terradart example.
///
/// Enables `dlp.googleapis.com` and provisions:
/// - an inspect template (EMAIL_ADDRESS),
/// - a de-identify template (replace EMAIL_ADDRESS),
/// - a regex stored info type,
/// - a paused job trigger over an empty GCS prefix,
/// - a content policy (BLOCK verdict on EMAIL_ADDRESS findings).
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
        'api_dlp',
        service: .literal('dlp.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiStorage = add(
      GoogleProjectService(
        'api_storage',
        service: .literal('storage.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final inspect = add(
      GoogleDataLossPreventionInspectTemplate(
        'email_inspect',
        parent: .literal(parent),
        templateId: .literal('terradart-email-inspect'),
        displayName: .literal('terradart-email-inspect'),
        description: .literal('Quickstart inspect template'),
        inspectConfig: DataLossPreventionInspectTemplateInspectConfig(
          infoTypes: [.new(name: .literal('EMAIL_ADDRESS'))],
          minLikelihood: .literal(.possible),
        ),
        dependsOn: [apiDlp],
      ),
    );

    final deidentify = add(
      GoogleDataLossPreventionDeidentifyTemplate(
        'email_redact',
        parent: .literal(parent),
        templateId: .literal('terradart-email-redact'),
        displayName: .literal('terradart-email-redact'),
        description: .literal('Quickstart de-identify template'),
        deidentifyConfig: .infoTypeTransformations(
          .new(
            transformations: [
              .new(
                infoTypes: [.new(name: .literal('EMAIL_ADDRESS'))],
                primitiveTransformation: .new(
                  replaceWithInfoTypeConfig: .literal(true),
                ),
              ),
            ],
          ),
        ),
        dependsOn: [apiDlp],
      ),
    );

    final stored = add(
      GoogleDataLossPreventionStoredInfoType(
        'patient_id',
        parent: .literal(parent),
        storedInfoTypeId: .literal('terradart-patient-id'),
        displayName: .literal('terradart-patient-id'),
        description: .literal('Quickstart regex stored info type'),
        definition: .regex(.new(pattern: .literal(r'patient-\d{4}'))),
        dependsOn: [apiDlp],
      ),
    );

    // Empty bucket for the paused job trigger's storage_config. Force-destroy
    // so `terraform destroy` stays clean if any object appears.
    final scanBucket = add(
      GoogleStorageBucket(
        'dlp_scan',
        name: .literal('$projectId-terradart-dlp-scan'),
        location: .literal('US'),
        forceDestroy: .literal(true),
        uniformBucketLevelAccess: .literal(true),
        dependsOn: [apiStorage],
      ),
    );

    final trigger = add(
      GoogleDataLossPreventionJobTrigger(
        'paused_gcs',
        parent: .literal(parent),
        triggerId: .literal('terradart-paused-gcs'),
        displayName: .literal('terradart-paused-gcs'),
        description: .literal('Paused quickstart GCS inspect trigger'),
        status: .literal(.paused),
        triggers: [
          DataLossPreventionJobTriggerTriggers(
            schedule: .new(recurrencePeriodDuration: .literal('86400s')),
          ),
        ],
        inspectJob: DataLossPreventionJobTriggerInspectJob(
          inspectTemplateName: inspect.ref,
          storageConfig: .new(
            cloudStorageOptions: .new(
              fileSet: .url(.literal('gs://${scanBucket.name.interpolation}/')),
            ),
          ),
          // Empty notification action — avoids BigQuery save_findings deps.
          actions: [.new(jobNotificationEmails: .new())],
        ),
        dependsOn: [inspect, scanBucket],
      ),
    );

    // A content policy turns inspection findings into an ALLOW / BLOCK
    // verdict: block content with an email address, allow everything else.
    add(
      GoogleDataLossPreventionContentPolicy(
        'block_emails',
        parent: .literal('$parent/locations/us-central1'),
        displayName: .literal('terradart-block-emails'),
        inspectConfig: DataLossPreventionContentPolicyInspectConfig(
          infoTypes: [.new(name: .literal('EMAIL_ADDRESS'))],
        ),
        rules: [
          DataLossPreventionContentPolicyRules(
            action: .new(returnVerdict: .literal(.block)),
            conditions: [
              .new(
                infoTypeCondition: .new(
                  infoTypes: .new(infoTypeNames: .literal(['EMAIL_ADDRESS'])),
                ),
              ),
            ],
          ),
        ],
        defaultAction: DataLossPreventionContentPolicyDefaultAction(
          returnVerdict: .literal(.allow),
        ),
        dependsOn: [apiDlp],
      ),
    );

    addOutput('dlp_inspect_template_id', inspect.id);
    addOutput('dlp_deidentify_template_id', deidentify.id);
    addOutput('dlp_stored_info_type_id', stored.id);
    addOutput('dlp_job_trigger_id', trigger.id);
  }
}
