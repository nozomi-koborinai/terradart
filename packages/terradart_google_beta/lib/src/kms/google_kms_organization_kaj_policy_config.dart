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

  final List<KmsOrganizationKajPolicyConfigAllowedAccessReasons>?
  allowedAccessReasons;

  @internal
  Map<String, Object?> encode() => {
    if (allowedAccessReasons != null)
      'allowed_access_reasons': [
        for (final e in allowedAccessReasons!) e.toTfJson(),
      ],
  };
}

/// `allowed_access_reasons` — derived from the provider schema description.
extension type const KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
  TfArg<String> _
) implements TfArg<String> {
  KmsOrganizationKajPolicyConfigAllowedAccessReasons.variable(String name)
    : this._(TfArg.variable(name));
  KmsOrganizationKajPolicyConfigAllowedAccessReasons.expression(String template)
    : this._(TfArg.expression(template));
  const KmsOrganizationKajPolicyConfigAllowedAccessReasons.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const customerInitiatedSupport =
      KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('CUSTOMER_INITIATED_SUPPORT'),
      );
  static const googleInitiatedService =
      KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_INITIATED_SERVICE'),
      );
  static const thirdPartyDataRequest =
      KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('THIRD_PARTY_DATA_REQUEST'),
      );
  static const googleInitiatedReview =
      KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_INITIATED_REVIEW'),
      );
  static const customerInitiatedAccess =
      KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('CUSTOMER_INITIATED_ACCESS'),
      );
  static const googleInitiatedSystemOperation =
      KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_INITIATED_SYSTEM_OPERATION'),
      );
  static const reasonNotExpected =
      KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('REASON_NOT_EXPECTED'),
      );
  static const modifiedCustomerInitiatedAccess =
      KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('MODIFIED_CUSTOMER_INITIATED_ACCESS'),
      );
  static const modifiedGoogleInitiatedSystemOperation =
      KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('MODIFIED_GOOGLE_INITIATED_SYSTEM_OPERATION'),
      );
  static const googleResponseToProductionAlert =
      KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_RESPONSE_TO_PRODUCTION_ALERT'),
      );
  static const customerAuthorizedWorkflowServicing =
      KmsOrganizationKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('CUSTOMER_AUTHORIZED_WORKFLOW_SERVICING'),
      );

  static const List<KmsOrganizationKajPolicyConfigAllowedAccessReasons> values =
      [
        customerInitiatedSupport,
        googleInitiatedService,
        thirdPartyDataRequest,
        googleInitiatedReview,
        customerInitiatedAccess,
        googleInitiatedSystemOperation,
        reasonNotExpected,
        modifiedCustomerInitiatedAccess,
        modifiedGoogleInitiatedSystemOperation,
        googleResponseToProductionAlert,
        customerAuthorizedWorkflowServicing,
      ];
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

  GoogleKmsOrganizationKajPolicyConfig(
    super.localName, {
    required TfArg<String> organization,
    KmsOrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy?
    defaultKeyAccessJustificationPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
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

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsOrganizationKajPolicyConfig>`.
  RefTo<GoogleKmsOrganizationKajPolicyConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');
}
