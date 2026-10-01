// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../beyondcorp/google_beyondcorp_security_gateway_application.dart'
    show GoogleBeyondcorpSecurityGatewayApplication;

/// Sensitive field paths for `google_beyondcorp_security_gateway_application_iam_policy`.
const Set<String>
_googleBeyondcorpSecurityGatewayApplicationIamPolicySensitive = <String>{};

/// Factory wrapper for `google_beyondcorp_security_gateway_application_iam_policy`.
///
/// Authoritative IAM policy for a BeyondCorp Security Gateway application.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleBeyondcorpSecurityGatewayApplicationIamMember] for single-principal grants.
final class GoogleBeyondcorpSecurityGatewayApplicationIamPolicy
    extends Resource {
  static const String tfType =
      'google_beyondcorp_security_gateway_application_iam_policy';

  GoogleBeyondcorpSecurityGatewayApplicationIamPolicy({
    required super.localName,
    TfArg<String>? securityGatewayId,
    required RefTo<GoogleBeyondcorpSecurityGatewayApplication> application,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'security_gateway_id':
               ?(securityGatewayId ??
               application.alsoAs('security_gateway_id')),
           'application_id': application.encodeAs('application_id'),
           'policy_data': policyData,
           'project': ?(project ?? application.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBeyondcorpSecurityGatewayApplicationIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBeyondcorpSecurityGatewayApplicationIamPolicy>`.
  RefTo<GoogleBeyondcorpSecurityGatewayApplicationIamPolicy> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationIdRef =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `security_gateway_id` attribute.
  TfRef<String> get securityGatewayIdRef =>
      TfRef.attribute<String>(this, 'security_gateway_id');
}
