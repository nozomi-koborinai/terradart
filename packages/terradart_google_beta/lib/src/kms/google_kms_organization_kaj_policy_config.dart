// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_organization_kaj_policy_config`.
const Set<String> _googleKmsOrganizationKajPolicyConfigSensitive = <String>{};

/// Typed helper for the `default_key_access_justification_policy` block of
/// `google_kms_organization_kaj_policy_config` (derived from provider schema).
@immutable
final class KmsOrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy {
  const KmsOrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy({
    this.allowedAccessReasons,
  });

  final List<TfArg<KmsOrganizationKajPolicyConfigAllowedAccessReasons>>?
  allowedAccessReasons;

  Map<String, Object?> encode() => {
    if (allowedAccessReasons != null)
      'allowed_access_reasons': [
        for (final e in allowedAccessReasons!) e.toTfJson(),
      ],
  };
}

/// `allowed_access_reasons` — derived from the provider schema description.
enum KmsOrganizationKajPolicyConfigAllowedAccessReasons
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

  const KmsOrganizationKajPolicyConfigAllowedAccessReasons(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_kms_organization_kaj_policy_config`.
///
/// `OrganizationKajPolicyConfig` is a organization-level singleton resource
/// used to configure the default KAJ policy of newly created key.
///
/// ~> **Note:** OrganizationKajPolicyConfig cannot be deleted from Google Cloud
/// Platform. Destroying a Terraform-managed OrganizationKajPolicyConfig will
/// remove it from state but *will not delete the resource from Google Cloud
/// Platform.*
final class GoogleKmsOrganizationKajPolicyConfig extends Resource {
  static const String tfType = 'google_kms_organization_kaj_policy_config';

  GoogleKmsOrganizationKajPolicyConfig({
    required super.localName,
    required TfArg<String> organization,
    KmsOrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy?
    defaultKeyAccessJustificationPolicy,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'organization': organization,
           if (defaultKeyAccessJustificationPolicy != null)
             'default_key_access_justification_policy': TfArg.literal(
               defaultKeyAccessJustificationPolicy.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleKmsOrganizationKajPolicyConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsOrganizationKajPolicyConfig>`.
  RefTo<GoogleKmsOrganizationKajPolicyConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');
}
