// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_organization_kaj_policy_config`.
const Set<String> _googleKmsOrganizationKajPolicyConfigSensitive = <String>{};

/// Factory wrapper for `google_kms_organization_kaj_policy_config`.
final class GoogleKmsOrganizationKajPolicyConfig extends Resource {
  static const String tfType = 'google_kms_organization_kaj_policy_config';

  GoogleKmsOrganizationKajPolicyConfig({
    required super.localName,
    required TfArg<String> organization,
    TfArg<Map<String, dynamic>>? defaultKeyAccessJustificationPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'organization': organization,
           if (defaultKeyAccessJustificationPolicy != null)
             'default_key_access_justification_policy':
                 defaultKeyAccessJustificationPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleKmsOrganizationKajPolicyConfigSensitive;
}
