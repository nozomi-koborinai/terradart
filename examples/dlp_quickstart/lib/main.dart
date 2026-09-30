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
        deidentifyConfig: .infoTypeTransformations(
          DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations(
            transformations: [
              DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformations(
                infoTypes: [
                  DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsInfoTypes(
                    name: .literal('EMAIL_ADDRESS'),
                  ),
                ],
                primitiveTransformation:
                    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformation(
                      replaceWithInfoTypeConfig: .literal(true),
                    ),
              ),
            ],
          ),
        ),
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
        definition: .regex(
          DataLossPreventionStoredInfoTypeRegex(
            pattern: .literal(r'patient-\d{4}'),
          ),
        ),
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
        triggers: [
          DataLossPreventionJobTriggerTriggers(
            schedule: DataLossPreventionJobTriggerTriggersSchedule(
              recurrencePeriodDuration: .literal('86400s'),
            ),
          ),
        ],
        inspectJob: DataLossPreventionJobTriggerInspectJob(
          inspectTemplateName: .ref(inspect.nameRef),
          storageConfig: DataLossPreventionJobTriggerInspectJobStorageConfig(
            cloudStorageOptions:
                DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptions(
                  fileSet: .url(
                    .literal('gs://${scanBucket.nameRef.interpolation}/'),
                  ),
                ),
          ),
          // Empty notification action — avoids BigQuery save_findings deps.
          actions: [
            DataLossPreventionJobTriggerInspectJobActions(
              jobNotificationEmails:
                  DataLossPreventionJobTriggerInspectJobActionsJobNotificationEmails(),
            ),
          ],
        ),
        dependsOn: [
          ResourceDependency(inspect),
          ResourceDependency(scanBucket),
        ],
      ),
    );

    // A content policy turns inspection findings into an ALLOW / BLOCK
    // verdict: block content with an email address, allow everything else.
    add(
      GoogleDataLossPreventionContentPolicy(
        localName: 'block_emails',
        parent: .literal('$parent/locations/us-central1'),
        displayName: .literal('terradart-block-emails'),
        inspectConfig: DataLossPreventionContentPolicyInspectConfig(
          infoTypes: [
            DataLossPreventionContentPolicyInspectConfigInfoTypes(
              name: .literal('EMAIL_ADDRESS'),
            ),
          ],
        ),
        rules: [
          DataLossPreventionContentPolicyRules(
            action: DataLossPreventionContentPolicyRulesAction(
              returnVerdict: .literal(.block),
            ),
            conditions: [
              DataLossPreventionContentPolicyRulesConditions(
                infoTypeCondition:
                    DataLossPreventionContentPolicyRulesConditionsInfoTypeCondition(
                      infoTypes:
                          DataLossPreventionContentPolicyRulesConditionsInfoTypeConditionInfoTypes(
                            infoTypeNames: .literal(['EMAIL_ADDRESS']),
                          ),
                    ),
              ),
            ],
          ),
        ],
        defaultAction: DataLossPreventionContentPolicyDefaultAction(
          returnVerdict: .literal(.allow),
        ),
        dependsOn: [ResourceDependency(apiDlp)],
      ),
    );

    addOutput('dlp_inspect_template_id', .ref(inspect.id));
    addOutput('dlp_deidentify_template_id', .ref(deidentify.id));
    addOutput('dlp_stored_info_type_id', .ref(stored.id));
    addOutput('dlp_job_trigger_id', .ref(trigger.id));
  }
}
