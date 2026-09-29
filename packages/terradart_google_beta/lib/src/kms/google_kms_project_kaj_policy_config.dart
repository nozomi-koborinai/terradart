// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_project_kaj_policy_config`.
const Set<String> _googleKmsProjectKajPolicyConfigSensitive = <String>{};

/// Typed helper for the `default_key_access_justification_policy` block of
/// `google_kms_project_kaj_policy_config` (derived from provider schema).
@immutable
final class KmsProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy {
  const KmsProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy({
    this.allowedAccessReasons,
  });

  final List<
    TfArg<
      KmsProjectKajPolicyConfigDefaultKeyAccessJustificationPolicyAllowedAccessReasons
    >
  >?
  allowedAccessReasons;

  Map<String, Object?> encode() => {
    if (allowedAccessReasons != null)
      'allowed_access_reasons': [
        for (final e in allowedAccessReasons!) e.toTfJson(),
      ],
  };
}

/// `allowed_access_reasons` — derived from the provider schema description.
enum KmsProjectKajPolicyConfigDefaultKeyAccessJustificationPolicyAllowedAccessReasons
    implements TerraformEnum {
  customerInitiatedSupport('CUSTOMER_INITIATED_SUPPORT'),
  googleInitiatedService('GOOGLE_INITIATED_SERVICE'),
  thirdPartyDataRequest('THIRD_PARTY_DATA_REQUEST'),
  googleInitiatedReview('GOOGLE_INITIATED_REVIEW'),
  customerInitiatedAccess('CUSTOMER_INITIATED_ACCESS'),
  googleInitiatedSystemOperation('GOOGLE_INITIATED_SYSTEM_OPERATION'),
  reasonNotExpected('REASON_NOT_EXPECTED'),
  modifiedCustomerInitiatedAccess('MODIFIED_CUSTOMER_INITIATED_ACCESS'),
  modifiedGoogleInitiatedSystemOperation(
    'MODIFIED_GOOGLE_INITIATED_SYSTEM_OPERATION',
  ),
  googleResponseToProductionAlert('GOOGLE_RESPONSE_TO_PRODUCTION_ALERT'),
  customerAuthorizedWorkflowServicing('CUSTOMER_AUTHORIZED_WORKFLOW_SERVICING');

  const KmsProjectKajPolicyConfigDefaultKeyAccessJustificationPolicyAllowedAccessReasons(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_kms_project_kaj_policy_config`.
///
/// `ProjectKajPolicyConfig` is a project-level singleton resource used to
/// configure the default KAJ policy of newly created key.
///
/// ~> **Note:** ProjectKajPolicyConfig cannot be deleted from Google Cloud
/// Platform. Destroying a Terraform-managed ProjectKajPolicyConfig will remove
/// it from state but *will not delete the resource from Google Cloud Platform.*
final class GoogleKmsProjectKajPolicyConfig extends Resource {
  static const String tfType = 'google_kms_project_kaj_policy_config';

  GoogleKmsProjectKajPolicyConfig({
    required super.localName,
    TfArg<String>? project,
    KmsProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy?
    defaultKeyAccessJustificationPolicy,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (project != null) 'project': project,
           if (defaultKeyAccessJustificationPolicy != null)
             'default_key_access_justification_policy': TfArg.literal(
               defaultKeyAccessJustificationPolicy.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsProjectKajPolicyConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
