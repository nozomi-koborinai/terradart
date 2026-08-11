// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_security_gateway_iam_policy`.
const Set<String> _googleBeyondcorpSecurityGatewayIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_beyondcorp_security_gateway_iam_policy`.
///
/// Authoritative IAM policy for a BeyondCorp Security Gateway.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleBeyondcorpSecurityGatewayIamMember] for single-principal grants.
final class GoogleBeyondcorpSecurityGatewayIamPolicy extends Resource {
  static const String tfType = 'google_beyondcorp_security_gateway_iam_policy';

  GoogleBeyondcorpSecurityGatewayIamPolicy({
    required super.localName,
    required TfArg<String> securityGatewayId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'security_gateway_id': securityGatewayId,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBeyondcorpSecurityGatewayIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
