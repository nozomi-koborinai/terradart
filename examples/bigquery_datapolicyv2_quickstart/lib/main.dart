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

import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Data Policy V2 stack: raw access + email mask + reader IAM.
final class DataPolicyV2Stack extends Stack {
  DataPolicyV2Stack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final api = add(
      GoogleProjectService(
        'api_bigquerydatapolicy',
        service: .literal('bigquerydatapolicy.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleBigqueryDatapolicyv2DataPolicy(
        'raw_access',
        location: .literal('us-central1'),
        dataPolicyId: .literal('raw-access'),
        dataPolicyType: .rawDataAccessPolicy,
        deletionPolicy: .literal('DELETE'),
        dependsOn: [api],
      ),
    );

    final emailMask = add(
      GoogleBigqueryDatapolicyv2DataPolicy(
        'email_mask_v2',
        location: .literal('us-central1'),
        dataPolicyId: .literal('email-mask-v2'),
        dataPolicyType: .dataMaskingPolicy,
        dataMaskingPolicy:
            const BigqueryDatapolicyv2DataPolicyDataMaskingPolicy(
              predefinedExpression:
                  BigqueryDatapolicyv2DataPolicyPredefinedExpression.emailMask,
            ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [api],
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        'mask_reader',
        accountId: .literal('mask-reader-v2'),
        displayName: .literal('Data Policy V2 masked reader'),
      ),
    );

    add(
      GoogleBigqueryDatapolicyv2DataPolicyIamMember(
        'email_mask_reader',
        dataPolicy: .literal('email-mask-v2'),
        location: .literal('us-central1'),
        role: .literal('roles/bigquerydatapolicy.maskedReader'),
        member: reader.principal,
        dependsOn: [emailMask, reader],
      ),
    );
  }
}
