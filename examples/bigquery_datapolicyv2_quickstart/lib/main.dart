/// BigQuery Data Policy V2 quickstart.
///
/// Enables `bigquerydatapolicy.googleapis.com` and provisions:
/// - a V2 **raw-data access** policy (no policy-tag taxonomy required),
/// - a V2 **data-masking** policy with a predefined EMAIL_MASK expression,
/// - additive IAM (`maskedReader`) for a dedicated reader SA on the masking
///   policy.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Data Policy V2 stack: raw access + email mask + reader IAM.
final class DataPolicyV2Stack extends Stack {
  DataPolicyV2Stack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final api = add(
      GoogleProjectService(
        localName: 'api_bigquerydatapolicy',
        service: TfArg.literal('bigquerydatapolicy.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleBigqueryDatapolicyv2DataPolicy(
        localName: 'raw_access',
        location: TfArg.literal('us-central1'),
        dataPolicyId: TfArg.literal('raw-access'),
        dataPolicyType: TfArg.literal(
          BigqueryDatapolicyv2DataPolicyType.rawDataAccessPolicy,
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(api)],
      ),
    );

    final emailMask = add(
      GoogleBigqueryDatapolicyv2DataPolicy(
        localName: 'email_mask_v2',
        location: TfArg.literal('us-central1'),
        dataPolicyId: TfArg.literal('email-mask-v2'),
        dataPolicyType: TfArg.literal(
          BigqueryDatapolicyv2DataPolicyType.dataMaskingPolicy,
        ),
        dataMaskingPolicy:
            const BigqueryDatapolicyv2DataPolicyDataMaskingPolicy(
          predefinedExpression:
              BigqueryDatapolicyv2DataPolicyPredefinedExpression.emailMask,
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(api)],
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        localName: 'mask_reader',
        accountId: TfArg.literal('mask-reader-v2'),
        displayName: TfArg.literal('Data Policy V2 masked reader'),
      ),
    );

    add(
      GoogleBigqueryDatapolicyv2DataPolicyIamMember(
        localName: 'email_mask_reader',
        dataPolicyId: TfArg.literal('email-mask-v2'),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/bigquerydatapolicy.maskedReader'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(emailMask),
          ResourceDependency(reader),
        ],
      ),
    );
  }
}
