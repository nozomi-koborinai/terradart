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

  final List<KmsProjectKajPolicyConfigAllowedAccessReasons>?
  allowedAccessReasons;

  Map<String, Object?> encode() => {
    if (allowedAccessReasons != null)
      'allowed_access_reasons': [
        for (final e in allowedAccessReasons!) e.toTfJson(),
      ],
  };
}

/// `allowed_access_reasons` — derived from the provider schema description.
extension type const KmsProjectKajPolicyConfigAllowedAccessReasons._(
  TfArg<String> _
) implements TfArg<String> {
  KmsProjectKajPolicyConfigAllowedAccessReasons.variable(String name)
    : this._(TfArg.variable(name));
  KmsProjectKajPolicyConfigAllowedAccessReasons.expression(String template)
    : this._(TfArg.expression(template));
  const KmsProjectKajPolicyConfigAllowedAccessReasons.arg(TfArg<String> arg)
    : this._(arg);

  static const customerInitiatedSupport =
      KmsProjectKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('CUSTOMER_INITIATED_SUPPORT'),
      );
  static const googleInitiatedService =
      KmsProjectKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_INITIATED_SERVICE'),
      );
  static const thirdPartyDataRequest =
      KmsProjectKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('THIRD_PARTY_DATA_REQUEST'),
      );
  static const googleInitiatedReview =
      KmsProjectKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_INITIATED_REVIEW'),
      );
  static const customerInitiatedAccess =
      KmsProjectKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('CUSTOMER_INITIATED_ACCESS'),
      );
  static const googleInitiatedSystemOperation =
      KmsProjectKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_INITIATED_SYSTEM_OPERATION'),
      );
  static const reasonNotExpected =
      KmsProjectKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('REASON_NOT_EXPECTED'),
      );
  static const modifiedCustomerInitiatedAccess =
      KmsProjectKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('MODIFIED_CUSTOMER_INITIATED_ACCESS'),
      );
  static const modifiedGoogleInitiatedSystemOperation =
      KmsProjectKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('MODIFIED_GOOGLE_INITIATED_SYSTEM_OPERATION'),
      );
  static const googleResponseToProductionAlert =
      KmsProjectKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_RESPONSE_TO_PRODUCTION_ALERT'),
      );
  static const customerAuthorizedWorkflowServicing =
      KmsProjectKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('CUSTOMER_AUTHORIZED_WORKFLOW_SERVICING'),
      );

  static const List<KmsProjectKajPolicyConfigAllowedAccessReasons> values = [
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

  GoogleKmsProjectKajPolicyConfig(
    super.localName, {
    TfArg<String>? project,
    KmsProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy?
    defaultKeyAccessJustificationPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project': ?project,
           if (defaultKeyAccessJustificationPolicy != null)
             'default_key_access_justification_policy': TfArg.literal(
               defaultKeyAccessJustificationPolicy.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsProjectKajPolicyConfigSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsProjectKajPolicyConfig>`.
  RefTo<GoogleKmsProjectKajPolicyConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
