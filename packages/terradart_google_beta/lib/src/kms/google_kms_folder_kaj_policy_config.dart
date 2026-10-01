// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_folder_kaj_policy_config`.
const Set<String> _googleKmsFolderKajPolicyConfigSensitive = <String>{};

/// Typed helper for the `default_key_access_justification_policy` block of
/// `google_kms_folder_kaj_policy_config` (derived from provider schema).
@immutable
final class KmsFolderKajPolicyConfigDefaultKeyAccessJustificationPolicy {
  const KmsFolderKajPolicyConfigDefaultKeyAccessJustificationPolicy({
    this.allowedAccessReasons,
  });

  final List<KmsFolderKajPolicyConfigAllowedAccessReasons>?
  allowedAccessReasons;

  Map<String, Object?> encode() => {
    if (allowedAccessReasons != null)
      'allowed_access_reasons': [
        for (final e in allowedAccessReasons!) e.toTfJson(),
      ],
  };
}

/// `allowed_access_reasons` — derived from the provider schema description.
extension type const KmsFolderKajPolicyConfigAllowedAccessReasons._(
  TfArg<String> _
) implements TfArg<String> {
  KmsFolderKajPolicyConfigAllowedAccessReasons.variable(String name)
    : this._(TfArg.variable(name));
  KmsFolderKajPolicyConfigAllowedAccessReasons.expression(String template)
    : this._(TfArg.expression(template));
  const KmsFolderKajPolicyConfigAllowedAccessReasons.arg(TfArg<String> arg)
    : this._(arg);

  static const customerInitiatedSupport =
      KmsFolderKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('CUSTOMER_INITIATED_SUPPORT'),
      );
  static const googleInitiatedService =
      KmsFolderKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_INITIATED_SERVICE'),
      );
  static const thirdPartyDataRequest =
      KmsFolderKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('THIRD_PARTY_DATA_REQUEST'),
      );
  static const googleInitiatedReview =
      KmsFolderKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_INITIATED_REVIEW'),
      );
  static const customerInitiatedAccess =
      KmsFolderKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('CUSTOMER_INITIATED_ACCESS'),
      );
  static const googleInitiatedSystemOperation =
      KmsFolderKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_INITIATED_SYSTEM_OPERATION'),
      );
  static const reasonNotExpected =
      KmsFolderKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('REASON_NOT_EXPECTED'),
      );
  static const modifiedCustomerInitiatedAccess =
      KmsFolderKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('MODIFIED_CUSTOMER_INITIATED_ACCESS'),
      );
  static const modifiedGoogleInitiatedSystemOperation =
      KmsFolderKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('MODIFIED_GOOGLE_INITIATED_SYSTEM_OPERATION'),
      );
  static const googleResponseToProductionAlert =
      KmsFolderKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('GOOGLE_RESPONSE_TO_PRODUCTION_ALERT'),
      );
  static const customerAuthorizedWorkflowServicing =
      KmsFolderKajPolicyConfigAllowedAccessReasons._(
        TfArgLiteral('CUSTOMER_AUTHORIZED_WORKFLOW_SERVICING'),
      );

  static const List<KmsFolderKajPolicyConfigAllowedAccessReasons> values = [
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

/// Factory wrapper for `google_kms_folder_kaj_policy_config`.
///
/// `FolderKajPolicyConfigs` is a folder-level singleton resource used to
/// configure the default KAJ policy of newly created key.
///
/// ~> **Note:** FolderKajPolicyConfigs cannot be deleted from Google Cloud
/// Platform. Destroying a Terraform-managed FolderKajPolicyConfigs will remove
/// it from state but *will not delete the resource from Google Cloud Platform.*
final class GoogleKmsFolderKajPolicyConfig extends Resource {
  static const String tfType = 'google_kms_folder_kaj_policy_config';

  GoogleKmsFolderKajPolicyConfig(
    super.localName, {
    required TfArg<String> folder,
    KmsFolderKajPolicyConfigDefaultKeyAccessJustificationPolicy?
    defaultKeyAccessJustificationPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'folder': folder,
           if (defaultKeyAccessJustificationPolicy != null)
             'default_key_access_justification_policy': TfArg.literal(
               defaultKeyAccessJustificationPolicy.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsFolderKajPolicyConfigSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsFolderKajPolicyConfig>`.
  RefTo<GoogleKmsFolderKajPolicyConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');
}
